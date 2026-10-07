---
title: "General Structure of VEC Files & Documents"
linktitle: "General Structure"
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
categories: []
date: 2020-06-22
lastmod: 2019-12-02T12:43:57+01:00
draft: false
review: true
diagram: false

history:
  - date: 2020-06-22
    description: "Created Guideline for General Structure of VEC Files"
    issue: "KBLFRM-996"
  - date: 2020-11-27
    description: "Integrated Review Comments for the whole page"
    issue: "KBLFRM-996"
  - date: 2026-01-28
    description: "Added section on 'Content from mixed Sources'"
    ghIssue: "956"    
  - date: 2026-10-07
    description: "DocumentVersions as building blocks; aggregation vs. semantic merge; harness description"
    ghIssue: "1184"

classes:
  - VecContent
  - DocumentVersion
  - PartVersion
  - DocumentType
  - PartOrUsageRelatedSpecification
  - Specification
  - ComponentNode

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

{{< gh-review "1184" >}}

{{% callout note %}} The distribution of information into different documents is
mainly driven by the requirements of the process. For certain types of documents,
typical content can be described (see [Types of Documents]({{< relref "#types-of-documents" >}})).
Following the principle of optionality, such descriptions are never a hard
requirement, since a VEC can only be a fragment of the complete picture (compare
[Content Requirements]({{< relref "../../product-definition/component-description#content-requirements" >}})).
Process partners are free to agree on stricter requirements in their individual
interface contracts. {{% /callout %}}

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
  payload-data (no {{< vec-class Specification >}}s). This is described in detail [here]({{< relref "../../key-concepts/external-references">}}).
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

However, regardless of the use of the {{< vec-class DocumentVersion >}}, it always represents the meta-data of the entity in the process, which does not change depending on its VEC representation. Meaning, if for example a system schematic is referenced as external document in one place (VEC file) and is used as a native document / digital representation in another place, it is still a system schematic (_DocumentType_) with the same _DocumentNumber_ & _Version_.

### DocumentVersions as Building Blocks of the Information Exchange

{{< gh-review "1184" >}}

A VEC (e.g. a file or the response of a REST interface) always represents a snapshot of
information in a specific, fixed state. The VEC is a means of data exchange, not of data
management (see [Expected Behaviour of VEC Interfaces]({{< relref "../../general/interface-behaviour#background" >}})).

The cut of information into {{< vec-class DocumentVersion >}}s is process specific. It
reflects the responsibilities and approvals in the process: the content of a
{{< vec-class DocumentVersion >}} is the scope of information that the process tracks
and annotates with meta data. {{< vec-class DocumentVersion >}}s are therefore the
building blocks of an interface architecture — units of information exchanged between
process partners, with a scope agreed within the process. There are typical scopes for
typical processes (e.g. what a system schematic or a harness description contains), but
significant deviations are valid as well.

In contrast to {{< vec-class Specification >}}s, {{< vec-class DocumentVersion >}}s do
not represent structural boundaries of the model. Even if two
{{< vec-class DocumentVersion >}}s are contained in the same VEC file, they are clearly
separated from the perspective of versioning (see [External References]({{< relref "../external-references" >}})),
but not from the perspective of the model. In particular, they are no boundary for
references:

- **Within one VEC file**, references between elements in different
  {{< vec-class DocumentVersion >}}s (e.g. from an occurrence in a harness description to
  a {{< vec-class PartVersion >}} and its part master data, or from a wire to a
  connection of a system schematic) are ordinary XML `IDREF`s.
- **Across VEC files**, an `IDREF` cannot span the file boundary. The relationship is
  established via the PDM identity of the referenced items
  ({{< vec-class PartVersion >}} and {{< vec-class DocumentVersion >}} numbers and
  versions), as assumed by the [partitioning rules]({{< relref "../../general/partitioning-sizing-packaging#partitioning-and-sizing" >}})
  (rule 2). A VEC whose references can be resolved requires that the creating system
  includes the referenced information with the appropriate scope.

### Combination and Reuse of Documents

{{< gh-review "1184" >}}

{{< figure src="document-version-flow.svg" class="float-right" title="DocumentVersions in the Information Flow" numbered="true" lightbox="true" width="400">}}

Typically, information is flowing through the process. It is created somewhere,
passed on to someone else and is used there to create other information blocks.
To make these information flows traceable each piece of information must be
identifiable and must have a change indicator. In the VEC this is done by the
{{< vec-class DocumentVersion >}}. In order to preserve this traceability along
the process, the assignment of information pieces to its original
{{< vec-class DocumentVersion >}} shall remain unchanged.

An illustrative example for this, is the distribution and use of component
master data (compare [figure on the
right]({{< relref "#figure-documentversions-in-the-information-flow" >}})). As
described in [XML / XSD Representation]({{<relref "../../general/xml-xsd">}})
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

