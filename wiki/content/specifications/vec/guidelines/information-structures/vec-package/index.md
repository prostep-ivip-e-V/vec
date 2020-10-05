---
title: "VEC Package"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: [becker]
tags: ["Package", "Archive", "External Files"]
categories: []
date: 2019-03-11
lastmod: 2019-12-02T12:43:57+01:00
draft: false

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    parent: information-structures
    weight: 100

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 20100
---

{{< figure src="indexing_of_vec_package.jpg" title="Indexing of VEC Packages" numbered="true" lightbox="true">}}

This example explains how more than one VEC file can be packaged together with external documents, for example symbols of the specified components. In this case the VEC shall be packed within an archive together with the external documents (according to the current published VEC recommendation) and an index file has to be provided.

The upper half of the diagram illustrates the file structure within the archive. In the root there is a 'index.vec' file that describes the content of the archive. The simplified content of this index file is illustrated in the lower half of the diagram.

For the example, the archive consists of following files:

  * index.vec: Describes the content of the archive.
  * A harness with the part number 4811 specified by a VEC-File (4811_a.vec) and a 2D SVG representation of the harness (4811_a.svg).
  * A component description of connector housing (part number: 4711) specified with a VEC-File (4711_a.vec) and component symbol (to be used in the 2D-drawing) defined with a SVG-Symbol (4711_a.svg).

In the VEC (especially in the index.vec) a {{< vec-class DocumentVersion >}} object is created for each external document (see lower half of the diagram). This {{< vec-class DocumentVersion >}} object references the {{< vec-class PartVersion >}} to which it is related. Beside all meta information about the document, the attribute dataFormat of the {{< vec-class DocumentVersion >}} specifies the format of the external document as a MIME-Type. The attribute fileName is a path relative to VEC-File pointing to the external document in the archive

## External Installation Instructions 

{{< figure src="external_installation_instructions.jpg" title="External Installation Instructions" numbered="true" lightbox="true">}}

The usage of file-based installation instructions is quite similar to the described approach for external documents. The {{< vec-class FileBasedInstruction >}} defines a pointer to the file packaged together with the VEC-file in the container and is referenced by the PartOccurrence.

The same effect could be achieved if a {{< vec-class DocumentBasedInstruction >}} is used, pointing to an external document (defined as described in the section before).

**Important**: The difference between the two approaches is that for the {{< vec-class DocumentBasedInstruction >}} a {{< vec-class DocumentVersion >}} is required. This means that the external file must be an official document with a document number, an appropriate versioning and so on. The {{< vec-class FileBasedInstruction >}} can point to any file needed. **It is not a valid approach to use the FileBasedInstruction, if the external file is a valid document.**

## External Mapping
### Simple External Mapping
{{< figure src="simple_external_mapping.jpg" title="Simple External Mapping" numbered="true" lightbox="true">}}

The Diagram shows a simple example for the usage of the external mapping mechanism. The elements highlighted in yellow represent the actual information described by this VEC instance. The elements highlighted in blue are defining the concrete mapping and the {{< vec-class DocumentVersion >}} highlighted in green represents the link to the mapped document (in this case a SVG-symbol).

The {{< vec-class ExternalMapping >}} element in this example defines that a representation of the referenced {{< vec-class ConnectorHousingSpecification >}} can be found in the SVG-symbol under the key “ID_27101123”.

The actual content data of the VEC-file (highlighted in yellow) and the mapping information is separated into two different {{< vec-class DocumentVersion >}} elements. This means even though both information are contained in the same VEC-file, from the perspective of a versioning mechanism they are clearly separated.


