---
title: "Routing"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
tags: []
categories: []
date: 2024-12-23
draft: false
review: true
classes:
  - RoutingSpecification
  - RoutableElement
  - Routing

history:
  - date: 2024-12-23T00:00:00Z
    description: "Routing Variants in the VEC"
    issue: "KBLFRM-1256"

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    parent: Topology
    weight: 110

links:
  - icon_pack: fas
    icon: file-code
    name: routing-examples.vec
    url: 'routing-examples.vec'
    

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 100
---
{{< review KBLFRM-1256 >}}
A {{< vec-class Routing >}} is used to associate a {{< vec-class RoutableElement >}} with a topology. For a wiring harness, 
the {{< vec-class RoutableElement >}} will be a {{< vec-class WireElementReference >}}. In early development phases 
(and depending on the development process) it might be desired to associate a schematic with a topology. Therefore, 
{{< vec-class Connection >}}s are also {{< vec-class RoutableElement >}}. 

In this implementation guideline {{< vec-class WireElementReference >}}s will be used throughout. However, the same principles would apply 
when you define {{< vec-class Routing >}}s for {{< vec-class Connection >}}s. The following sections are based on a consistent example that 
can be downloaded from the [Additional Resources]({{<relref "#additional-resources">}}) at the end of this page. 
## Foundation / Input Data

A routing is defined as a directed path through the topology of a wiring harness. The {{< vec-class RoutingSpecification >}}  is a 
container for individual {{< vec-class Routing >}}s that belong to the same context, e.g. all wires of a harness. The {{< vec-class Routing >}} 
stores the results of a routing algorithm and is independent from the actual routing strategy. However, a requirement was, to be able to store 
constraints on the routing and inputs that led to the result, in order to support a re-routing based on the data in the VEC (e.g. during implementation of topology changes).

The simplest possible routing algorithm searches for a loop-free path between the endpoints of a wire. If this does not yield 
a unique result, additional guidance is required. This guidance can either be defined by the user or derived from additional information 
(e.g., configuration constraints). The corresponding result can then be stored in the `mandatorySegments` of the {{< vec-class Routing >}}. 
This is a list of {{< vec-class TopologySegment >}} that the routing algorithm shall pass through as intermediate targets. 

The following subsections describe the required input for any routing algorithm and its mapping in the VEC.

### Topology

The following figure depicts the topology that serves as foundation for this implementation guideline.

{{< figure src="routing-examples.svg" lightbox="true" title="Routing Examples" numbered="true">}}

The representation in the VEC is the following:

```xml
<Specification xsi:type="vec:TopologySpecification" id="TopologySpecification_00023">
  <Identification>TOPOLOGY</Identification>
  <TopologyNode id="TopologyNode_00024">
    <Identification>ND-1</Identification>
  </TopologyNode>
  <TopologyNode id="TopologyNode_00025">
    <Identification>ND-2</Identification>
  </TopologyNode>
  ...
  <TopologySegment id="TopologySegment_00032">
    <Identification>SEG-2</Identification>
    <EndNode>TopologyNode_00025</EndNode>
    <StartNode>TopologyNode_00024</StartNode>
  </TopologySegment>
  ...
</Specification>
```

### PartOccurrences

A {{< vec-class "CompositionSpecification" >}} contains the required {{< vec-class "PartOccurrence" >}}s. The example consists of three connectors (`A1`, `A2`, `A3`) and three wires (`W1`, `W2`,`W3`).

```xml
<Specification xsi:type="vec:CompositionSpecification" id="CompositionSpecification_00075">
  <Identification>COMPONENTS</Identification>
  <Component id="PartOccurrence_00076">
    <Identification>A1</Identification>
    <Role xsi:type="vec:PlaceableElementRole" id="PlaceableElementRole_00077">
      <Identification>A1</Identification>
      <PlaceableElementSpecification>PlaceableElementSpecification_00003</PlaceableElementSpecification>
    </Role>
    <Role xsi:type="vec:ConnectorHousingRole" id="ConnectorHousingRole_00078">
      <Identification>A1</Identification>
      <ConnectorHousingSpecification>ConnectorHousingSpecification_00004</ConnectorHousingSpecification>
      <SlotReference xsi:type="vec:SlotReference" id="SlotReference_00079">
        <Identification>A</Identification>
        <ReferencedSlot>Slot_00005</ReferencedSlot>
        <CavityReference id="CavityReference_00080">
          <Identification>1</Identification>
          <ReferencedCavity>Cavity_00006</ReferencedCavity>
        </CavityReference>
      </SlotReference>
    </Role>
    <Part>PartVersion_00106</Part>
  </Component>
  ...
  <Component id="PartOccurrence_00091">
    <Identification>W1</Identification>
    <Role xsi:type="vec:WireRole" id="WireRole_00092">
      <Identification>W1</Identification>
      <WireSpecification>WireSpecification_00014</WireSpecification>
      <WireElementReference id="WireElementReference_00093">
        <Identification>W1</Identification>
        <ReferencedWireElement>WireElement_00015</ReferencedWireElement>
        <WireEnd id="WireEnd_00094">
          <Identification>A1.1</Identification>
          <PositionOnWire>0.0</PositionOnWire>
        </WireEnd>
        <WireEnd id="WireEnd_00095">
          <Identification>A2.1</Identification>
          <PositionOnWire>1.0</PositionOnWire>
        </WireEnd>
      </WireElementReference>
    </Role>
    <Part>PartVersion_00107</Part>
  </Component>
  ...
</Specification>    
```
### Placements of Connectors

