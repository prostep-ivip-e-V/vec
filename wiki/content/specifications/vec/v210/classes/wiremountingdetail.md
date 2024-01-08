---
title: WireMountingDetail
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - WireMountingDetail
menu_name: vec-2.1.0
---
<p> With a WireMountingDetail it is possible to describe a detailed wire mounting.     </p>      <p> This is needed if the information which wire end is mounted onto which wire reception is important (e.g. coax contacts).      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | contacting |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|coreCrimpSize| [Size]({{< relref "size.md" >}}) | 0..1 | <p> Defines the required core crimp size&#160;(width&#160;&amp;&#160;height)&#160;of this specific wire mounting situation.      </p> | [WireMountingDetail]({{< relref "wiremountingdetail.md" >}}) |
|insulationCrimpSize| [Size]({{< relref "size.md" >}}) | 0..1 | <p> Defines the required insulation crimp size&#160;(width&#160;&amp;&#160;height)&#160;of this specific wire mounting situation.      </p> | [WireMountingDetail]({{< relref "wiremountingdetail.md" >}}) |
|wireTipProtrusion| [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Defines the valid length range in which the protrusion of the conductor from the conductor crimp must be located.      </p> | [WireMountingDetail]({{< relref "wiremountingdetail.md" >}}) |

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
        <td>referencedWireEnd</td>
        <td><a href="{{< relref "wireend.md" >}}">WireEnd</a></td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the WireEnds that are mounted to referenced WireReception. A cardinality of more than one is allowed in order support parallel connectors, where multiple wire ends are placed on one side of the connector (one wire reception) and the other wire ends are placed on the other side of the connector (the other wire reception).</td>
    </tr>
    <tr>
        <td>contactedWireReception</td>
        <td><a href="{{< relref "wirereceptionreference.md" >}}">WireReceptionReference</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the WireReception that is used for the WireMounting.</td>
    </tr>
    </tbody>
</table>

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
        <td>wireMountingDetail</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wiremounting.md" >}}">WireMounting</a></td>
        <td>1</td>
        <td><p> Specifies the WireMoutingDetails, if a detailed description of the relationships between WireEnds and WireReceptions is needed.      </p></td>
    </tr>
    </tbody>
</table>



