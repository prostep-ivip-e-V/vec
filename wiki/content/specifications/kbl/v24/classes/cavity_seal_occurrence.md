---
title: Cavity_seal_occurrence
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Cavity_seal_occurrence
menu_name: kbl-2.4
---
<p>A Cavity_seal_occurrence is the occurrence of a Cavity_seal in a module. Note: The number of occurrences used in a specific module or harness can be calculated by the individual occurrences. Note: The usage of a Cavity_seal_occurrence for a particular Cavity is specified by the Part_usage object.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Changed_element]({{< relref "changed_element.md" >}})<br/> [Connection_or_occurrence]({{< relref "connection_or_occurrence.md" >}})<br/> [Part_usage_select]({{< relref "part_usage_select.md" >}})<br/> [Reference_element]({{< relref "reference_element.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [Specified_cavity_seal_occurrence]({{< relref "specified_cavity_seal_occurrence.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 0..1 | <p> The id specifies the identifier of the Cavity_seal_occurrence.      </p> | [Cavity_seal_occurrence]({{< relref "cavity_seal_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Installation_instruction]({{< relref "installation_instruction.md" >}}) | Installation_information | 0..* | 1 |  |
| [Cavity_seal]({{< relref "cavity_seal.md" >}}) | Part | 1 | 1..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Specified_cavity_seal_occurrence]({{< relref "specified_cavity_seal_occurrence.md" >}}) | 0..* | Related_occurrence | 1 |  |
