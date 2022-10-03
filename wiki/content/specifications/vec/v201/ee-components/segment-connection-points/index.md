---
title: Segment Connection Points
toc: false
type: specs
layout: diagram
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Diagram
classes:
  - AbstractSlot
  - SegmentConnectionPoint
  - CavityAddOn
  - SegmentConnectionPointHC
  - PlacementPoint
  - Cavity
  - PlaceableElementSpecification
  - EEComponentSpecification
  - HousingComponent
  - ConnectorHousingSpecification
  - Slot
menu:
  VEC-2.0.1:    
    parent: ee-components
    identifier: ee-components/segment-connection-points
    weight: 1006002 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1006002
---
{{< svgfigure src="segment-connection-points.png" width="953" height="745" caption="Segment Connection Points" numbered="true" >}}
  {{< svglink relref="../../classes/abstractslot.md" x="64.0" y="441.0" width="132.0" height="55.0" >}}
  {{< svglink relref="../../classes/segmentconnectionpoint.md" x="435.0" y="322.0" width="149.0" height="55.0" >}}
  {{< svglink relref="../../classes/cavityaddon.md" x="491.0" y="504.0" width="169.0" height="67.0" >}}
  {{< svglink relref="../../classes/segmentconnectionpointhc.md" x="428.0" y="168.0" width="181.0" height="67.0" >}}
  {{< svglink relref="../../classes/placementpoint.md" x="729.0" y="315.0" width="192.0" height="67.0" >}}
  {{< svglink relref="../../classes/cavity.md" x="15.0" y="651.0" width="195.0" height="79.0" >}}
  {{< svglink relref="../../classes/placeableelementspecification.md" x="715.0" y="504.0" width="224.0" height="55.0" >}}
  {{< svglink relref="../../classes/eecomponentspecification.md" x="29.0" y="21.0" width="236.0" height="55.0" >}}
  {{< svglink relref="../../classes/housingcomponent.md" x="29.0" y="140.0" width="246.0" height="79.0" >}}
  {{< svglink relref="../../classes/connectorhousingspecification.md" x="22.0" y="294.0" width="254.0" height="103.0" >}}
  {{< svglink relref="../../classes/slot.md" x="22.0" y="525.0" width="277.0" height="88.0" >}}
{{< / svgfigure >}}
<p> The <i>HousingComponent</i> of an E/E-Component has two major use cases:      </p>      <ol>       <li> Other E/E-Components can be plugged into it (e.g. Fuses, Relays, Harnesses).        </li>       <li> Wire can be contacted directly into the <i>HousingComponent </i>(without an additional connector)        </li>     </ol>     <p> In the first case, no connection to the harness topology is required. Either because there is no harness topology (e.g. a Fuse), or because the end point of the topology is the harness connector itself (which is plugged into the housing component). However, for the latter case, <i>HousingComponent</i> itself is the endpoint of the wires and thus of the harness topology. Like a connector, an E/E-component and its <i>HousingComponents</i> can have multiple different points at which <i>TopologyNode </i>can be connected and not all <i>HousingComponents </i>and<i> Cavities</i> are reachable from a connecting point.      </p>      <p> Reusing the <i>SegmentConnectionPoint</i> of the <i>ConnectorHousingSpecification</i> is not sufficent, because a single <i>ConnectorHousingSpecification</i> can be used by different <i>HousingComponents </i>and the definition would be ambiguous.      </p>      <p> Therefore, a <i>HousingComponent </i>can define multiple <i>SegmentConnectionPointHC </i>representing the valid options for this specific <i>HousingComponent</i> to attach to a <i>TopologyNode.</i> The definition of cavity reachability and wire addons is specified with the <i>SegmentConnectionPoint</i> of the <i>ConnectorHousingSpecification. </i><i>SegmentConnectionPointHC</i> can reference the <i>SegmentConnectionPoint</i> which is used to &quot;enter&quot; the connector housing<i>.</i>      </p>