---
title: Part_usage_select
toc: false
type: specs
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Part_usage_select
menu_name: kbl-2.4.sr1
---
<p>A Part_usage is an object which replaces a Cavity_occurrence.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  | [Selector]({{< relref "selector.md" >}})<br/>  |
| **Base Classifier**     |   |
| **Is Abstract**         | true |
| **Derived Classifiers** | [Cavity_seal_occurrence]({{< relref "cavity_seal_occurrence.md" >}}), [Special_terminal_occurrence]({{< relref "special_terminal_occurrence.md" >}}), [Terminal_occurrence]({{< relref "terminal_occurrence.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Part_substitution]({{< relref "part_substitution.md" >}}) | Replacing | 0..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Contact_point]({{< relref "contact_point.md" >}}) | 1..* | Associated_parts | 0..* |  |
