---
title: ItemHistoryEntry
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - ItemHistoryEntry
menu_name: vec-2.0.2
---
<p>An ItemHistroyEntry defines the direct relationship between ItemVersions in the terms of predecessor and successor. There are two possible types of relationships between ItemVersions, derivation and sequence. Derivation means for example for parts, that the successor version is a new part developed on the base of the predecessor version. Sequence means the successor version is an improvement of the predecessor version.  By the combination of more than one ItemHistoryEntry a linear sequence of ItemVersions can be represented.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pdm |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|type| [HistoryEntryType]({{< relref "historyentrytype.md" >}}) | 1 | <p>Specifies the type of relationship between the ItemVersions. </p> | [ItemHistoryEntry]({{< relref "itemhistoryentry.md" >}}) |

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
        <td>successorVersion</td>
        <td><a href="{{< relref "itemversion.md" >}}">ItemVersion</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the ItemVersion that is the successor in the ItemHistoryEntry.</td>
    </tr>
    <tr>
        <td>predecessorVersion</td>
        <td><a href="{{< relref "itemversion.md" >}}">ItemVersion</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the ItemVersion that is the predecessor in the ItemHistoryEntry.</td>
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
        <td>itemHistoryEntry</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "veccontent.md" >}}">VecContent</a></td>
        <td>1</td>
        <td>Specifies the ItemVersionHistoryEntries for ItemVersions contained in the VEC-file.</td>
    </tr>
    </tbody>
</table>



