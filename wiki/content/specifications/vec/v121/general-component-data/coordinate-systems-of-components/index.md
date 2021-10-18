---
title: Coordinate Systems of Components
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
  - CartesianPoint3D
  - LocalPosition
  - MeasurementPoint
  - MeasurePointPosition
  - Unit
  - Transformation3D
  - PlacementPointPosition
  - PlacementPoint
  - LocalGeometrySpecification
  - BoundingBox
  - PlaceableElementSpecification
  - PartOrUsageRelatedSpecification
  - GeneralTechnicalPartSpecification
menu:
  VEC-1.2.1:    
    parent: general-component-data
    identifier: general-component-data/coordinate-systems-of-components
    weight: 1004005 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1004005
---
{{< svgfigure src="coordinate-systems-of-components.png" width="868" height="710" caption="Coordinate Systems of Components" numbered="true" >}}
  {{< svglink relref="../../classes/cartesianpoint3d.md" x="441.0" y="161.0" width="102.0" height="79.0" >}}
  {{< svglink relref="../../classes/localposition.md" x="189.0" y="147.0" width="113.0" height="34.0" >}}
  {{< svglink relref="../../classes/measurementpoint.md" x="35.0" y="322.0" width="129.0" height="55.0" >}}
  {{< svglink relref="../../classes/measurepointposition.md" x="56.0" y="217.0" width="130.0" height="34.0" >}}
  {{< svglink relref="../../classes/unit.md" x="714.0" y="14.0" width="139.0" height="70.0" >}}
  {{< svglink relref="../../classes/transformation3d.md" x="616.0" y="161.0" width="107.0" height="151.0" >}}
  {{< svglink relref="../../classes/placementpointposition.md" x="210.0" y="217.0" width="178.0" height="55.0" >}}
  {{< svglink relref="../../classes/placementpoint.md" x="182.0" y="322.0" width="192.0" height="67.0" >}}
  {{< svglink relref="../../classes/localgeometryspecification.md" x="231.0" y="14.0" width="209.0" height="34.0" >}}
  {{< svglink relref="../../classes/boundingbox.md" x="392.0" y="322.0" width="209.0" height="79.0" >}}
  {{< svglink relref="../../classes/placeableelementspecification.md" x="28.0" y="441.0" width="252.0" height="55.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="112.0" y="637.0" width="253.0" height="57.0" >}}
  {{< svglink relref="../../classes/generaltechnicalpartspecification.md" x="301.0" y="441.0" width="274.0" height="127.0" >}}
{{< / svgfigure >}}
<p> A&#160;<i>LocalGeometrySpecification</i> defines a mapping between the entities of the VEC&#160;and the 3D model of a component. The 'Local' in the name refers to the fact that all definitions within this specification are 'local' to the 3D model of a specific component (a component in a library, not in a specific usage).      </p>      <p> The coordinate system of a component is defined by its 3D&#160;model, which often follows certain guidelines or conventions (e.g. the coordinate systems of connectors have their origin in the centre of cavity 1).&#160;The <i>Transformation3D</i> of an <i>OccurrenceOrUsageViewItem3D </i>(see section 3D-Geometry) defines how the 3D model of the component shall be transformed in order to represent the correct positioning of its usage. This transformation is defined in regard to the origin and the axis of the component's coordinate system.      </p>      <p> The <i>BoundingBox</i> specifies a box that has the extent to completely enclose the volume of the component. It is defined to have one corner in the origin of its coordinate system and to grow along the respective axes in positive direction. This means, that the origin of bounding box is on a corner of the represented volume, the origin of the 3D model of the component is at some arbitrary point within the represented volume. As a result, the bounding box will most likely not enclose the component's 3D model in &quot;usage space&quot; when placed with the same transformation as the original 3D model. To overcome this problem, the <i>LocalGeometrySpecification</i> defines a <i>Transformation3D </i>as <i>boundingBoxPositioning,</i> which puts the generally defined bounding box into the coordinate system of the component.&#160;The transformed bounding box is then placed into the &quot;usage space&quot; with the same transformation as the 3D model of the component.      </p>      <p> In addition, the <i>LocalGeometrySpecification</i> also defines <i>LocalPositions</i> of important points of the component. The position of these points is defined within the coordinate system of the component. Positions can be defined for:      </p>      <ul>       <li> <i>PlacementPoints: </i>Points where a&#160;TopologySegment is attached to the component (e.g. a Bundle /&#160;Segment Connection Point of a Connector).        </li>       <li> <i>MeasurementPoints: </i>Significant points on the component on to which dimension can be defined (e.g. for QA purposes).        </li>     </ul>     <p> &#160;      </p>      <p> &#160;      </p>