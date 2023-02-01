---
title: LocalGeometrySpecification
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - LocalGeometrySpecification
menu_name: vec-2.0.1
---
<p> A <i>LocalGeometrySpecification </i>is responsible to create a relationship between the 3D model of a component (e.g. a connector, a cable duct or a fixing)&#160;and entities of the VEC. The 'Local' in the name refers to the fact that all definitions within this specification are 'local' to the 3D model of a specific component (a component in a library, not in a specific usage).      </p>      <p> Specifically, it defines a transformation to transform the <i>BoundingBox</i> of a component into to coordinate system of the component and it defines the positions of <i>Placement-</i> and <i>MeasurementPoints</i> in this coordinate system.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | local_geometry |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType| [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |

## Outgoing Relations
<table>
    <thead>
        <tr>
           <th colspan="6">Other End</th>
           <th colspan="1">This End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>cartesianPoint</td>
        <td><a href="{{< relref "cartesianpoint3d.md" >}}">CartesianPoint3D</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td><p> All <i>CartesianPoint3Ds</i> that are used in this <i>LocalGeometrySpecification.</i> All <i>CartesianPoint3Ds</i> are defined in relation to the coordinate system of the component.      </p></td>
    </tr>
    <tr>
        <td>boundingBoxPositioning</td>
        <td><a href="{{< relref "transformation3d.md" >}}">Transformation3D</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td><p> The transformation that defines the positioning of the bounding box in coordinate system of the component.      </p></td>
    </tr>
    <tr>
        <td>baseUnit</td>
        <td><a href="{{< relref "unit.md" >}}">Unit</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td><p> The <i>Unit</i> in which all coordinates (e.g. cartesian points)&#160;are defined. Shall be a unit of length&#160;(e.g. millimetre).      </p></td>
    </tr>
    <tr>
        <td>positions</td>
        <td><a href="{{< relref "localposition.md" >}}">LocalPosition</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> All position defined by this <i>LocalGeometrySpecification.</i>      </p></td>
    </tr>
    </tbody>
</table>




