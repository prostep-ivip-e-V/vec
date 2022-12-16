---
title: "Change Tracking of Document Versions"
linktitle: Change Tracking
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: ["steinbuechler", "becker"]
tags: []
categories: []
date: 2022-07-29
lastmod: 2021-11-05T10:30:04+01:00
draft: false
review: false

history:
  - date: 2022-07-29
    description: "Implementation Guideline for Modification-Tracking & Versioning"
    issue: "KBLFRM-1007"

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    parent: key-concepts
    weight: 800

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1
---
As described in detail in the Implementation Guideline "[General Structure / Usages of the DocumentVersion]({{< relref "../general-structure#usages-of-the-documentversion">}})" one use case of the {{< vec-class "DocumentVersion" >}} is to serve as a payload data container within the VEC, either for the digital representation of an external document or for native digital data. This Implementation Guide is about the possibilities to track changes and modifications of this payload data within the VEC. Be sure to read {{< vec-diagram "key-concepts/parts-and-documents" >}} before, as it also contains important information about this topic.

In the VEC, data is organized in {{< vec-class DocumentVersion >}}s and those are unambiguously identified by _CompanyName_, _DocumentNumber_ and _Version_. Those attributes are identifying an entity relevant for the process as the single source of truth for this information, for example a drawing, a data sheet or even an entity in a database. The handling of those attributes and the corresponding change procedures are driven by the process and not by technical requirements. In many cases the VEC only contains a digitally readable representation (an export) of that information. 

Consequently, the identifying attributes and in particular the _Version_ are only changed, when the relevant process entity has changed, according to rules applied by the process (e.g. a new version of a drawing has been created and approved). However, there are numerous scenarios (described in detail [below]({{< relref "#when-to-modify">}})) where the payload content in a VEC {{< vec-class DocumentVersion >}} can change, without a change of the underlying process entity. To allow the content of a {{< vec-class DocumentVersion >}} to be marked as changed in such scenarios, the _DigitalRepresentationIndex_ was introduced. If the _DigitalRepresentationIndex_ has changed, the content of the {{< vec-class DocumentVersion >}} must be checked for changes, otherwise the content can be assumed unchanged (see {{< vec-diagram "key-concepts/parts-and-documents" >}} for a definition of "unchanged").  

## Application of the _DigitalRepresentationIndex_

### When to Use

The _DigitalRepresentationIndex_ is an optional feature of the VEC that softens the requirements for the change semantic of _CompanyName_, _DocumentNumber_ and _Version_ in cases where the content of a {{< vec-class "DocumentVersion" >}} in the VEC changes, without being able to at least adjust / increment the _Version_-attribute.

### When to Modify

A reading system can assume the payload content of a {{< vec-class "DocumentVersion" >}} unchanged, when the _DigitalRepresentationIndex_ has not changed between two VEC files. The _DigitalRepresentationIndex_ shall be different, whenever the payload content of a {{< vec-class "DocumentVersion" >}} with the same _CompanyName_, _DocumentNumber_ and _Version_ is different. If a clear statement is not possible, a change is to be assumed in case of doubt. 
As mentioned before, there are multiple scenarios where such a situation might occur. The illustration below is intended to explain some examples of such scenarios.

{{< figure src="basic-document-vec-relation.svg"  title="Different Representations of the same Information" numbered="true" lightbox="true">}}

In all scenarios, the content of the {{< vec-class "DocumentVersion" >}} in a VEC files might be different, resulting in a modified digital representation index, for the same (unchanged) source document. For the example, assume the document entity in the process is an approved component drawing as PDF (highlighted in blue on the left hand side of the figure). This is the document identified by _CompanyName_, _DocumentNumber_ and _Version_. The following situations might occur that result in different digital representations without changed source document: 

- In a first step (marked with (1)), the information from the drawing is transferred manually into an IT-System (e.g. a component database). A first digital representation is created. However, this representation might be changed at a later point for multiple reasons:
   - A mistake / typo occurred during the manual data transfer and is corrected. 
   - Data management guidelines or the underlying IT-System changed and more information from the original document has to be transferred.
- This data is exported into a Component Data VEC (marked with (2)). If this is done multiple times, different digital representation might be created due to:
   - Added features of the exporter resulting in more information in the export. 
   - A bug fix for the exporter component or the exporting system.
   - An update of the underlying VEC version.
- The component data is used to create other artifacts in the development process (marked with (4)). For this, at least parts of the original information might be embedded in the new artifact for traceability reasons. Another digital representation is created. 
- A system might provide different export flavours with different content levels depending on the recipient. For example a VEC for external partners might contain less information as a VEC for internal use.
- The source document might contain various information. E.g. a single component drawing can define a complete family of components (e.g. a family of terminals). When creating a VEC file per component (recommended approach for a component database), the resulting VEC file should only contain the information relevant to exported component and not all components defined in the drawing. Therefore, you might have different {{< vec-class "DocumentVersion" >}}s containing different information slices of the same source document (illustrated in the figure below).

{{< figure src="partial-vec-export.svg" title="VEC files with partial content" numbered="true" lightbox="true" width="400">}}

{{% callout note %}}
An indication of change with _DigitalRepresentationIndex_ is mandatory only if the **payload data content** of a {{< vec-class "DocumentVersion" >}} has changed (e.g. changed, added or removed attributes or contained objects). It **does not require** that the resulting XML serialization is binary identical. 

Changes related to the technical aspects of XML representation do not require a _DigitalRepresentationIndex_. This includes, but is not limited to changes of XML `ID` & `IDREF` elements (assuming the referenced objects are the same), ordering of XML elements and XML Meta elements like XML Comments ("`<!-- ... -->`") or XML Processing Instruction (`<?target instructions?>`)
{{% /callout %}}

### How to Create

The VEC does not define any specifications for the construction of the _DigitalRepresentationIndex_ (e.g. syntax, order). The only requirement is, that two values can be checked of equality. If the values are equal, the payload data can be assumed unchanged, if the values are different, the payload data might be different as well.  

It is up to the discretion and capabilities of the generating system to define a suitable and possible algorithm to generate the index. However, it should always be taken into account that an unnecessary change indication creates needless overhead on the side of the reading systems.

Possible approaches include:

- An internal change tracking index of the creating system (e.g. revision number)
- A checksum created over the relevant payload data
- A timestamp, either of the last change in the creating system or the time of the VEC creation. 
- A UUID identifying a specific digital representation. Each time a new digital representation is created a new UUID is generated. 
