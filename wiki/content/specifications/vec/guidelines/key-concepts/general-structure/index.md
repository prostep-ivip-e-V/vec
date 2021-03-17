---
title: "General Structure of VEC Files & Documents"
linktitle: "General Structure"
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
tags: ["Review"]
categories: []
date: 2020-06-22
lastmod: 2019-12-02T12:43:57+01:00
draft: false
review: false
diagram: false

history:
  - date: 2020-06-22
    description: "Created Guideline for General Structure of VEC Files"
    issue: "KBLFRM-996"
  - date: 2020-11-27
    description: "Integrated Review Comments for the whole page"
    issue: "KBLFRM-996"

classes:
  - VecContent
  - DocumentVersion
  - PartVersion
  - DocumentType
  - PartOrUsageRelatedSpecification
  - Specification

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    parent: key-concepts
    weight: 750

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 20050
---
The VEC has two major key concepts: {{< vec-class PartVersion >}} and
{{< vec-class DocumentVersion >}}. Both are {{< vec-class ItemVersion >}}s and
both are used to reference / identify a piece of relevant information in a PDM
context unambigiously.

Whereas the {{< vec-class PartVersion >}} "just" represents a PDM anchor /
reference for a part or component plus some Meta-Information, the
{{< vec-class DocumentVersion >}} has different characters in the VEC (for more
details see section [Usages of the
DocumentVersion]({{< relref "#usages-of-the-documentversion">}})):

1. It can serve as a plain PDM anchor / reference to a document, with no further
   content / information in the VEC, like the {{< vec-class PartVersion >}} for
   parts (VEC equivalent to the KBL {{< kbl-class External_reference >}}).
1. However, more important is that the {{<vec-class DocumentVersion >}} is the
   container for any payload information contained in the VEC.

From a meta data perspective, the VEC does not differentiate between documents
that are contained in the VEC itself or in some external place somewhere else.
This guideline is intended to provide guidance on how these concepts should be
used and how an appropriate distribution of documents can look alike.

## Fundamentals

On the root level, a VEC contains mainly {{< vec-class PartVersion >}}s and
{{< vec-class DocumentVersion >}}s and some other unversioned (and constant)
information, e.g. the definition of the {{< vec-class Unit >}}s used within the
VEC. This is illustrated in figure [Basic
Structure]({{< relref "#figure-basic-structure">}}).

{{< figure src="basic-structure.svg" title="Basic Structure" numbered="true" lightbox="true">}}

One of the core concepts of the VEC is, that there is no restriction for the
type of information that can be contained in a {{< vec-class DocumentVersion >}}
nor the valid combinations of different types of information that can be
contained together. This enables the {{< vec-class DocumentVersion >}} to
reflect the actual circumstances of the domain or process and thus represents an
actual technical document with a corresponding release and versioning.

Reasonable combinations of information are driven by the use cases (with process
specific variations). The description of some common use case is part of this
guideline.

A document can contain any number of {{< vec-class Specification >}}s. The
{{< vec-class Specification >}}s represent the information modules of the VEC
and each defines a certain type or aspect of information. The
{{< vec-class Specification >}}s in a document can be thought of like drawers,
where each drawer contains a specific aspect of the vehicle network. A
distinction can be made here between:

- General specifications, that are for example required for the provision of
  basic information or for information reuse (e.g. an
  {{< vec-class InsulationSpecification >}}), and
- {{< vec-class PartOrUsageRelatedSpecification >}}s that are specifically used
  to describe / specify the properties of one or many
  {{< vec-class PartVersion >}}s.

{{% alert note %}} The distribution of information into different documents is
mainly driven by the requirements of the process. Nevertheless, certain best
practices and minimal content can be defined for certain types of documents.
{{% /alert %}}

### Parts and Documents

One of the most fundamental concepts of the VEC is the separation of a part /
component from its definition (specification). In this, the
{{<vec-class PartOrUsageRelatedSpecification>}} plays a major role.

In the VEC a part ({{<vec-class PartVersion>}}) does not contain any information
about the part, except its PDM Information (PartNumber, PartVersion, ...). All
the information about the technical properties of a part is expressed by a
subclass of {{<vec-class PartOrUsageRelatedSpecification>}}s (e.g. a
{{<vec-class WireSpecification >}}). The
{{<vec-class PartOrUsageRelatedSpecification>}} is contained in a
{{<vec-class DocumentVersion>}}. As mentioned above, the distribution of these
specifications into different documents is driven by the process / domain (see
object diagram [Parts and
Documents]({{< relref "#figure-parts-and-documents">}})).

{{< figure src="parts-and-documents.jpg" title="Parts and Documents" numbered="true" lightbox="true">}}

