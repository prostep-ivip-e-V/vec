---
title: LocalGeometrySpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A <i>LocalGeometrySpecification </i>is responsible to create a relationship between the 3D model of a component (e.g. a connector, a cable duct or a fixing)&#160;and entities of the VEC. The 'Local' in the name refers to the fact that all definitions within this specification are 'local' to the 3D model of a specific component (a component in a library, not in a specific usage).      </p>      <p> Specifically it defines a transformation to transform the <i>BoundingBox</i> of a component into to coordinate system of the component and it defines the positions of <i>Placement-</i> and <i>MeasurementPoints</i> in this coordinate system.      </p>  </body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | local_geometry |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Coordinate Systems of Components]({{< relref "../description-of-components/coordinate-systems-of-components" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p></body></html> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) | cartesianPoint | 0..* | 0..1 | <html>   <head>     </head>   <body> All <i>CartesianPoint3Ds</i> that are used in this <i>LocalGeometrySpecification.</i> All <i>CartesianPoint3Ds</i> are defined in relation to the coordinate system of the component.</body> </html> |
| [Unit]({{< relref "unit.md" >}}) | baseUnit | 1 |  | <html>   <head>     </head>   <body> The <i>Unit</i> in which all coordinates (e.g. cartesian points)&#160;are defined. Shall be a unit of length&#160;(e.g. millimeter).</body> </html> |
| [LocalPosition]({{< relref "localposition.md" >}}) | positions | 0..* | 1 | <html>   <head>     </head>   <body> All position defined by this <i>LocalGeometrySpecification.</i></body> </html> |
| [Transformation3D]({{< relref "transformation3d.md" >}}) | boundingBoxPositioning | 0..1 | 0..1 | <html>   <head>     </head>   <body> The transformation that defines the positioning of the bounding box in coordinate system of the component.</body> </html> |
