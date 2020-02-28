---
title: ItemHistoryEntry
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - ItemHistoryEntry
menu_name: vec-1.1.3
---
<p>An ItemHistroyEntry defines the direct relationship between ItemVersions in the terms of predecessor and successor. There are two possible types of relationships between ItemVersions, derivation and sequence. Derivation means for example for parts, that the successor version is a new part developed on the base of the predecessor version. Sequence means the successor version is an improvement of the predecessor version.  By the combination of more than one ItemHistoryEntry a linear sequence of ItemVersions can be represented.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pdm |
| **Applied Stereotype**  | [constant]({{< relref "constant.md" >}})<br/>  |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|type | [HistoryEntryType]({{< relref "historyentrytype.md" >}}) | 1 | <p>Specifies the type of relationship between the ItemVersions. </p> | [ItemHistoryEntry]({{< relref "itemhistoryentry.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ItemVersion]({{< relref "itemversion.md" >}}) | predecessorVersion | 1 | 0..* | References the ItemVersion that is the predecessor in the ItemHistoryEntry. |
| [ItemVersion]({{< relref "itemversion.md" >}}) | successorVersion | 1 | 0..* | References the ItemVersion that is the successor in the ItemHistoryEntry. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [VecContent]({{< relref "veccontent.md" >}}) | 1 | itemHistoryEntry | 0..* | Specifies the ItemVersionHistoryEntries for ItemVersions contained in the VEC-file. |