The connectors are placed with {{< vec-class "OnPointPlacement" >}}s in the toplogy (compare the figure above).
```xml
<Specification xsi:type="vec:PlacementSpecification" id="PlacementSpecification_00040">
  <Identification>PLACEMENTS</Identification>
  <Placement xsi:type="vec:OnPointPlacement" id="OnPointPlacement_00041">
    <Identification>A1</Identification>
    <PlacedElement>PlaceableElementRole_00077</PlacedElement>
    <Location xsi:type="vec:NodeLocation" id="NodeLocation_00042">
      <Identification>A1</Identification>
      <ReferencedNode>TopologyNode_00024</ReferencedNode>
    </Location>
  </Placement>
  ...
</Specification>    
```    
### Connectivity

The connectivity of the wires is defined as follows with {{< vec-class "ContactPoint" >}}s.

| Wire  | From  | To     |
|-------|-------|--------|
| `W1`    | `A1`    | `A2`     |
| `W2`    | `A1`    | `A3`     |
| `W3`    | `A1`    | `A2`     |

```xml
<Specification xsi:type="vec:ContactingSpecification" id="ContactingSpecification_00056">
  <Identification>HARNESS-1</Identification>
  <ContactPoint id="ContactPoint_00057">
    <Identification>A1.1</Identification>
    <CavityMounting id="CavityMounting_00058">
      <EquippedCavityRef>CavityReference_00080</EquippedCavityRef>
    </CavityMounting>
    <WireMounting id="WireMounting_00059">
      <ReferencedWireEnd>WireEnd_00094</ReferencedWireEnd>
    </WireMounting>
  </ContactPoint>
  ...
</Specification>
```

## Routing 
### Basic Routing
The simplest routing case is a direct, loop-free and unambiguous routing. In this case, the wire takes the direkt path through the topology, each segment is only passed once and there is only one valid path. 

In our example, this is the case for `W1` going from `A1` to `A2` through `SEG-2` and `SEG-1`. 

```xml
<Routing id="Routing_00048">
  <Identification>W1</Identification>
  <RoutedElement>WireElementReference_00093</RoutedElement> <!-- W1 -->
  <Path id="Path_00049">
    <Segment>TopologySegment_00033 TopologySegment_00032</Segment> <!-- SEG-1, SEG-2 -->
  </Path>
</Routing>
```

{{% callout note %}}
**Remarks**

1. The segment list in the routing is **ordered** and the order is relevant. Especially for the more complex cases following, it is relevant in which order the segments are visited. However, the direction is not relevant, as there is no semantic meaning defined for the direction of wires. So a routing (`A`, `B`, `C`) is semantically equivalent to a routing (`C`, `B`, `A`).
2. Since order matters, a routing that **does not go through adjacent segments** in correct order is **not** valid. So, based on our example, a routing containing the following path ..., `SEG-1`, `SEG-4`, `SEG-3`, `SEG5`, ... is considered invalid, as there is "gap" in the topology between `SEG-1` & `SEG-4`, missing `SEG-3` and after that, the routing is jumping back and forth. As a result, the routing might contain all segments required for a complete path, but not in the correct order and therefore is invalid.
{{% /callout %}}

### Ambiguous Routing

In our example, the wire `W2` is a connection between `A1` and `A2`. From `A1` to `A2` there are two direct, loop-free paths. One taking `SEG-7` and `SEG-8` (hereafter referred to as path `X`) and the other one via `SEG-4` and `SEG-5` (path `Y`). Which path the wire `W2` should take is a design descision. To document the resulting routing, a simple routing as shown in the section before would be sufficient. 

However, in case of changes, the routing could not be recalculated. Therefore it is possible to document the engineers design descision in addition to the actual routing result:

```xml
<Routing id="Routing_00052">
  <Identification>W2.1</Identification>
  <MandatorySegment>TopologySegment_00035 TopologySegment_00036</MandatorySegment> <!-- SEG-4 & SEG-5 -->
  <RoutedElement>WireElementReference_00098</RoutedElement>
  <Path id="Path_00053">
    <Segment>TopologySegment_00032 TopologySegment_00034 TopologySegment_00035 TopologySegment_00036 TopologySegment_00037</Segment>
    <!-- SEG-2, SEG-3, SEG-4, SEG-5, SEG-6 -->
  </Path>
</Routing>
```
The {{< vec-class Path >}} represents the result of the routing, the `MandatorySegment` property defines the {{< vec-class TopologySegment >}}s that are mandatory to be visited by the routing algorithm, in order to resolve the ambiguity. 

### Routing Variants

