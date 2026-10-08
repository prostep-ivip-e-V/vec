---
title: "Expected Behaviour of VEC Interfaces"
#linktitle: "General Structure"
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
categories: []
date: 2022-07-29
lastmod: 2022-07-29
draft: false
review: true
diagram: false

history:
  - date: 2022-07-29
    description: "Added Guideline for Import- / Export-Behaviour"
    issue: "KBLFRM-946"
  - date: 2026-10-08
    description: "Navigating information in a VEC"
    ghIssue: "1186"

classes:
  - VecContent
  - DocumentVersion
  - PartVersion
  - DocumentType
  - Specification
  - PartOrUsageRelatedSpecification
  - PartOccurrence
  - PartUsage
  - WireElementReference
  - Connection
  - PartStructureSpecification
  - PartWithSubComponentsRole

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    parent: general
    weight: 850

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 20050
---

A wide range of different systems, supporting different use cases, are used in the process of wiring harness development. All of them might have a _VEC-Interface_ for input & output, so sooner or later the question arises "What are the expectations for the behavior of those interfaces?". This section will discuss this question.

## Background

In a document based data exchange scenario (e.g. working with a word processor) the intuitive expectation is, that a document / file is "opened", changes are performed and the document is "saved" again, with the document now containing the original content plus the modifications. 

However, this simple and intuitive approach is not feasible in a model based data exchange scenario like the one for the VEC. The VEC is not intended to be a file-based database that contains all information about a vehicle network, which grows continuously over the time (like a Word document or an ODT file of a book). The basic idea of the VEC is, to provide a consistent language (model) for data exchange in the process of wiring harness development and to allow the exchange of use case specific slices of information within the process between systems and organizations. 

This fundamental concept means that there is no such thing as "the one VEC interface". The important question is, which use cases (or slices) of the VEC data model are supported or required for a specific interface.

Let's assume that in our system landscape one component is responsible for the synthesis of electrology and geometry, and the derivation of a wiring harness from it. Such a system would potentially have 4 interfaces requiring different sections of the VEC model:
 
 - Topology (IN)
 - System or Wiring Schematic (IN)
 - Part Master / Component Data (IN)
 - Harness Definition (OUT)

In addition, the scope and validity of the different information slices may vary.  For example, component data could be updated daily, with only the changed components at a time, but with a global validity, while a wiring harness definition is only valid for a specific vehicle context.

Even when considering only this example, it is already obvious that it does not make any sense to formulate requirements on cross-relationships between imported and generated VEC data, like "a system has to be able write all VEC data it has imported in an unchanged matter". 

### Content of a VEC

A VEC can contain any scope, amount and combination of information that is valid, with respect to the VEC Model and the Implementation Guidelines. There shall be no requirement to create VECs with restricted content specifically for importing / receiving systems. 

A receiving system shall be able to accept any valid VEC. If the VEC contains more than the required information of the system, the system is free to ignore the pieces of information irrelevant for its purpose. It does not have to store the ignored pieces for a later reexport. However, it shall not refuse the import of a VEC because of "too much" information.

On the other hand, it is up to the system to verify that a VEC contains enough information for the use case of the system. If that is not the case, the system can reject the import because of "too little" information.

### Traceability Scenarios

Even though it is not possible to define general relationship requirements between imported and exported data, there are use cases in which a traceability between imported and exported data is required. In such cases, slices of imported data might be embedded into the exported data. This scenario is described in section "[Combination and Reuse of Documents]({{< relref "../../key-concepts/general-structure/index.md#combination-and-reuse-of-documents">}})"

## Navigating Information in a VEC

{{< gh-review "1186" >}}

A receiving system shall locate the information relevant for its use case primarily via the
relationships of the model, and not by searching for specific
{{< vec-class DocumentType >}}s or by expecting a specific structure of
{{< vec-class DocumentVersion >}}s. The reasons are:

- The `documentType` of a {{< vec-class DocumentVersion >}} is optional. A system relying on it
  fails for valid VECs.
- {{< vec-class DocumentType >}} is an open enumeration. The set of possible values cannot be
  enumerated.
- The cut of information into {{< vec-class DocumentVersion >}}s is process specific (see
  [General Structure]({{< relref "../../key-concepts/general-structure#documentversions-as-building-blocks-of-the-information-exchange" >}})).

The following table lists the navigation paths for common questions:

| Question | Navigation |
|---|---|
| Part master data of a {{< vec-class PartVersion >}} | All {{< vec-class PartOrUsageRelatedSpecification >}}s that reference the {{< vec-class PartVersion >}} as `describedPart`. This is an inverse navigation; the {{< vec-class PartVersion >}} itself does not reference its specifications. |
| Information about an instance | For a {{< vec-class PartOccurrence >}}: via `part` to the {{< vec-class PartVersion >}} and then as above. For a {{< vec-class PartUsage >}}: directly via `partOrUsageRelatedSpecification`. Context specific information via the `role`s of the instance (see [Instances of Components]({{< relref "../../product-definition/component-instances#relationship-to-part-master-data" >}})). |
| System schematic connection of a wire | `WireElementReference.connection` leads to the {{< vec-class Connection >}}; `WireElementReference.referencedWireElement` to the {{< vec-class WireElement >}} of the part master data. |
| Composition of a composite part | From an instance of the composite part via `PartWithSubComponentsRole.partStructureSpecification` to the {{< vec-class PartStructureSpecification >}} and its `inBillOfMaterial`. |
| Composite part an occurrence belongs to | Inverse of `PartStructureSpecification.inBillOfMaterial` (in-place modules) or inverse of `PartWithSubComponentsRole.subComponent` (instantiated library parts), see [Composite Parts – Composition and Membership]({{< relref "../../product-definition/composite-parts#composition-and-membership" >}}). |
| Process meta data of an element | Upwards in the containment hierarchy to the containing {{< vec-class DocumentVersion >}}. |

The containing {{< vec-class DocumentVersion >}} and its meta data (including the
{{< vec-class DocumentType >}}, if present) can then be used to decide whether a piece of
information is relevant for the use case, e.g. to distinguish information from different
sources (see [Content from mixed Sources]({{< relref "../../key-concepts/general-structure#content-from-mixed-sources" >}})).

A {{< vec-class PartVersion >}} can be described by several specifications of the same type,
contained in different {{< vec-class DocumentVersion >}}s, e.g. if each of them contains the view
of a different process partner on the same part. In this case, a reading system has to evaluate
the containing {{< vec-class DocumentVersion >}}s and decide which specification is relevant for
its use case.

## Summary of the Requirements

The aforementioned results in the following general requirements for systems with VEC interface:

- A system is **not** required to interpret, implement or store the full extent of the VEC model, when only portion of it is required for its specific use case.
- A system must be able to extract the information relevant for its use case from VEC files that contain more information than the system itself requires or is able to process.
- A system is only required to export the information relevant to its use case. In other word, in a roundtrip scenario with a "more powerful" system it may return less than it has received.
- On the other side, a system that is able to export a very extensive VEC is not required to strip the information down for a "less powerful" system.
- A system can reject VEC files that do not contain enough or only irrelevant information for its use case. 
