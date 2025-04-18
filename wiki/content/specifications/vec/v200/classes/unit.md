﻿---
title: Unit
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - Unit
menu_name: vec-2.0.0
---
<p>A precisely specified quantity in terms of which the magnitudes of other quantities of the same kind can be stated. The different systems to define units are represented by the subclasses of this class (e.g. SIUnit, ImperialUnit). </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  | [constant]({{< relref "constant.md" >}})<br/>  |
| **Base Classifier**     |   |
| **Is Abstract**         | true |
| **Derived Classifiers** | [CompositeUnit]({{< relref "compositeunit.md" >}}), [CustomUnit]({{< relref "customunit.md" >}}), [IECUnit]({{< relref "iecunit.md" >}}), [ImperialUnit]({{< relref "imperialunit.md" >}}), [OtherUnit]({{< relref "otherunit.md" >}}), [SIUnit]({{< relref "siunit.md" >}}), [USUnit]({{< relref "usunit.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|exponent | [Integer]({{< relref "integer.md" >}}) | 0..1 | <p> Defines the exponent with which this unit instance should be used. In order to define square meters for example, the SIUnit &quot;metre&quot; with an exponent of 2 will be used. If no exponent is defined it is equivalent to the value 1.      </p> | [Unit]({{< relref "unit.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CavityPositionDetail]({{< relref "cavitypositiondetail.md" >}}) | 0..* | baseUnit | 1 | <p> The <i>Unit</i> in which all coordinates (e.g. cartesian points) of this <i>CavityPositionDetail&#160;</i>are defined. Shall be a unit of length&#160;(e.g. millimetre).      </p> |
| [LocalGeometrySpecification]({{< relref "localgeometryspecification.md" >}}) |  | baseUnit | 1 | <p> The <i>Unit</i> in which all coordinates (e.g. cartesian points)&#160;are defined. Shall be a unit of length&#160;(e.g. millimetre).      </p> |
| [BuildingBlockSpecification2D]({{< relref "buildingblockspecification2d.md" >}}) | 0..* | baseUnit | 1 |  |
| [BuildingBlockSpecification3D]({{< relref "buildingblockspecification3d.md" >}}) | 0..* | baseUnit | 1 |  |
| [CompositeUnit]({{< relref "compositeunit.md" >}}) |  | factors | 1..* | <p> References the <i>Units</i> that are used as factors to create the <i>CompositeUnit.</i>      </p> |
| [VecContent]({{< relref "veccontent.md" >}}) | 1 | unit | 0..* | Specifies the Units used in the VEC-file. |
| [ValueWithUnit]({{< relref "valuewithunit.md" >}}) | 0..* | unitComponent | 1 | References the unit of the value. |
| [Dimension]({{< relref "dimension.md" >}}) | 0..* | unitComponent | 1 |  |
