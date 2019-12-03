---
title: ItemHistoryEntry
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>An ItemHistroyEntry defines the direct relationship between ItemVersions in the terms of predecessor and successor. There are two possible types of relationships between ItemVersions, derivation and sequence. Derivation means for example for parts, that the successor version is a new part developed on the base of the predecessor version. Sequence means the successor version is an improvement of the predecessor version.  By the combination of more than one ItemHistoryEntry a linear sequence of ItemVersions can be represented.  </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pdm |
| **Applied Stereotype**  | [constant]({{< relref "constant.md" >}})<br/>  |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Item History]({{< relref "../pdm-information/item-history" >}})<br/> [VEC-Root]({{< relref "../xml-representation-of-the-model/vec-root" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|type | [HistoryEntryType]({{< relref "historyentrytype.md" >}}) | 1 | <html><body><p>Specifies the type of relationship between the ItemVersions. </p></body></html> | [ItemHistoryEntry]({{< relref "itemhistoryentry.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ItemVersion]({{< relref "itemversion.md" >}}) | predecessorVersion | 1 | 0..* | References the ItemVersion that is the predecessor in the ItemHistoryEntry.   |
| [ItemVersion]({{< relref "itemversion.md" >}}) | successorVersion | 1 | 0..* | References the ItemVersion that is the successor in the ItemHistoryEntry.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [VecContent]({{< relref "veccontent.md" >}}) | 1 | itemHistoryEntry | 0..* | Specifies the ItemVersionHistoryEntries for ItemVersions contained in the VEC-file.   |
