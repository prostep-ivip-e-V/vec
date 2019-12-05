---
title: "Composite Parts / Harnesses"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: [becker]
tags: ["Harness", "Module", "Assembly"]
categories: []
date: 2019-03-11
lastmod: 2019-12-02T12:48:05+01:00
draft: false

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    #parent: Example Topic
    weight: 17000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 17000
---
This section is about the definition of Harnesses, Modules and Assemblies.

## Module
{{< figure src="module.jpg" title="Modules" numbered="true" lightbox="true">}}

The figure shows how a module can be defined in a 150% environment. A module basically consists of a number of {{< vec-class PartOccurrence >}}s. In a 150%-Harness the PartOccurrences can be shared between modules. Therefore a single container is needed, which defines a {{< vec-class PartOccurrence >}}s that belong to the Harness, independent from the Module. This is done by a {{< vec-class CompositionSpecification >}}. The PDM information of a module is stored in the {{< vec-class PartVersion >}}. The {{< vec-class PartOccurrence >}}s belonging to the Module (the “Bill Of Material”) are defined by a {{< vec-class PartStructureSpecification >}}. 

## Harness
{{< figure src="harness.jpg" title="Harnesses" numbered="true" lightbox="true">}}

In the philosophy of the VEC a harness is quite the same as a module. A module is formed by a set of occurrences of components. A harness is formed by a set of occurrences of modules. This approach has the advantage that the same module can be used in different harnesses with for example different {{< vec-class VariantConfiguration >}}s. The figure shows a simple configuration of a 150%-harness. The harness has a {{< vec-class PartStructureSpecification >}}, which defines the BOM of the Harness. This BOM contains the two {{< vec-class PartOccurrence >}}s of the modules from the previous example. Each {{< vec-class PartOccurrence >}} can carry a {{< vec-class VariantConfiguration >}}. Since the two modules share a component, they are mutually exclusive (see the different VariantConfiguations).

## Assemblies
{{< figure src="assemblies.jpg" title="Assemblies" numbered="true" lightbox="true">}}

The figure above displays the usage of assemblies in the VEC. Assemblies are more complex components, which are built out of a number of other components (e.g. a prebuild wire with connectors attached to it). There are multiple reasons, why the inner structure of an assembly is relevant, but the most important one is that the inner components are needed to describe the correct usage of the assembly in the harness. For example in the case of the prebuild wire, the connectors are needed to define their position in the topology and the wire is needed to define the routing of the assembly through the topology.

In the upper area of the figure (highlighted in yellow) the master data of the assembly is shown (for simplification it contains only one {{< vec-class PartOccurrence >}} “B”). When the assembly is used in a Harness it is instantiated (highlighted in blue). In the example the assembly is instantiated twice (PartOccurrence ASS1 & ASS2), since an assembly can be used multiple times in the same context. All subcomponents of the the assembly **must** be instantiated as well ({{< vec-class PartOccurrence >}} B1 & B2). These {{< vec-class PartOccurrence >}}s carry a reference to the {{< vec-class PartOccurrence >}} in the Part Master Data they represent. The instantiated {{< vec-class PartOccurrence >}}s are used to define the concrete usage of the Assembly. It is also possible, that the concrete usage has properties different to the represented occurrence. The most common use case for this is the naming of the {{< vec-class PartOccurrence >}}. Another use case, which is not so obvious, is for example that a prebuild wire can have only one connector attached to it and the other side is left open. When the wire is used, it is cut to needed length and then contacted on the open side. In this case the wire length of the instantiated wire would be different to master data definition of the assembly.
