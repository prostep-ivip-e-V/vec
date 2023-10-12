---
title: WireMounting
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - WireMounting
menu_name: vec-2.1.0
---
<p> A <i>WireMounting</i> defines the mounting of a wire end to terminal. If the contacting is required to be waterproof a cavity seal can be mounted additionally.      </p>

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
        <td>wireEndAccessory</td>
        <td><a href="{{< relref "wireendaccessoryrole.md" >}}">WireEndAccessoryRole</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>referencedWireEnd</td>
        <td><a href="{{< relref "wireend.md" >}}">WireEnd</a></td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the wire ends that are used for the wire mounting. The minimum cardinality is one, because a wire mounting without wire end makes no sense.     </p>      <p> The maximum cardinality is * in order to support multi crimps.      </p></td>
    </tr>
    <tr>
        <td>mountedCavitySeal</td>
        <td><a href="{{< relref "cavitysealrole.md" >}}">CavitySealRole</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the cavity seal that is used for the wire mounting.      </p></td>
    </tr>
    <tr>
        <td>wireMountingDetail</td>
        <td><a href="{{< relref "wiremountingdetail.md" >}}">WireMountingDetail</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Specifies the WireMoutingDetails, if a detailed description of the relationships between WireEnds and WireReceptions is needed.      </p></td>
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
        <td>wireMounting</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "contactpoint.md" >}}">ContactPoint</a></td>
        <td>1</td>
        <td>Specifies the WireMouting defined by ContactPoint. More than one WireMounting is allowed in order to support variance. In concrete configuration the WireMounting with all referenced elements present is used.</td>
    </tr>
    </tbody>
</table>



