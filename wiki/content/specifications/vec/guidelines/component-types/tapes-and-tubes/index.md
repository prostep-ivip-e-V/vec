---
title: "Tapes and Tubes"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
categories: []
date: 2026-01-28
lastmod: 2026-01-28T17:00:52+01:00
draft: false
review: true
math: true

classes:
  - WireProtectionSpecification
  - TapeSpecification
  - TapeRole
  - WireProtectionGroup
  - WindingType
  

history:
  - date: 2026-01-28T00:00:00Z
    description: "Initial version, specifically addressing the utilization of ProtectionGroups"
    ghIssue: "913"


menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    parent: component-types
    weight: 11000
# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)

weight: 11000
---
{{< gh-review "956" >}}

Wire protections in general are handled different than components with a fixed form like connectors, cable ducts or fixings. Tapes and Tubes are flexible components that can be adapted to the geometry of the wires they are protecting. 

## Placement

Unlike other components they are (mostly) not placed at specific points in the topology but rather along {{< vec-class TopologySegment >}}s on whole areas of the topology. 
How this type of placement works is described in detail in the section [Placements and Dimensions]({{< relref "../../topology/placement-and-dimensions/#placement-on-areas-wire-protection">}}). For tapings, however, there are also special application forms that do not extend over a continuous topological region but are applied only locally at specific points, for example spot tapes or cross-tapings.

## Tapes

Tapes play a special role in the product definition. Unlike other components, such as connectors, they are not fully defined by their part specification (part number) alone, since this typically represents only the “tape on the roll”. For the product definition, however, the applied processing method is decisive. In the VEC, this is specified in the usage via the {{< vec-class TapeRole >}}.

This modeling approach is also used for other component types (e.g. for defining wire lengths), but the degrees of freedom are significantly greater for tapes. For example, the {{< vec-class WindingType >}} can directly influence the type of placement in the topology. A spiral wrapping is applied to a linear region of the topology, whereas spot tapes or cross-wrappings refer to a specific point location.

## Groupings of Wire Protections

For various reasons, it may be necessary to represent more complex “protection constructs” in the product definition by multiple individual {{< vec-class OccurrenceOrUsage >}}s, while in the actually manufactured product they should be realized as continuously as possible. Such a decomposition into several occurrences may be required because the nature of a variant-rich 150% product definition does not always allow a single, unambiguous definition (e.g. in one variant a subdivision is technically necessary, whereas in another it is not). Alternatively, different processing types may be applied with the same material in different regions, for example a change from spiral wrapping to dense wrapping, which likewise requires separate occurrences, as described in the previous section.

At the same time, it is desirable in the physical product to form protection regions that are as continuous as possible and to avoid interruptions in the protected area that are not technically required but are merely a consequence of the modeling approach in the product definition. The explicit definition of such areas is achieved with the {{< vec-class WireProtectionGroup >}}. Please revisit the definition of this class, before continuing.

The following figure illustrates such a situation, where a {{< vec-class WireProtectionGroup >}} can be applied:

{{< figure src="protection-group-illustration.svg" title="Wire Protection Group Example" numbered="true" lightbox="true">}}

The figure shows two E/E components `A` and `B` that are connected by a Y-shaped topology consisting of the topology segments `SEG-1`, `SEG-2`, and `SEG-3`. {{< vec-class TopologySegment >}}s only exist in the physical product if wires actually run through them, and only in this case are corresponding protection elements required. In the present example, the two topology segments `SEG-2` and `SEG-3` exist only if the respective connected components `A` or `B` are present. `SEG-1` exists as soon as at least one of the two components is present.

As illustrated, the entire region is intended to be protected by tape. In the example, this is defined by several {{< vec-class PartOccurrence>}}s, labeled `#1`, `#2`, …, `#7`. If only one of the two components, for example `A`, exists, an optimal execution of the protection would be as follows: 

   1. start wrapping at `#5`, 
   2. continue seamlessly through `#2` and `#1`, 
   3. finish the protected region at `#7`, without interrupting the wrapping process at any point. 
   
If both components exist, an optimal execution could be: 

  1. start wrapping at `#6` and wrap `#3` without interruption, 
  2. cut the tape, start again at `#5`, wrap through `#2` and `#1`, finish at `#7`, 
  3. finally apply a cross-wrapping at `#4`.

If the wrappings were executed strictly according to the individual occurrences defined in the product model, the wrapping would be interrupted at the junction of the two segments `SEG-2` and `SEG-3`. In addition, separate start and end fixations would be required for each occurrence in order to achieve the required quality.

Alternatively, one could define the actually continuous wrapping regions as individual {{< vec-class PartOccurrence >}} (the VEC supports placements spanning multiple segments), for example by modeling the region `#1`–`#2` as a single occurrence. 

However, due to the variant-rich nature of the product, this would lead to high redundancy in the product definition and to variance control issues. For instance, the region at `#1` would then have to be covered by at least two different occurrences: one for the case that `A` or `A` & `B` exist, and another one for the case that only `B` exists. It is easy to see that this approach becomes impractical for highly variant products.

This is where the {{< vec-class WireProtectionGroup >}} comes into play. It represents a requirement or work instruction stating, that the referenced protection elements should be executed as continuously as technically possible, while still allowing the individual elements to be controlled independently. In the example, all elements (`#1`–`#7`) would be grouped into a single {{< vec-class WireProtectionGroup >}}. The individual elements could then be controlled, for example, as described above for the different variant situations.

$$
A \Rightarrow \\{ \\#2, \\#5 \\} 
$$
$$
B \Rightarrow \\{ \\#3, \\#6 \\} 
$$
$$
(A \lor B) \Rightarrow \\{ \\#1, \\#7 \\} 
$$
$$
(A \land B) \Rightarrow \\{ \\#4 \\} 
$$


The same logic is not limited to tapes but can also be applied, for example, to tubes. In this case, the semantics are analogous: if only `A` or only `B` exists, a continuous tube should be used for `#1`,`#2` or `#1`, `#3` respectively. If both exist, separate tube sections would be required for `#1`, `#2`, `#3` and a Y-fitting would be used at position `#4`.

{{% callout info %}}
The semantics of a {{< vec-class WireProtectionGroup >}} are only meaningful if the group contains exclusively materials that allow for a continuous, uninterrupted transition.
{{% /callout %}}


