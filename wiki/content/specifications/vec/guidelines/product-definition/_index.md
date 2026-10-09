---
title: Product Definition of a Harness
linktitle: Product Definition
type: specs
authors: [becker]
tags: []
categories: []
date: 2022-09-01T00:00:00.000Z
lastmod: 2022-09-01T00:00:00.000Z
draft: false
review: true
toc: true
classes:
  - DocumentVersion
  - DocumentType
  - PartVersion
  - Specification
  - PartOrUsageRelatedSpecification
  - BaselineSpecification
history: [
  {date: 2022-09-09T00:00:00.000Z, description: New Implementation Guideline for Part Usages & Part Occurrences, issue: KBLFRM-1038},
  {date: 2025-12-18T00:00:00.000Z, description: Content of a HarnessDescription, ghIssue: "1036"},
  {date: 2026-10-09T00:00:00.000Z, description: Definition of a HarnessDescription; vehicle network, ghIssue: "1190"}
]
menu: {vec-guidelines: {identifier: product-definition, weight: 4000}}
weight: 4000
---

The definition of the product itself (the wiring harness) is one of the major use cases of the VEC. The figure below illustrates the basic building blocks in the data model and provides guidance on where to look for specific topics. It is not a complete map of the VEC.

{{< figure src="product-definition.svg" numbered="true" lightbox="true" title="Building Blocks of a Harness Product Definition" >}}

A wiring harness consists of recurring components that are produced and installed in large quantities (e.g., connectors, wires, terminals, and seals). These components have properties that are the same for all components of a specific type and are independent of their usage. In most cases, such types are identified within a company context as parts with unique part numbers. The description of these common properties is often referred to as "Part Master Data". The "Component Specification / Part Master Data" section (blue box on the right-hand side) represents this information. This area is explained in more detail in the section ["Component Specification"]({{< relref "component-description" >}}).

A wiring harness definition is then formed by specific uses of those component types, and a component can also occur multiple times. Each instance of a component may have additional properties specific to its usage (e.g., the signal and length of a wire, or the name of a connector). These properties are defined in the "Instances of Components" block, highlighted in green. In this area, the VEC distinguishes between abstract instances of components ({{< vec-class partusage >}}), where a specific component is not yet defined but some properties are known, and instances of concrete components ({{< vec-class partoccurrence >}}). See ["Instances of Components"]({{< relref "component-instances" >}}) for more details.

Based on these instances, you can specify bills of materials (BOMs), with or without variance, for composite parts, which can in turn be used hierarchically as instances for more complex parts (block on the right-hand side, highlighted in orange). See ["Composite Parts"]({{< relref "composite-parts" >}}) for more details.

In addition to the BOM view, it is important to establish relationships between components and other elements of the wiring harness definition (e.g., topology or electrology). This is accomplished through "Behaviour & Relationship Definitions" (highlighted in violet), which specify relationships such as routing, placement, contacting, and traceability between components and definitions at higher levels of abstraction.

## Harness Description Document Structure and Typical Content

{{< gh-review "1036">}}

{{< gh-review "1190" >}}

The figure below illustrates how these building blocks are typically organized within a VEC describing a single harness. It also shows the typical content of {{< vec-class Specification >}}s within a {{< vec-class DocumentVersion >}} with `DocumentType=HarnessDescription`.

{{< figure src="basic-structure.svg" numbered="true" lightbox="true" title="Document Structure and Typical Content of a Harness Product Definition" >}}

At the top level, a VEC that describes single a wiring harness usually consists of two major blocks:
1. The Part Master Data of all components (connectors, wires, terminals, seals, etc.) used within the wiring harness. For components that shall be used (instantiated) within the harness, this is a {{< vec-class PartVersion >}}, identifying the component, and a {{< vec-class DocumentVersion >}} containing the {{< vec-class PartOrUsageRelatedSpecification >}} defining this component.
2. A single {{< vec-class DocumentVersion >}} with `DocumentType=HarnessDescription`, containing the information specific to the wiring harness itself, and one or more {{< vec-class PartVersion >}}s identifying the parts (e.g., modules, individual harnesses) defined within this wiring harness description. This {{< vec-class DocumentVersion >}} serves as a container for all information related to the harness. Since wiring harness are defined with a 150%-model approach, this single document contains the definitions of _all_ variants and modules defining the harness. There is no separate {{< vec-class DocumentVersion >}} per module or variant; a {{< vec-class DocumentVersion >}} can reference any number of {{< vec-class PartVersion >}}s.

