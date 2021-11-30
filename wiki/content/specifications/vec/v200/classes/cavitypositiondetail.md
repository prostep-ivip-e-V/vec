---
title: CavityPositionDetail
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - CavityPositionDetail
menu_name: vec-2.0.0-rc1
---
<i>CavityPositionDetail</i> is an aggregator class for all geometric properties of a cavity within the connector (e.g. rotation, position).

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|rotation | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> The rotation of the cavity is defined as the angle between the primary locking of the cavity and the Y-axis of the connector housing coordinate system.      </p> | [CavityPositionDetail]({{< relref "cavitypositiondetail.md" >}}) |
|cavitySealingOffset | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Defines the offset (length) by which the starting point of the sealing area is displaced <i>insertionPosition </i>in insertion direction. | [CavityPositionDetail]({{< relref "cavitypositiondetail.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CartesianVector3D]({{< relref "cartesianvector3d.md" >}}) | insertionVector | 0..1 |  | The direction in which a terminal is inserted from the <i>InsertionPosition</i> into the connector. The amount of the vector defines the length auf the cavity&#160;(The distance the terminal must travel from the <i>InsertionPostion </i>to its final position. |
| [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) | insertionPosition | 0..1 | 1 | <p> The position of the center of the cavity in the entrance surface of the connector during the insertion process.      </p> |
| [Unit]({{< relref "unit.md" >}}) | baseUnit | 1 | 0..* | <p> The <i>Unit</i> in which all coordinates (e.g. cartesian points) of this <i>CavityPositionDetail&#160;</i>are defined. Shall be a unit of length&#160;(e.g. millimetre).      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Cavity]({{< relref "cavity.md" >}}) | 1 | positionDetail | 0..1 | Optional details for geometric properties of the cavity in the connector. |
