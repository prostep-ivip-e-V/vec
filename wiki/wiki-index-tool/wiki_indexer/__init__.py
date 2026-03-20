"""Wiki indexer — chunk, embed, and search markdown documentation."""

from .chunker import Chunk, chunk_directory, chunk_markdown

__all__ = ["Chunk", "chunk_directory", "chunk_markdown", "WikiVectorStore"]


def __getattr__(name):
    if name == "WikiVectorStore":
        from .store import WikiVectorStore
        return WikiVectorStore
    raise AttributeError(f"module {__name__!r} has no attribute {name!r}")