This approach enables the VEC to address for example the following scenarios
properly:

- The description of a part is changed, but the part itself is not changed
  (rereleased). This can happen for example if the actual technical properties
  of the part stay the same, but the description is extended or corrected. In
  this case, a new version of the document is created. However, the
  {{<vec-class PartVersion >}} stays the same.
- A document and the contained specifications are describing more than one part
  (e.g. a drawing for a certain class/family of terminals, seals & plugs). In
  this case it can happen that the document and the specifications are changed,
  but not all of the described parts have to be changed (rereleased). E

### Usages of the DocumentVersion

As mentioned in the introduction, the {{< vec-class DocumentVersion >}}s VEC can
be used in different ways:

- **Plain PDM reference** (a.k.a as external reference): In this case, the
  {{< vec-class DocumentVersion >}} in the VEC only contains meta-data and no
  payload-data (no {{< vec-class Specification >}}s). There different
  possibilities to resolve the original document that is referenced by the
  {{< vec-class DocumentVersion >}}:
  1. _**Domain Key**_: Per definition, a document version is unambiguously
     identified with its _DocumentNumber_, _DocumentVersion_ and _CompanyName_.
     With context knowledge about the process, the document can be resolved in
     the corresponding PDM / Document Management System.
  2. _**FileName**_: If the document is packaged together with VEC (VEC Package)
     the filename attribute of {{< vec-class DocumentVersion >}} can point to
     location within the package.
  3. _**Location**_: Can point to a location (via a URN or URL) where the
     document can be resolved.
- **Digital Representation of an external Document**: There are use cases where
  existing documents can represented in the means of the VEC. In other words the
  VEC {{< vec-class DocumentVersion >}} is a digital representation of the
  original document. For example, the information of a component data sheet (as
  PDF) might be also represented in VEC in a digitally evaluable way
  ({{< vec-class PartOrUsageRelatedSpecification >}}). In this case the same
  mechanisms like for the _plain PDM reference_ can be used, plus payload-data
  in {{< vec-class DocumentVersion >}}.
- **Native VEC Documents**: The VEC {{< vec-class DocumentVersion >}} itself is
  the source of information. This case is quite similar to the digital
  representation scenario. However, external links (if defined) will resolve to
  the VEC file itself.

### Combination & Reuse of Documents

{{< figure src="document-version-flow.svg" class="float-right" title="DocumentVersions in the Information Flow" numbered="true" lightbox="true" width="400">}}

Typically, information is flowing through the process. It is created somewhere,
passed on to someone else and is used there to create other information blocks.
To make these information flows traceable each peace of information must be
indentifiable and must have a change indicator. In the VEC this is done by the
{{< vec-class DocumentVersion >}}. In order to preserve this traceability along
the process, the assignment of information pieces to its original
{{< vec-class DocumentVersion >}} shall remain unchanged.

An illustrative example for this, is the distribution and use of component
master data (compare [figure on the
right]({{< relref "#figure-documentversions-in-the-information-flow" >}})). As
described in
"{{< vec-diagram "xml-representation-of-the-model/partitioning-and-sizing-of-vec-files" >}}"
component master data is best provided with one VEC per component, containing at
least one {{< vec-class documentversion >}} with the component's specifications
(_VEC A_, _B_, _C_).

If a wiring harness is created with these components, the component master data
(at least a portion of it) is required in the data set of the harness (_VEC
NEW_). However, the information is not integrated into the
{{< vec-class documentversion >}} of the harness (_DocumentVersion NEW_), as
this would lead to a loss of traceability, even if the structures of the VEC
would allow such an approach. Instead, copies of the
{{< vec-class documentversion >}}s containing the component's part master data
are placed beside the _DocumentVersion_ of the harness, within the same VEC.

{{% alert note %}} A _DocumentVersion_ in the VEC and the physical _VEC file_
shall not be equated. A _DocumentVersion_ is a logical entity and can be
contained in multiple VEC (files). Conversely, a _VEC file_ can contain multiple
_DocumentVersions_. {{% /alert %}}

## Types of Documents

The {{< vec-class documenttype >}} is an {{< vec-class openenumeration >}} that
defines some document types that are common in the harness development process.
The following sections describe typical content that can be expected in the
{{< vec-class DocumentVersion >}}s of a specific type.

However, as the {{< vec-class DocumentVersion >}} is primary an entity from the
domain of the creating process, the content and the given
{{< vec-class specification >}}s may vary.

### Part Master

{{< figure src="part-master-document.svg" class="float-right" title="Part Master Documents" numbered="true" lightbox="true" width="400">}}

