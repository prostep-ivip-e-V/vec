---
title: WireReceptionReference
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - WireReceptionReference
menu_name: vec-2.0.2
---
<p> A <i>WireReceptionReference</i> is an instance of a <i>WireReception</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique <i>identification</i> of the <i>WireReceptionReference</i>. The <i>identification</i> is guaranteed to be unique within the <i>TerminalRole</i> (this might be for example a reception number).      </p> | [WireReceptionReference]({{< relref "wirereceptionreference.md" >}}) |

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
        <td>wireReception</td>
        <td><a href="{{< relref "wirereception.md" >}}">WireReception</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>WireReception</i> that is instanced by this <i>WireReceptionReference.</i>      </p></td>
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
        <td>contactedWireReception</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wiremountingdetail.md" >}}">WireMountingDetail</a></td>
        <td>0..*</td>
        <td>References the WireReception that is used for the WireMounting.</td>
    </tr>
    <tr>
        <td>wireReceptionReference</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "terminalrole.md" >}}">TerminalRole</a></td>
        <td>1</td>
        <td><p> Specifies the <i>WireReceptionReferences </i>of this <i>TerminalRole.</i>      </p></td>
    </tr>
    </tbody>
</table>



