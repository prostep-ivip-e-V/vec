---
title: "Product Definition of a Harness"
linktitle: Product Definition
type: specs
# Table of Content on the right side. Only useful for large pages.
authors: ["becker"]
tags: []
categories: []
date: 2022-09-01
lastmod: 2022-09-01
draft: false
review: false
toc: true

classes:


history:
  - date: 2022-09-09
    description: "New Implementation Guideline for PartUsages & PartOccurences"
    issue: "KBLFRM-1038"

menu:
  vec-guidelines:
    identifier: product-definition
    weight: 4000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 4000
---
The definition of the product itself (the wiring harness) is one of the major use cases of the VEC. The figure below illustrates the basic building blocks in the data model, to do this and shall give some guidance where to look for specific topics. It is not a complete map of the VEC.

{{< figure src="product-definition.svg" numbered="true" lightbox="true" title="Building Blocks of a Harness Product Definition">}}

A wiring harness consists of recurring components that are produced and installed in large quantities (e.g. connectors, wires, terminals, seals etc.). These elements have properties that are the same for all elements of a specific type and are independent of their use. In most cases, such types are identified in specific company context as a part with a unique part number. The description of those common properties is often referred to as "Part Master Data". The "Component Specification / Part Master Data" section (blue box on the right hand side) is represents this type of information. This area is explained in more detail in the section ["Component Specification"]({{< relref component-description >}}).

A wiring harness definition is then formed withe specific uses of those components ("types"), whereby a component can also occur several times. Each individual instance of a component can have additional properties specific to its usage (e.g. signal & length of a wire, name of connector, etc). Those properties are defined in the block "Instances of Components", highlighted in green. In this area, the VEC has the ability to differentiate between abstract instances of components ({{< vec-class partusage >}}), where a specific component is not yet defined, but some properties are known, and instances of concrete components ({{< vec-class partoccurrence >}})

Based on those instances, you can specify bill of materials (BOM), with or without variance, for composite parts, which can be in turn used hierarchically as instances for more complex parts (block on the right side, highlighted in orange). See ["Composite Parts"]({{< relref composite-parts >}}).

In addition to the BOM view, it is also important to establish the relationships of the components to each other and to other elements of the wiring harness definition (e.g. topology or electrology). This is done with the "Behaviour Relationship Definitions" (highlighted in violet), specifications that define specific relationships e.g. routing, placement or contacting and traceability relationships between components and definitions in layers of higher abstraction.