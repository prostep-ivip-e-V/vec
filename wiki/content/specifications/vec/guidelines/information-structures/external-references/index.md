---
title: "External References"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: [steinbuechler, becker]
tags: ["Package", "Archive", "External Files"]
categories: []
date: 2022-08-25
lastmod: 2019-12-02T12:43:57+01:00
draft: false
review: false


history:
  - date: 2022-08-25
    description: "Added Guideline for External References"
    issue: "KBLFRM-1046"

classes:
  - DocumentVersion

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    parent: information-structures
    weight: 200

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 20100
---
For reasons of traceability (e.g. requirements) or because certain information is better represented in other standards than in the VEC format (e.g. 3D models for components), it is necessary to be able to reference external documents from VEC elements. This guideline describes how these external documents can be addressed and what concepts exist to connect those documents with VEC model elements (and when to use which).

## Referencing an external Document

As described in the Implementation Guideline "[General Structure]({{< relref "../../key-concepts/general-structure#usages-of-the-documentversion">}})" the {{< vec-class "DocumentVersion">}} serves several purposes, one of which is the referencing of external Documents. So, whenever a connection between a VEC element and an external document should be created, a {{< vec-class "DocumentVersion">}} is required to address the document. Such a {{< vec-class "DocumentVersion">}} should contain no payload data ({{< vec-class "Specification">}}). However, it contains the same meta-data as it would, when included as a full featured document (e.g. _DocumentType_).

{{% callout note %}}
A `index.vec` file consists practically only of such external references, as described in the recommendation Chapter "VEC-Packgage" and in the corresponding [Implementation Guideline]({{< relref "../vec-package" >}}).
{{% /callout %}}

There are different possibilities to resolve such a reference and retrieve the actual document:

1. **PDM reference with Domain Key**: Per definition, a document version is unambiguously identified with its _DocumentNumber_, _DocumentVersion_ and _CompanyName_. With context knowledge about the process, the document can be resolved in the corresponding PDM / Document Management System.
2. **FileName**: If the document is packaged together with VEC file ([VEC Package]({{< relref "../../information-structures/vec-package">}})) the filename attribute of {{< vec-class DocumentVersion >}} can point to a location within the VEC Package. If the document is not part of the VEC Package, the _FileName_-Attribute shall be omitted.
3. **Location**: If the document can be resolved outside the VEC package, the _Location_-Attribute can point to a location (via an _URN_ or _URL_) where the document can be resolved. For files that are stored following a specific procedure or systematics (e.g. in PDM System) the usage of _URNs_ should be the preferred way. This decouples the referencing from a concrete physical location, which might be different in different contexts or might be changed over the time.

## Connecting an external Document with VEC Model Elements

After defining an external reference as {{< vec-class DocumentVersion >}} there are multiple ways to create connections to VEC model elements. Some have specific semantic, some are more generic. The different possibilities are summarized below. If there are more than one possibility for a specific element, you have to choose the one with most specific semantics.

* **{{< vec-class DocumentVersion >}}._ReferencedPart_ &rarr; {{< vec-class PartVersion >}}**: The document describes the part in some way (e.g. a component drawing). See "{{< vec-diagram "key-concepts/parts-documents-and-resources" >}}".
* **{{< vec-class DocumentVersion >}}._RelatedDocument_**: The association is an informative link which DocumentVersion are related to each other (e.g. by derivation, A Harness-Drawing is related to a 3D-Model). See "{{< vec-diagram "key-concepts/parts-documents-and-resources" >}}".
* **{{< vec-class RequirementsConformanceStatement >}}._DocumentVersion_**: Some {{<vec-class PartVersion >}}s are satisfying (or not) the requirements defined in the external document. See "{{< vec-diagram "general-component-data/conformance-to-requirements">}}".
* **{{< vec-class ExternalMappingSpecification >}}._MappedDocument_**: The external document is a different view on the same content described by this specific VEC and a mapping / active linking between the same elements in both views should be created. For example a harness and its drawing in SVG. See "{{< vec-diagram "external-mapping/external-mapping">}}".
* **{{< vec-class DocumentBasedInstruction >}}._ReferencedDocument_**: An {{< vec-class OccurrenceOrUsage >}} has specific installation instructions that are defined in an external document (e.g. a manual or a working specification). See "{{< vec-diagram "instances-of-components/installation-instructions">}}".
* **{{< vec-class ExtendableElement >}}._ReferencedExternalDocuments_**: The referenced document contains additional information about the VEC element, that cannot be represented in the VEC in an appropriate way. See "{{< vec-diagram "key-concepts/parts-documents-and-resources">}}".
* **{{< vec-class DocumentRelatedAssignmentGroup >}}._RelatedDocumentVersion_**: A {{<vec-class DocumentRelatedAssignmentGroup >}} allows the creation of traceability links to elements in a {{<vec-class DocumentVersion >}} for a set of VEC objects. The semantic of the traceability link is defined by the {{<vec-class DocumentRelationType >}}, for example requirements that apply to these VEC elements. See "{{< vec-diagram "key-concepts/assignment-group">}}".