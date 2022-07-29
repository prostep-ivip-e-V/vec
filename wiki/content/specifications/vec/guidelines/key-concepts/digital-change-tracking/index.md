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
review: true

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
{{< review "KBLFRM-1007" >}}

As described in detail in the Implementation Guideline "[General Structure / Usages of the DocumentVersion]({{< relref "../general-structure#usages-of-the-documentversion">}})" one use case of the {{< vec-class "DocumentVersion" >}} is to serve as a payload data container within the VEC, either for the digital representation of an external document or for native digital data. This Implementation Guide is about the possibilities to track changes and modifications of this payload data within the VEC. Be sure to read {{< vec-diagram "key-concepts/parts-and-documents" >}} before, as it contains important information about this topic.

{{< figure src="partial-vec-export.svg" class="float-right" title="Relationship Source Document to VEC" numbered="true" lightbox="true" width="400">}}

Aligned with established PDM practice, the data in the VEC is organized in {{< vec-class DocumentVersion >}}s. A fundamental principle in the VEC is, that a specific {{< vec-class DocumentVersion >}} is unambiguously identified by _CompanyName_, _DocumentNumber_ and _Version_. However, this identification and versioning is primarily of a process-oriented rather than a technical nature. From a data oriented technical point of view, you can have different digital representations of the same source document in the VEC (e.g. if the same document specifies multiple parts and you want to create one VEC file per part, or if you need different levels of detail in the data for different scenarios). This is perfectly valid, as long as the overlapping content areas do not contradict each other (see Figure 1 on the right side). In such scenarios the identifying attributes, in particular also the _Version_ will be same since the source document has not changed, although the digital representation is different. 

Figure 2 below illustrates this in more a more detailed example. Let us assume, there is a technical drawing or data sheet of a component. This is the original source of information, with all PDM information like formal approvals etc. This document therefore defines the _CompanyName_, _DocumentNumber_ and _Version_. The content of the document is then transferred into an IT-System (e.g. a component database) either by automatic import or by manual input (marked with (1)). A digital representation is created. 

From this system the data can exported / provided in two flavours, one for internal use with more information and one for external use with less information (marked with (2) and (3)). Another two digital representations are created. In the next step, the provided component data might be used in another system to create a harness definition and a portion of the component data is embedded into the harness definition (marked with (4)). Yet another digital representation is created. 

There are any number of conceivable ways in which a digital representation of information can change without the original document changing:

- A mistake during in the manual input in step (1) or a bug in the importer.
- A feature update of the system storing the data, allowing more information to be stored.
- Changes to the export component
- ...

In order to allow the content of {{< vec-class DocumentVersion >}} in the VEC to be marked as changed, without having the source document changed, the _DigitalRepresentationIndex_ was introduced. If the _DigitalRepresentationIndex_ has changed, the content of the {{< vec-class DocumentVersion >}} must be checked for changes, otherwise the content can be assumed unchanged (see {{< vec-diagram "key-concepts/parts-and-documents" >}} for a definition of "unchanged").  

{{< figure src="basic-document-vec-relation.svg" class="float" title="Different Representations  of the same Information" numbered="true" lightbox="true" width="800">}}


## Details of the Application of the DigitalRepresentationIndex

### When to Use

The _DigitalRepresentationIndex_ is an optional feature of the VEC that softens the requirements for the change semantic of _CompanyName_, _DocumentNumber_ and _Version_ in cases where the content of a {{< vec-class "DocumentVersion" >}} changes, without being able to at least adjust the _Version_-attribute.

### When to Modify

If the _DigitalRepresentationIndex_ has not changed between two VEC files, this can be taken by a reading system as an assurance that the payload content is unchanged. The _DigitalRepresentationIndex_ shall be different, whenever the payload content of a {{< vec-class "DocumentVersion" >}} is different. If a clear statement is not possible, a change is to be assumed in case of doubt. A change of the _DigitalRepresentationIndex_ is necessary for example in the following cases:

{{< figure src="broken-export.svg" class="float-right" title="Update of a VEC interface" numbered="true" lightbox="true" width="400">}}

- A different digital representation is created due to a changed tool behavior or a changed export interface (see figure on the right ), e.g. more information, bug fixes, new features.  
- The content in the source system has changed, e.g. improved data management in the process, correction of typos. 
- Different views with different level of details of the same data set, e.g. export for internal and external use. 

### How to Create

The VEC does not define any specifications for the construction of the _DigitalRepresentationIndex_ (e.g. syntax, order). The only requirement is, that two values can be checked of equality. If the values are equal, the payload data can be assumed unchanged, if the values are different, the payload data might be different as well.  

It is up to the discretion and capabilities of the generating system to define a suitable and possible algorithm to generate the index. However, it should always be taken into account that an unnecessary change indication creates needless overhead on the side of the reading systems.

Possible approaches include:

- An internal change tracking index of the creating system (e.g. revision number)
- A checksum created over the relevant payload data
- A timestamp, either of the last change in the creating system or the time of the VEC creation. 
- A UUID identifying a specific digital representation. Each time a new digital representation is created a new UUID is generated. 
