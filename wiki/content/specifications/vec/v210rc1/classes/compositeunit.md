---
title: CompositeUnit
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - CompositeUnit
menu_name: vec-2.1.0
---
<p> Defines a unit as a composition of other units. The composition is done by multiplying the different other units. By this way combined units like kg/m can be formed.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Unit]({{< relref "unit.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|exponent| [Integer]({{< relref "integer.md" >}}) | 0..1 | <p> Defines the exponent with which this unit instance should be used. In order to define square meters for example, the SIUnit &quot;metre&quot; with an exponent of 2 will be used. If no exponent is defined it is equivalent to the value 1.      </p> | [Unit]({{< relref "unit.md" >}}) |
|unEceCode| [String]({{< relref "string.md" >}}) | 0..1 | <p> The UNECE&#160;provides a list of &quot;<a href="https://unece.org/trade/cefact/UNLOCODE-Download">Codes for Units of Measurement used in the International Trade</a>&quot;. This attribute shall be used for traceability of&#160;<i>Units </i>defined in the VEC&#160;into the UNECE&#160;system only. It provides <u>additional</u> meta information about the unit, but shall not be used as the only definition of a <i>Unit.</i> Specifying a UNECE code does not exempt the creating system from generating a correct VEC mapping of the corresponding unit. In case of doubt, the VEC&#160;mapping has priority.      </p> | [Unit]({{< relref "unit.md" >}}) |

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
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>factors</td>
        <td><a href="{{< relref "unit.md" >}}">Unit</a></td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td><p> References the <i>Units</i> that are used as factors to create the <i>CompositeUnit.</i>      </p></td>
    </tr>
    </tbody>
</table>




