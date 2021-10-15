---
title: Placeable Elements
toc: false
type: specs
layout: diagram
date: "2021-10-18"
draft: false
specification: VEC
version: 1.2.1
documentType: "Recommendation"
elementType: Diagram
classes:
  - MeasurementPoint
  - PlacementType
  - CableDuctOutlet
  - CableLeadThrough
  - FittingSpecification
  - CableDuctSpecification
  - SegmentConnectionPoint
  - WireReception
  - GrommetSpecification
  - FittingOutlet
  - TerminalSpecification
  - PlaceableElementSpecification
  - PartOrUsageRelatedSpecification
  - ConnectorHousingSpecification
  - PlacementPoint
menu:
  VEC-1.2.1:    
    parent: general-component-data
    identifier: general-component-data/placeable-elements
    weight: 1004004 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1004004
---
{{< svgfigure src="placeable-elements.png" width="1012" height="643" caption="Placeable Elements" numbered="true" >}}
  {{< svglink relref="../../classes/measurementpoint.md" x="158.0" y="192.0" width="129.0" height="55.0" >}}
  {{< svglink relref="../../classes/placementtype.md" x="520.0" y="91.0" width="129.0" height="82.0" >}}
  {{< svglink relref="../../classes/cableductoutlet.md" x="14.0" y="385.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../../classes/cableleadthrough.md" x="364.0" y="385.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../../classes/fittingspecification.md" x="161.0" y="525.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../../classes/cableductspecification.md" x="7.0" y="525.0" width="138.0" height="43.0" >}}
  {{< svglink relref="../../classes/segmentconnectionpoint.md" x="728.0" y="385.0" width="149.0" height="55.0" >}}
  {{< svglink relref="../../classes/wirereception.md" x="532.0" y="385.0" width="151.0" height="67.0" >}}
  {{< svglink relref="../../classes/grommetspecification.md" x="322.0" y="525.0" width="187.0" height="91.0" >}}
  {{< svglink relref="../../classes/fittingoutlet.md" x="161.0" y="385.0" width="192.0" height="91.0" >}}
  {{< svglink relref="../../classes/terminalspecification.md" x="518.0" y="525.0" width="207.0" height="79.0" >}}
  {{< svglink relref="../../classes/placeableelementspecification.md" x="156.0" y="98.0" width="252.0" height="55.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="154.0" y="14.0" width="253.0" height="57.0" >}}
  {{< svglink relref="../../classes/connectorhousingspecification.md" x="735.0" y="525.0" width="254.0" height="103.0" >}}
  {{< svglink relref="../../classes/placementpoint.md" x="14.0" y="266.0" width="771.0" height="67.0" >}}
{{< / svgfigure >}}
<p> In a wiring harness many components can be placed directly onto the topology (e.g. connectors, fixings). To specify the aspect of placeability the VEC defines a <i>PlaceableElementSpecification</i>. Every component to be placed directly onto the topology must have a <i>PlaceableElementSpecification </i>in addition to its regular type specific <i>PartOrUsageRelatedSpecification </i>(e.g. <i>ConnectorHousingSpecification</i>).      </p>      <p> A <i>PlaceableElementSpecificat</i>i<i>on </i>defines at minimum the <i>validPlacementTypes</i> for the component (e.g. a connector can be placed on a point, a tape can be placed on a path in the topology).      </p>      <p> In addition, the <i>PlaceableElementSpecificat</i>i<i>on</i> can define important points of the component, <i>MeasurementPoints</i> and <i>PlacementPoints. </i>      </p>      <p> <i>MeasurementPoints</i> are locations on the component that can be used to define a dimensioning. To make a <i>MeasurementPoint</i> locatable by a person more information is needed. This information is normally provided with a drawing of the component. The <i>identification </i>can be used to find the <i>MeasurementPoint</i> on the drawing (if it is labelled). To make a <i>MeasurementPoint</i> locatable by a system, the external mapping mechanism can be used.      </p>      <p> <i>PlacementPoints</i> are locations on the component, where it can be attached to the wiring harness. Therefore, it can define a <i>segmentDiameter </i>for which it is usable. To locate a <i>PlacementPoint</i> on the component, the same approach as for <i>MeasurementPoints</i> can be used.      </p>      <p> Often these <i>PlacementPoints</i> have additional properties depending on the component type. In these cases, the corresponding <i>PartOrUsageRelatedSpecification</i> redefines these elements, with a reference to the <i>PlacementPoint </i>which represents them (e.g. the <i>SegmentConnectionPoint</i>). However, a <i>PlacementPoint </i>can be defined without such a corresponding element, if no additional information is necessary.      </p>