---
title: Placement and Dimensions
toc: false
type: specs
layout: diagram
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Diagram
classes:
  - Path
  - OnWayPlacement
  - OnPointPlacement
  - DimensionAnchor
  - Placement
  - PlaceableElementRole
  - Unit
  - Tolerance
  - PlacementPointReference
  - Dimension
  - MeasurementPointReference
  - Role
  - OccurrenceOrUsage
  - Location
  - PlacementSpecification
menu:
  VEC-1.1.2:    
    parent: topology-and-geometry
    identifier: topology-and-geometry/placement-and-dimensions
    weight: 1005005 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1005005
---
{{< svgfigure src="placement-and-dimensions.png" width="856" height="807" caption="Placement and Dimensions" numbered="true" >}}
  {{< svglink relref="../../classes/path.md" x="651.0" y="497.0" width="89.0" height="43.0" >}}
  {{< svglink relref="../../classes/onwayplacement.md" x="492.0" y="332.0" width="103.0" height="43.0" >}}
  {{< svglink relref="../../classes/onpointplacement.md" x="366.0" y="334.0" width="109.0" height="43.0" >}}
  {{< svglink relref="../../classes/dimensionanchor.md" x="163.0" y="627.0" width="110.0" height="43.0" >}}
  {{< svglink relref="../../classes/placement.md" x="382.0" y="209.0" width="126.0" height="67.0" >}}
  {{< svglink relref="../../classes/placeableelementrole.md" x="133.0" y="238.0" width="129.0" height="43.0" >}}
  {{< svglink relref="../../classes/unit.md" x="609.0" y="574.0" width="139.0" height="70.0" >}}
  {{< svglink relref="../../classes/tolerance.md" x="637.0" y="658.0" width="146.0" height="67.0" >}}
  {{< svglink relref="../../classes/placementpointreference.md" x="175.0" y="420.0" width="151.0" height="55.0" >}}
  {{< svglink relref="../../classes/dimension.md" x="395.0" y="625.0" width="165.0" height="79.0" >}}
  {{< svglink relref="../../classes/measurementpointreference.md" x="49.0" y="532.0" width="171.0" height="55.0" >}}
  {{< svglink relref="../../classes/role.md" x="63.0" y="154.0" width="194.0" height="55.0" >}}
  {{< svglink relref="../../classes/occurrenceorusage.md" x="49.0" y="14.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/location.md" x="359.0" y="494.0" width="274.0" height="67.0" >}}
  {{< svglink relref="../../classes/placementspecification.md" x="49.0" y="749.0" width="785.0" height="43.0" >}}
{{< / svgfigure >}}
<p> A <i>PlacementSpecification</i> is used to define the <i>Placement </i>of <i>OccurrenceOrUsages</i> in a topology as physical elements that build this topology and to define <i>Dimensions</i> between these elements. Each <i>PlacementSpecification</i> is a container for various <i>Placements</i> and <i>Dimensions</i>.     </p>      <p> Each<i> OccurrenceOrUsage</i> that is placeable in the topology defines a <i>PlaceableElementRole.</i> A <i>PlaceableElementRole </i>can define various <i>PlacementPointReferences </i>and <i>MeasurementPointReferences</i>, which are instances of the corresponding elements <i>PlacementPoint</i> and <i>MeasurementPoint</i> defined in the part master data of the component. The position in the topology of a <i>PlaceableElementRole </i>is defined with a <i>Placement</i>. The multiplicity of this association is caused by the support of variance in the VEC. For a concrete configuration, there should be only one <i>Placement</i> for one <i>PlaceableElementRole.</i> &#160;     </p>      <p> The VEC specifies two individual types of <i>Placements</i>: <i>OnPointPlacements</i> and <i>OnWayPlacements</i>.     </p>      <p> Each <i>OnPointPlacement</i> defines one or more <i>Locations</i> in order to determine the positioning of the <i>placedElement</i>. More than one <i>Location</i> is necessary to specify the exact <i>Placement</i> of <i>placedElements </i>with more than one <i>PlacementPointReferences</i>, e.g. the different entries in case of a cable duct. Each <i>Location</i> can therefore reference a <i>PlacementPointReference.</i>     </p>      <p> An <i>OnWayPlacement</i> references one <i>Location</i> as <i>startLocation</i> and another <i>Location</i> as <i>endLocation</i> in order to determine the positioning of <i>placedElements</i> like tapes that cover a way in the topology. The positioning can be described even more precise by using the <i>OnWayPlacement</i> with a <i>Path</i> through the topology.     </p>      <p> Both <i>OnPointPlacements</i> and <i>OnWayPlacements</i> reference one or more <i>PlaceableElementRoles</i> as <i>placedElements</i>. The possibility to reference more than just one <i>PlaceableElementRole</i> permits to express that configuration dependant the one or other <i>PlaceableElementRole</i> is placed. Finally, both <i>OnPointPlacements</i> and <i>OnWayPlacements</i> can reference other <i>Placements</i> on which they are placed on top of in order to determine the arrangement of layering (e.g. a tape around a tube).     </p>      <p> Note: When using the <i>isOnTopOf</i>-relationship all other underlying <i>Placements</i> shall be referenced on which the referencing <i>Placement</i> is on top of and not only the direct neighbor. The reason for this is that <i>Placements</i> are <i>ConfigurableElements</i> and so are potentially not present in all configurations.     </p>      <p> Since the VEC can be used to exchange a product definition, it must be possible to define <i>Dimensions</i> with tolerances between the elements in addition to its exact positions in the topology.&#160;     </p>      <p> Each <i>Dimension</i> references two <i>DimensionAnchor</i>, one as <i>referenceAnchor</i> and one as <i>dimensionAnchor </i>and defines the distance in between as <i>dimensionValue</i>, optionally together with a tolerance (included in the definition of <i>NumericalValue</i>). In case of ambiguity regarding the path between the two <i>Locations</i>, the <i>Dimension</i> shall specify the relevant <i>Path</i>.     </p>      <p> A <i>DimensionAnchor</i> can be either a <i>MeasurementPointReference</i> or a <i>Location</i>. A <i>MeasurementPointReference</i> is used when the <i>Dimension </i>should reference an element on the component which is outside of the topology (e.g. a certain edge or a bolt). If a <i>Location </i>is referenced it can be either a <i>Location</i> defined by a <i>Placement</i> (if the dimension should reference the position of a component) or a <i>Location</i> defined by the <i>Dimension</i> itself if an element of the topology with no component on it must be referenced (e.g. a <i>TopologyNode</i>).      </p>