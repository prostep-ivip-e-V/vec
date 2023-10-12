---
title: SpliceTerminalRole
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - SpliceTerminalRole
menu_name: vec-2.1.0
---
<p>A SpliceTerminalRole defines the instance specific properties and relationships of a splice terminal. </p>

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
|spliceType| [SpliceType]({{< relref "splicetype.md" >}}) | 0..1 | <p>Specifies the type of splice (inline, end).  </p> | [SpliceTerminalRole]({{< relref "spliceterminalrole.md" >}}) |
|insulationState| [InsulationState]({{< relref "insulationstate.md" >}}) | 0..1 | <p>Specifies the insulation state of the splice, in other words is electrically insulated or not.  </p> | [SpliceTerminalRole]({{< relref "spliceterminalrole.md" >}}) |





