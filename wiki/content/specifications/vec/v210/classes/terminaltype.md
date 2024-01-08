---
title: TerminalType
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalType
menu_name: vec-2.1.0
---
<p> Defines the type (system) of a terminal. The type is specified by a combination of a name for the system and an optional nominalSize.     </p>      <p> In some processes the terminal type is referred as cavity system, because the system of cavities, terminals, seals, plugs and other cavity accessories must match&#160;/&#160;be compatible.     </p>      <p> However, since a terminal has only one since type and a cavity can be compatible to more than one it is named <i>TerminalType</i> in the VEC.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|name| [String]({{< relref "string.md" >}}) | 1 | <p>Specifies the type of the cavity (e.g. MQS, DFK, ...). </p> | [TerminalType]({{< relref "terminaltype.md" >}}) |
|nominalSize| [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the nominal size of terminals that fit into the cavity. (e.g. 2x4).  </p> | [TerminalType]({{< relref "terminaltype.md" >}}) |


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
        <td>terminalType</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "terminalreceptionspecification.md" >}}">TerminalReceptionSpecification</a></td>
        <td>0..1</td>
        <td><p> Specifies the terminal type that is associated with the terminal reception.      </p></td>
    </tr>
    </tbody>
</table>



