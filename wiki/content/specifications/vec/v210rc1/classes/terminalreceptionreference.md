---
title: TerminalReceptionReference
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalReceptionReference
menu_name: vec-2.1.0
---
<p> A <i>TerminalReceptionReference</i> is an instance of a <i>TerminalReception</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique <i>identification</i> of the <i>TerminalReceptionReference</i>. The <i>identification</i> is guaranteed to be unique within the <i>TerminalRole</i> (this might be for example a reception number).      </p> | [TerminalReceptionReference]({{< relref "terminalreceptionreference.md" >}}) |

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
        <td>terminalReception</td>
        <td><a href="{{< relref "terminalreception.md" >}}">TerminalReception</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>TerminalReception</i> that is instanced by this <i>TerminalReceptionReference.</i>      </p></td>
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
        <td>firstTerminalReception</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "matingdetail.md" >}}">MatingDetail</a></td>
        <td>0..*</td>
        <td>References the first terminal reception that is mated.</td>
    </tr>
    <tr>
        <td>secondTerminalReception</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "matingdetail.md" >}}">MatingDetail</a></td>
        <td>0..*</td>
        <td>References the second terminal reception that is mated.</td>
    </tr>
    <tr>
        <td>terminalReceptionReference</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cavitymountingdetail.md" >}}">CavityMountingDetail</a></td>
        <td>0..*</td>
        <td>References the TerminalReception that is used for the detailed description of the cavity mounting.</td>
    </tr>
    <tr>
        <td>terminalReceptionReference</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "terminalrole.md" >}}">TerminalRole</a></td>
        <td>1</td>
        <td><p> Specifies the <i>TerminalReceptionReferences </i>of this <i>TerminalRole.</i>      </p></td>
    </tr>
    </tbody>
</table>



