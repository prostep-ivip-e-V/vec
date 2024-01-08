---
title: Unit
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - Unit
menu_name: vec-2.1.0
---
<p>A precisely specified quantity in terms of which the magnitudes of other quantities of the same kind can be stated. The different systems to define units are represented by the subclasses of this class (e.g. SIUnit, ImperialUnit). </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | true |
| **Derived Classifiers** | [CompositeUnit]({{< relref "compositeunit.md" >}}), [CustomUnit]({{< relref "customunit.md" >}}), [IECUnit]({{< relref "iecunit.md" >}}), [ImperialUnit]({{< relref "imperialunit.md" >}}), [OtherUnit]({{< relref "otherunit.md" >}}), [SIUnit]({{< relref "siunit.md" >}}), [USUnit]({{< relref "usunit.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|exponent| [Integer]({{< relref "integer.md" >}}) | 0..1 | <p> Defines the exponent with which this unit instance should be used. In order to define square meters for example, the SIUnit &quot;metre&quot; with an exponent of 2 will be used. If no exponent is defined it is equivalent to the value 1.      </p> | [Unit]({{< relref "unit.md" >}}) |
|unEceCode| [String]({{< relref "string.md" >}}) | 0..1 | <p> The UNECE&#160;provides a list of &quot;<a href="https://unece.org/trade/cefact/UNLOCODE-Download">Codes for Units of Measurement used in the International Trade</a>&quot;. This attribute shall be used for traceability of&#160;<i>Units </i>defined in the VEC&#160;into the UNECE&#160;system only. It provides <u>additional</u> meta information about the unit, but shall not be used as the only definition of a <i>Unit.</i> Specifying a UNECE code does not exempt the creating system from generating a correct VEC mapping of the corresponding unit. In case of doubt, the VEC&#160;mapping has priority.      </p> | [Unit]({{< relref "unit.md" >}}) |


##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>baseUnit</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "localgeometryspecification.md" >}}">LocalGeometrySpecification</a></td>
        <td></td>
        <td><p> The <i>Unit</i> in which all coordinates (e.g. cartesian points)&#160;are defined. Shall be a unit of length&#160;(e.g. millimetre).      </p></td>
    </tr>
    <tr>
        <td>baseUnit</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "buildingblockspecification2d.md" >}}">BuildingBlockSpecification2D</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>baseUnit</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "buildingblockspecification3d.md" >}}">BuildingBlockSpecification3D</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>baseUnit</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cavitypositiondetail.md" >}}">CavityPositionDetail</a></td>
        <td>0..*</td>
        <td><p> The <i>Unit</i> in which all coordinates (e.g. cartesian points) of this <i>CavityPositionDetail&#160;</i>are defined. Shall be a unit of length&#160;(e.g. millimetre).      </p></td>
    </tr>
    <tr>
        <td>factors</td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "compositeunit.md" >}}">CompositeUnit</a></td>
        <td></td>
        <td><p> References the <i>Units</i> that are used as factors to create the <i>CompositeUnit.</i>      </p></td>
    </tr>
    <tr>
        <td>unit</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "veccontent.md" >}}">VecContent</a></td>
        <td>1</td>
        <td>Specifies the Units used in the VEC-file.</td>
    </tr>
    <tr>
        <td>unitComponent</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "valuewithunit.md" >}}">ValueWithUnit</a></td>
        <td>0..*</td>
        <td>References the unit of the value.</td>
    </tr>
    <tr>
        <td>unitComponent</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "dimension.md" >}}">Dimension</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    </tbody>
</table>



