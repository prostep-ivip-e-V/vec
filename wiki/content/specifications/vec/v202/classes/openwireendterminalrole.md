---
title: OpenWireEndTerminalRole
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - OpenWireEndTerminalRole
menu_name: vec-2.0.2
---
<p> An OpenWireEndTerminalRole defines the instance specific properties and relationships of an open wire end.      </p>

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