The same applies whenever content from several VEC files is combined into one VEC,
e.g. to embed information for traceability or to bundle the harnesses of a vehicle
network: the assignment of the information to its original
{{< vec-class DocumentVersion >}}s shall be preserved (see also [Content from mixed
Sources]({{< relref "#content-from-mixed-sources" >}})).

This rule applies to the _aggregation_ of information, where the combined information
itself remains unchanged. It does not apply to a _semantic merge_, where the
combination creates new content. An example are partial system schematics: when
partial systems are merged into an overall system, matching open links are resolved and
the {{< vec-class ComponentNode >}}s of type `OpenLink` are removed (see [System Schematic
– Partial Systems]({{< relref "../../elog-layers/system-schematic#partial-systems" >}})).
The result is new information, contained in a new {{< vec-class DocumentVersion >}}.

The combination of wiring harnesses into a vehicle network is normally **not** a
semantic merge: a harness does not change or behave differently when it is put into a
vehicle. Therefore, the harness descriptions of a vehicle network remain separate
{{< vec-class DocumentVersion >}}s, and information concerning the vehicle network as a
whole is added in additional {{< vec-class DocumentVersion >}}s.
Merging the harness descriptions into a single {{< vec-class DocumentVersion >}} is
possible, but not recommended.

{{% callout note %}} A _DocumentVersion_ in the VEC and the physical _VEC file_
shall not be equated. A _DocumentVersion_ is a logical entity and can be
contained in multiple VEC (files). Conversely, a _VEC file_ can contain multiple
_DocumentVersions_. 

Even though the logical content (the represented object graph) of a self contained 
_DocumentVersion_ might be copied from one VEC file to another without problem, 
the actual XML snippet might require adaption. At least the XML `ID`-attributes must 
be checked for uniqueness and, in case of a conflict, changed. Referencing `IDREF(S)` 
also have to be changed accordingly.
{{% /callout %}}

### Content from mixed Sources

{{< gh-review "956" >}}

It is a common scenario that a VEC model contains information from different sources. In some cases it is pretty obvious that the information comes from different sources, e.g. part master data from a component database, a system schematic from an ECAD tool, and a geometry model from a 3D CAD system. 

However, there are also use cases where the information from different sources is not so clearly distinguishable by its type. It is even possible, that the same type of information is obtained from different sources. Some examples for such scenarios are:

- Occurrences of components are defined in different places / process steps, e.g. in the electrologic, DMU or in the actual harness design.  
- Additional information like placements and routing might come from different tools or process steps as well.

There are two apporoaches to handle such scenarios in the VEC, while keeping the traceability of the information to its source:
- **Separate DocumentVersions per Source**: In this approach, the information from each source is contained in a separate {{< vec-class DocumentVersion >}}. This is the preferred approach, as it clearly separates the information from different sources and preserves traceability in the change management. Each {{< vec-class DocumentVersion >}} can be clearly associated with its source, e.g. by using appropriate meta-data like document type, document number, version, etc.
- **Single DocumentVersion with individual Specifications**: This is approach is used, if all information must be combined into a single {{< vec-class DocumentVersion >}}. The information from different sources is kept separated by using individual {{< vec-class Specification >}}s for each source. However, this approach lacks the clear representation of source metadata on the {{< vec-class DocumentVersion >}} level (e.g. document number & version), which might impact traceability for example in the change management. 



## Types of Documents

The {{< vec-class documenttype >}} is an {{< vec-class openenumeration >}} that
defines some document types that are common in the harness development process.
The following sections describe typical content that can be expected in the
{{< vec-class DocumentVersion >}}s of a specific type, if the content is represented in the VEC.

However, as the {{< vec-class DocumentVersion >}} is primary an entity from the
domain of the creating process, the content and the given
{{< vec-class specification >}}s may vary.

### Part Master

A part master document describes the properties of a component or a group of
components (a {{< vec-class partversion >}} or a set of
{{< vec-class partversion >}}). It contains some general purpose specifications
that provide information for any component type. A detailed description can be
found in the "[Component Description]({{< relref "../../product-definition/component-description">}})"
Guideline.

### Harness Description

{{< gh-review "1184" >}}

A harness description describes a wiring harness as a physical product, regardless
of its informational completeness. Its typical content and the scope of a harness
description are described in [Product Definition of a Harness]({{< relref "../../product-definition#harness-description-document-structure-and-typical-content" >}}).

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

{{% callout note %}} The VEC specification makes no assumptions about consistency
relationships between such multiple sources for the same type of information.
This is due to the fact that such restrictions are usually the result of process
specific definitions (see the following examples). {{% /callout %}}

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
