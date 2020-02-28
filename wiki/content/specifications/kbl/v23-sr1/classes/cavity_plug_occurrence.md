---
title: Cavity_plug_occurrence
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Cavity_plug_occurrence
menu_name: kbl-2.3.sr1
---
<p>A Cavity_plug_occurrence is the occurrence of a Cavity_plug in a module part list. Note: Cavity_plugs do not show up in a module bill of material.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Connection_or_occurrence]({{< relref "connection_or_occurrence.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [Specified_cavity_plug_occurrence]({{< relref "specified_cavity_plug_occurrence.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Cavity_plug]({{< relref "cavity_plug.md" >}}) | Part | 1 | 1..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Cavity_occurrence]({{< relref "cavity_occurrence.md" >}}) | 1..* | Associated_plug  | 0..1 |  |
| [Specified_cavity_plug_occurrence]({{< relref "specified_cavity_plug_occurrence.md" >}}) | 0..* | Related_occurrence | 1 |  |
| [Part_substitution]({{< relref "part_substitution.md" >}}) | 0..* | Replaced | 1 |  |
