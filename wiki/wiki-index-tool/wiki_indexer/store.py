"""
Vector store for wiki chunks using ChromaDB + sentence-transformers.

ChromaDB handles:
- Embedding via sentence-transformers (local, no API calls)
- Storage in a local directory
- Similarity search with metadata filtering

This module wraps ChromaDB with wiki-specific logic.
"""

import json
import time
from pathlib import Path

import chromadb
from chromadb.config import Settings

from .chunker import Chunk

# Default embedding model — good balance of quality and speed
# Alternatives:
#   "all-MiniLM-L6-v2"          — faster, smaller, 512 token limit
#   "BAAI/bge-large-en-v1.5"    — higher quality, slower
#   "nomic-ai/nomic-embed-text-v1.5" — good quality, 8192 token context
DEFAULT_MODEL = "nomic-ai/nomic-embed-text-v1.5"

COLLECTION_NAME = "wiki_chunks"


class WikiVectorStore:
    """Manages the vector index for wiki chunks."""

    def __init__(
        self,
        persist_dir: str | Path,
        model_name: str = DEFAULT_MODEL,
    ):
        self.persist_dir = Path(persist_dir)
        self.persist_dir.mkdir(parents=True, exist_ok=True)
        self.model_name = model_name

        # Initialize ChromaDB with local persistence
        self.client = chromadb.PersistentClient(
            path=str(self.persist_dir),
            settings=Settings(anonymized_telemetry=False),
        )

        # Use ChromaDB's built-in sentence-transformer embedding
        from chromadb.utils.embedding_functions import SentenceTransformerEmbeddingFunction

        self.embedding_fn = SentenceTransformerEmbeddingFunction(
            model_name=model_name,
            trust_remote_code=True,
        )

        self.collection = self.client.get_or_create_collection(
            name=COLLECTION_NAME,
            embedding_function=self.embedding_fn,
            metadata={"hnsw:space": "cosine"},
        )

    def index_chunks(self, chunks: list[Chunk], batch_size: int = 100) -> dict:
        """
        Index a list of chunks. Replaces any existing data.
        Returns stats about the indexing run.
        """
        if not chunks:
            return {"indexed": 0, "skipped": 0}

        # Clear existing collection and recreate
        self.client.delete_collection(COLLECTION_NAME)
        self.collection = self.client.get_or_create_collection(
            name=COLLECTION_NAME,
            embedding_function=self.embedding_fn,
            metadata={"hnsw:space": "cosine"},
        )

        start = time.time()
        total = len(chunks)

        # Process in batches (ChromaDB has limits on batch size)
        for i in range(0, total, batch_size):
            batch = chunks[i : i + batch_size]

            ids = [c.chunk_id for c in batch]
            documents = [c.text for c in batch]
            metadatas = [c.to_dict() for c in batch]

            self.collection.add(
                ids=ids,
                documents=documents,
                metadatas=metadatas,
            )

            done = min(i + batch_size, total)
            print(f"  Indexed {done}/{total} chunks...", flush=True)

        elapsed = time.time() - start
        return {
            "indexed": total,
            "elapsed_seconds": round(elapsed, 1),
            "model": self.model_name,
            "persist_dir": str(self.persist_dir),
        }

    def search(
        self,
        query: str,
        n_results: int = 10,
        source_file_filter: str | None = None,
    ) -> list[dict]:
        """
        Search for chunks similar to the query.

        Args:
            query: The search text
            n_results: How many results to return
            source_file_filter: If set, only return chunks from this file

        Returns:
            List of dicts with keys: text, source_file, heading_path,
            start_line, end_line, distance, chunk_id
        """
        where_filter = None
        if source_file_filter:
            where_filter = {"source_file": source_file_filter}

        results = self.collection.query(
            query_texts=[query],
            n_results=n_results,
            where=where_filter,
            include=["documents", "metadatas", "distances"],
        )

        output = []
        if not results["ids"][0]:
            return output

        for idx in range(len(results["ids"][0])):
            meta = results["metadatas"][0][idx]
            output.append(
                {
                    "chunk_id": results["ids"][0][idx],
                    "text": results["documents"][0][idx],
                    "distance": round(results["distances"][0][idx], 4),
                    "source_file": meta["source_file"],
                    "heading_path": meta["heading_path"],
                    "start_line": meta["start_line"],
                    "end_line": meta["end_line"],
                    "word_count": meta["word_count"],
                }
            )

        return output

    def search_by_file(self, file_path: str, n_results: int = 10) -> list[dict]:
        """
        Find chunks most similar to the *content* of a given source file.
        Useful for finding overlap when a file changes.

        Searches each chunk from the file and aggregates results,
        excluding self-matches.
        """
        # Get all chunks from this file
        file_chunks = self.collection.get(
            where={"source_file": file_path},
            include=["documents"],
        )

        if not file_chunks["ids"]:
            return []

        # Search for each chunk and collect results
        seen_ids = set(file_chunks["ids"])
        all_results: dict[str, dict] = {}

        for doc in file_chunks["documents"]:
            results = self.search(doc, n_results=n_results + len(seen_ids))
            for r in results:
                if r["chunk_id"] not in seen_ids and r["chunk_id"] not in all_results:
                    all_results[r["chunk_id"]] = r

        # Sort by distance and return top N
        sorted_results = sorted(all_results.values(), key=lambda x: x["distance"])
        return sorted_results[:n_results]

    def stats(self) -> dict:
        """Return stats about the current index."""
        count = self.collection.count()

        # Get unique source files
        if count > 0:
            all_meta = self.collection.get(include=["metadatas"])
            files = set(m["source_file"] for m in all_meta["metadatas"])
            return {
                "total_chunks": count,
                "total_files": len(files),
                "model": self.model_name,
                "persist_dir": str(self.persist_dir),
            }

        return {
            "total_chunks": 0,
            "total_files": 0,
            "model": self.model_name,
            "persist_dir": str(self.persist_dir),
        }
