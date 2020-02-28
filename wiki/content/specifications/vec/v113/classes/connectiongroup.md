---
title: ConnectionGroup
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - ConnectionGroup
menu_name: vec-1.1.3
---
<p> A ConnectionGroup references two or more Connections expressing that the physical realization of the referenced Connection shall be somehow grouped e.g. twisted. For complex structures a ConnectionGroup can specify subgroups.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | schematic |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the ConnectionGroup. The identification is guaranteed to be unique within the ConnectionSpecification.      </p> | [ConnectionGroup]({{< relref "connectiongroup.md" >}}) |
|connectionGroupType | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies the type of the connectionGroup (e.g. twisted).      </p> | [ConnectionGroup]({{< relref "connectiongroup.md" >}}) |
|installationInstruction | [Instruction]({{< relref "instruction.md" >}}) | 0..* | <p>Specifies additional InstallationInstructions for the ConnectionGroup.  </p> | [ConnectionGroup]({{< relref "connectiongroup.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the ConnectionGroup. </p> | [ConnectionGroup]({{< relref "connectiongroup.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Connection]({{< relref "connection.md" >}}) | connection | 2..* | 0..* | References the Connections that are grouped by the ConnectionGroup. |
| [NetGroup]({{< relref "netgroup.md" >}}) | netGroup | 0..1 | 0..* | References the NetworkGroup that is realized by the ComponentGroup. |
| [ConnectionGroup]({{< relref "connectiongroup.md" >}}) | subGroup | 0..* | 0..1 | Specifies the ConnectionGroups that are a subgroup of this ConnectionGroup. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ConnectionSpecification]({{< relref "connectionspecification.md" >}}) | 0..1 | connectionGroup | 0..* | Specifies the ConnectionGroup defined by the ConnectionSpecification. |
| [ConnectionGroup]({{< relref "connectiongroup.md" >}}) | 0..1 | subGroup | 0..* | Specifies the ConnectionGroups that are a subgroup of this ConnectionGroup. |
