---
title: Cavity_plug_occurrence
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Cavity_plug_occurrence
menu_name: kbl-2.5
---
<p>A Cavity_plug_occurrence is the occurrence of a Cavity_plug in a module part list. Note: Cavity_plugs do not show up in a module bill of material.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Changed_element]({{< relref "changed_element.md" >}})<br/> [Connection_or_occurrence]({{< relref "connection_or_occurrence.md" >}})<br/> [Reference_element]({{< relref "reference_element.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [Specified_cavity_plug_occurrence]({{< relref "specified_cavity_plug_occurrence.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 0..1 | <p> The id specifies the identifier of the Cavity_plug_occurrence.      </p> | [Cavity_plug_occurrence]({{< relref "cavity_plug_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Cavity_plug]({{< relref "cavity_plug.md" >}}) | Part | 1 | 1..* |  |
| [Installation_instruction]({{< relref "installation_instruction.md" >}}) | Installation_information | 0..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Cavity_occurrence]({{< relref "cavity_occurrence.md" >}}) | 1..* | Associated_plug  | 0..1 |  |
| [Specified_cavity_plug_occurrence]({{< relref "specified_cavity_plug_occurrence.md" >}}) | 0..* | Related_occurrence | 1..* |  |
| [Part_substitution]({{< relref "part_substitution.md" >}}) | 0..* | Replaced | 1 |  |