A part master document describes the properties of a component or a group of
components (a {{< vec-class partversion >}} or a set of
{{< vec-class partversion >}}). It contains some general purpose specifications
that provide information for any component type. Those specifications are not
mandatory and only necessary if the corresponding information aspect is relevant
and can be provided. Examples are:

- {{< vec-class GeneralTechnicalPartSpecification>}} for common properties like
  weight or material.
- {{< vec-class PlaceableElementSpecification >}} for components that have a
  position in the topology.
- {{< vec-class LocalGeometrySpecification >}} for information about the
  component's geometry model, e.g. the bounding box, transformations, segment
  connection points.

Besides these general specifications a part master document contains a
{{< vec-class PartOrUsageRelatedSpecification >}} corresonding to the
{{< vec-class PrimaryPartType >}} (a
{{< vec-class ConnectorHousingSpecification >}} in the illustration). That
{{<vec-class Specification>}} provides the component type specific properties.
If the component has a secondary component characteristics, more than one
{{< vec-class PartOrUsageRelatedSpecification >}} can be contained.

Additionally, the document _could_ contain auxillary specifications that are
required for the complete component description (the
{{< vec-class CavitySpecification >}} and {{< vec-class SlotSpecification >}} in
the illustration). The emphasis here is on "could", as this is a common case,
but a process-specific interpretation. If for example the cavity system is
described and released together with the connector (in the same document), it
makes sense that the corresponding specification is included in the same
{{< vec-class DocumentVersion >}}. If the cavity system is defined and released
independently, i.e. in a separate document, and used by multiple connectors, it
would be appropriate to place it in its own {{< vec-class DocumentVersion >}}
and reuse the information in the document of the connector (see [Reuse of
Documents]({{<relref "#combination--reuse-of-documents">}})).

### Master Data Definition

In contrast to _PartMaster_ documents _MasterDataDefintions_ are not related to
a specific component or a set of components (equivalent to part, part number,
etc.). _MasterDataDefintions_ are predefined standard information pieces in the
process declared by some central organizational unit.

It is a common approach to manage certain information centrally and distribute
it in the development processes. The definition of this information is usually
independent of specific development projects and ensures the adherence to
certain conventions and guidelines across (all) development projects. The
component master data is a very specific aspect of this information as it always
refers to a component (with a part number). In addition, there is a wide range
of other information that is not directly related to a specific component but is
nevertheless managed centrally.

Such {{< vec-class documentversion >}}s with central definition, that are not
related to specific {{< vec-class partversion >}} are summarized under the
{{< vec-class documenttype >}} _MasterDataDefinition_. Examples for such
centrally distributed informations are:

- Usage Node Lists ({{< vec-class usagenodespecification >}}),
- Signal Catalogs ({{< vec-class signalspecification >}}), or
- Standardized Base Specifications (e.g. {{< vec-class cavityspecification >}},
  {{< vec-class insulationspecification >}})

#### Extension of Master Data Definitions

{{< figure src="master-data-extension.svg" class="float-right" title="Master Data Extension" numbered="true" lightbox="true" width="400">}}

A VEC that requires master data definitions of a specific type (e.g. signals,
usage nodes) can obtain these from different sources (e.g. seperate signal
catalogues for power & information). A special use case of this is the addition
/ extension of a master data definition with individual information in a
specific development artifact.

**Example:** New signals might be required in the system schematic of a new
series that are not (yet) included in the master data definition. These
additions could be contained in a _local_ signal catalog of system schematic,
while the central master data catalog is used for the other signals. When the
development process has progressed, these _local_ definitions might be included
in the master data definition.

{{% alert note %}} The VEC specification makes no assumptions about consistency
relationships between such multiple sources for the same type of information.
This is due to the fact that such restrictions are usually the result of process
specific definitions (see the following examples). {{% /alert %}}

The following bulletins illustrate some examples of different, process specific
consistency relationships. The examples are from the context of the above
mentioned "signal catalogues".

- _Different Sources for separate domains (e.g. power signals vs. information
  signals):_ In this case, there should be no overlaps between the defined
  entities.
- _Local / project specific definitions vs. global definitions:_ In this case it
  depends on the degree of freedom allow for project specific definition. Or,
  viewed from the other direction, on the binding nature of the global
  definitions. This determines whether only new information may be added or
  whether existing elements may be overwritten with other information.

In any case, the order of precedence has to be defined for the different
sources. However, this is mainly an issue for the business logic of an authoring
use case (which elements can be defined or selected by the user in a certain
context). In the data exchange use of the VEC, the elements from the different
sources are explicitly referenced. So at any time it is unambiguously defined
which elements have been used / selected, even though the rules why an element
took precedence over another are not contained in the VEC (compare figure
[Master Data Extension]({{< relref "#figure-master-data-extension">}}))
