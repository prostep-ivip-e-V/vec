---
title: CavityMountingDetail
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - CavityMountingDetail
menu_name: vec-2.0.1
---
<p> With a CavityMountingDetail it is possible to describe a detailed cavity mounting.     </p>      <p> This is needed if the information which terminal reception is mounted into which cavity is important. There are cases where this information can be relevant (e.g. bridge contacts with an asymmetric wire mounting).      </p>

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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>terminalReceptionReference</td>
        <td><a href="{{< relref "terminalreceptionreference.md" >}}">TerminalReceptionReference</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the TerminalReception that is used for the detailed description of the cavity mounting.</td>
    </tr>
    <tr>
        <td>equippedCavityRef</td>
        <td><a href="{{< relref "cavityreference.md" >}}">CavityReference</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the cavity that is used for the detailed description of the cavity mounting.</td>
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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>cavityMountingDetail</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cavitymounting.md" >}}">CavityMounting</a></td>
        <td>1</td>
        <td><p> Specifies the CavityMoutingDetails, if a detailed description of the relationships between Cavities and TerminalReceptions is needed.      </p></td>
    </tr>
    </tbody>
</table>