There are use cases where it is desired to have routing variants for a single {{< vec-class RoutableElement >}}, that are valid under certain conditions. This can be the case, when a {{< vec-class RoutableElement >}} represents an abstract concept like a {{< vec-class Connection >}} or a {{< vec-class WireElementReference >}} from a wiring definition. Those could be routed through through different geometric variants, and could be used then, in the further developlment provess, to derive specific wire variants in a harness. This feature of the model could also used to represent packaging variants of an actual harness. However, the development process has to ensure, that the harness actually "fits" into all packing variants (e.g. the different routings variants should result in the same wire length). 

The example contains routing variants for the wire `W2`. There is the routing variant `W2.1` which has been already used for the "Ambiguous Routing" example above. The example contains and additional routing `W2.2` that takes path `X` (via `SEG-7`, `SEG-8`).

```xml
<Routing id="Routing_00054">
  <Identification>W2.2</Identification>
  <MandatorySegment>TopologySegment_00038 TopologySegment_00039</MandatorySegment>
  <!-- SEG-7, SEG-8-->
  <RoutedElement>WireElementReference_00098</RoutedElement>
  <Path id="Path_00055">
    <Segment>TopologySegment_00032 TopologySegment_00034 TopologySegment_00038 TopologySegment_00039 TopologySegment_00037</Segment>
  </Path>
</Routing>
```
Both {{< vec-class Routing >}}s reference the {{< vec-class WireElementReference >}} `W2` as `RoutedElement`. The conditions under which each routing is valid are defined with a {{< vec-class VariantConfigurationSpecification >}} and a {{< vec-class ConfigurationConstraintSpecification >}}. The {{< vec-class VariantConfigurationSpecification >}} defines the conditions itself. In this case an option `RL` for right-hand drive and `LL` for left-hand drive.
```xml
<Specification xsi:type="vec:VariantConfigurationSpecification" id="VariantConfigurationSpecification_00017">
  <Identification>VARIANTS</Identification>
  <VariantConfiguration id="VariantConfiguration_00018">
    <Identification>RL</Identification>
    <LogisticControlExpression>RL</LogisticControlExpression>
  </VariantConfiguration>
  <VariantConfiguration id="VariantConfiguration_00019">
    <Identification>LL</Identification>
    <LogisticControlExpression>LL</LogisticControlExpression>
  </VariantConfiguration>
</Specification>
```
The {{< vec-class ConfigurationConstraintSpecification >}} is used to apply the {{< vec-class VariantConfiguration>}}s as constraints to specific model elements. 
```xml
<Specification xsi:type="vec:ConfigurationConstraintSpecification" id="ConfigurationConstraintSpecification_00020">
  <Identification>CONFIG_CONSTRAINTS</Identification>
  <ConfigurationConstraint id="ConfigurationConstraint_00021">
    <Identification>RL</Identification>
    <ConfigInfo>VariantConfiguration_00018</ConfigInfo>
    <ConstrainedElements>TopologySegment_00035 TopologySegment_00036 Routing_00052</ConstrainedElements>
  </ConfigurationConstraint>
  <ConfigurationConstraint id="ConfigurationConstraint_00022">
    <Identification>LL</Identification>
    <ConfigInfo>VariantConfiguration_00019</ConfigInfo>
    <ConstrainedElements>TopologySegment_00038 TopologySegment_00039 Routing_00054</ConstrainedElements>
  </ConfigurationConstraint>
</Specification>
```
It can be seen, that in this case the same contraints are applied to the topology segments and the routings using those segments. This inidicates, that the {{< vec-class ConfigurationConstraint >}}s control the existence of parts of the topology available to the routing algorithm. Those conditions are then inherited by the derived routings. 

However, this is just a logical implication of the example. There might be others reason for routing variants, or the relationship between the variant conditions of the different variantes might be more complex. 

### Forced Routing

There are use case, where the routing of a wire should not take a direct path in the topology, but a specifically desgined one. For example a wire should go through an emergency disconnect location, which is a diversion from the direct path and might require going back an forth through the same segments. This is represented in a similiar way as resolving ambigious routings with `MandatorySegment`s.

In the example, the wire `W3` is forced through `SEG-3`. Defining a mandatory segment, means that the wire has to be routed from its start location **through** the mandatory segment(s) at least once. After that, the routing has to find a way to the destination, which might require to visit the mandatory segment again.

To mark this routing as specifically designed, it can be flaged as `SpecialRouted`, meaning an automatic rerouting is not allowed. Additionally a human readable comment for the reason of the "special routing" can be provided.

```xml
<Routing id="Routing_00050">
  <Identification>W3</Identification>
  <SpecialRoutedComment id="LocalizedString_001">
    <LanguageCode>En</LanguageCode>
    <Value>Emergency Disconnect</Value>
  </SpecialRoutedComment>
  <SpecialRouted>true</SpecialRouted>
  <MandatorySegment>TopologySegment_00034</MandatorySegment>
  <RoutedElement>WireElementReference_00103</RoutedElement>
  <Path id="Path_00051">
    <Segment>TopologySegment_00033 TopologySegment_00034 TopologySegment_00034 TopologySegment_00032</Segment>
  </Path>
</Routing>
```