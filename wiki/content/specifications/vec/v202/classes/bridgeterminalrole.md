---
title: BridgeTerminalRole
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - BridgeTerminalRole
menu_name: vec-2.0.2
---
<p> A <i>BridgeTerminalRole</i> defines the instance specific properties and relationships of a bridge terminal (see BridgeTerminalSpecification).      </p>      <p> A bridge terminal is a part that behaves like terminal but has no <i>WireReceptions.</i> It is used to create short circuit between different pins in a connector. In its use, it can realize a schematic connection on its own and independently of other components.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [TerminalRole]({{< relref "terminalrole.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |
|sealState| [SealState]({{< relref "sealstate.md" >}}) | 0..1 | <p>Specifies if this instance of a terminal should be sealed (waterproof). This applies for example to SpliceTerminals.  </p> | [TerminalRole]({{< relref "terminalrole.md" >}}) |

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
        <td>connection</td>
        <td><a href="{{< relref "connection.md" >}}">Connection</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>Connection</i> that is realized by this <i>BridgeTerminalRole.</i>      </p></td>
    </tr>
    </tbody>
</table>




