---
title: "Electrological Layers"
# linktitle: Link in Sidemenu
type: specs
authors: ["becker"]
tags: ["Review"]
categories: []
date: 2021-11-16
lastmod: 2021-11-16
draft: false
toc: true
review: true

history:
  - date: 2021-11-16
    description: "Added overview for electrological layers"
    issue: "KBLFRM-1134"

classes:
  - NetSpecification
  - ConnectionSpecification
  - PartUsageSpecification
  - ContactingSpecification

menu:
  vec-guidelines:
    identifier: elog-layers
    weight: 3500

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)

weight: 3500
---

{{< review KBLFRM-1134 >}}
{{< figure src="electrological-layers.svg" class="float-right" title="Electrological Layers Overview" numbered="true" lightbox="true" width="400">}}

The VEC offers three layer, each representing a level of abstraction for describing electrologic. This is illustrated in the diagram on the right side.

The _Architectural Layer_ defines the connectivity / communication links (see {{< vec-class Net >}}) between components, without making any specifications regarding the physical realization. For example, this layer can be used to define which Bus technologies used by E/E components and the network topology to communicate with each other. To describe this layer in the VEC, the {{< vec-class NetSpecification >}} and its subelements are used.

The _System Schematic Layer_ is more detailed than the _Architectural Layer_. The electrological realization of the {{< vec-class Net >}}s from the _Architectural Layer_ are defined. {{< vec-class Net >}}s from _Architectural Layer_ are realized by {{< vec-class Connection >}}s. A connection has a defined electrical potential (see {{< vec-class Signal>}}). For example a "_Body CAN Bus_", represented by a single {{< vec-class Net >}} in the _Architectural Layer_, has the two electrical potentials, "_Body CAN High_" and "_Body CAN Low_". In the _System Schematic Layer_ those are represented by two individual {{< vec-class Connection >}}s.

However, the _System Schematic Layer_ does **not** define a specific physical realization of the connectivity. A {{< vec-class Connection >}} with three ends (like in the diagram on the right) could be realized in many ways (e.g. a splice, a distribution component (star link), a double crimp, an IDC connection, ...). To describe this layer in the VEC, the {{< vec-class ConnectionSpecification >}} and its subelements are used.

The _Wiring Layer_ specifies a concrete physical realization of the layers above and narrows their degrees of freedom. It is getting more concrete (e.g. it defines the realization of the connection with three ends from the diagram on the right by a splice). Typically the _Wiring Layer_ contains information such aus wire colors, cross section areas, conductor and plating materials.

Due to its similarity, the _Wiring Layer_ uses the same basic model elements as the definition of concrete harness. However, the flexibility of the VEC model allows the _Wiring Layer_ to leave aspects unspecified. For example, by using {{< vec-class PartUsage >}}s instead of {{< vec-class PartOccurrence >}}s, partial {{< vec-class WireSpecification >}}s can be used instead of concrete {{< vec-class PartVersion >}}s to describe the wiring. This makes it possible, for example, to define wire cross-sections and colors without having to specify insulation materials.

{{% callout note %}}
Many processes define documents that are similar to this layered structure in terms of their content, but do not correspond to it one hundred percent. This means, for example, that a process document "System Schematic" might contain many aspects of the VEC layer "System Schematic", but can also define additional information from the VEC Layer "Wiring".

This is perfectly valid and an intended feature of the VEC.
{{% /callout %}}