{{% callout info %}}
A VEC can contain more than one wiring harness definition (e.g. the harnesses of a vehicle network), with multiple {{< vec-class DocumentVersion >}}s with `DocumentType=HarnessDescription`. In this case, the Part Master Data block is shared among all harness definitions. The VEC does not limit the number of harness descriptions in a file; the scope of a file is governed by the [partitioning rules]({{< relref "../general/partitioning-sizing-packaging#partitioning-and-sizing" >}}) (see also [Vehicle Network]({{< relref "#vehicle-network" >}})).
{{% /callout %}}

The figure also shows the typical {{< vec-class Specification >}}s used to define the information in the different building blocks of a wiring harness definition.

{{% callout info %}}
The VEC is an open and modular model for the entire physical electrical system of a vehicle. This means the list of specifications is not a hard requirement nor exhaustive. You may add additional specifications or documents to the wiring harness definition if you want to provide a richer information model (e.g., system schematics, signals, usage nodes). You may also choose to leave out some of the specifications shown in the figure above if they are not relevant for your use case or process (e.g., 2D/3D is mutually exclusive in many processes).
{{% /callout %}}

This is also the case for harness descriptions that evolve during the development process. In early phases or specific disciplines of the development, you may only have a subset of the specifications shown above and add more information as the development progresses. For example, a harness description coming from a 3D design tool may only contain topology, 3D geometry, and some geometry‑relevant components and their placements. Electrical information, routing, and variant information may be added by another discipline at a later (or parallel) stage.

A detailed description of each block/specification in the figure would go beyond the scope of this implementation guideline. Please refer to the respective sections linked above or in the table of contents for more information on each building block.

### What is a Harness Description?

{{< gh-review "1190" >}}

Everything that, in the broadest sense, describes a wiring harness as a physical product is a
harness description (`DocumentType=HarnessDescription`), regardless of its informational
completeness. The dividing line is the physical product versus virtual artefacts like a network
architecture, a system schematic or master data. The scope of a harness description (e.g. a
single harness, several harnesses, a harness together with its adapters, left- and right-hand
drive as variants or as separate harnesses) is a process decision.

The other harness related document types (`WiringDescription`, `InstallationDescription`,
`ManufacturingDescription`, `GeometryModel`, …) are not more specific kinds of harness
descriptions. They represent different views on or levels of abstraction of the harness, and
they do not take precedence over a `HarnessDescription` (see {{< vec-class DocumentType >}}).

Several harness descriptions can describe the same harness {{< vec-class PartVersion >}}, if they
are partial contributions of different disciplines to the same target dataset (see [Change
Tracking – Contributions to a Target Dataset]({{< relref "../key-concepts/digital-change-tracking#contributions-to-a-target-dataset" >}})).

## Vehicle Network

{{< gh-review "1190" >}}

A vehicle network (_Bordnetz_) can be represented with increasing scope:

1. **A set of harness descriptions.** In the simplest form, a VEC contains several harness
   descriptions that share the part master data. Following the [packaging
   rules]({{< relref "../general/partitioning-sizing-packaging#partitioning-and-sizing" >}}),
   harnesses should only be placed together in one VEC if they are required together or are
   interconnected in the use case.
2. **Additional information about the vehicle network.** If information is added that concerns
   the vehicle network as a whole, e.g. the [coupling]({{< relref "coupling" >}}) of the
   harnesses, the valid combinations of harness versions ({{< vec-class BaselineSpecification >}})
   or a bill of material of the vehicle network, this information is contained in additional
   {{< vec-class DocumentVersion >}}s beside the unchanged harness descriptions.
3. **A part structure.** If the vehicle network has an identity of its own (e.g. a part number),
   it can be defined as a composite part (see [Composite Parts]({{< relref "composite-parts" >}})).

Merging all harness descriptions into a single {{< vec-class DocumentVersion >}} is possible,
but not recommended: a harness does not change when it is put into a vehicle, so a merged
document adds no information but loses traceability (see [General Structure – Combination and
Reuse of Documents]({{< relref "../key-concepts/general-structure#combination-and-reuse-of-documents" >}})).
A merged document is only useful if the harnesses change in the context of the vehicle network.
