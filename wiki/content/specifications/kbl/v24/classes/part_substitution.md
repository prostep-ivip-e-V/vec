---
title: Part_substitution
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Part_substitution
menu_name: kbl-2.4
---
<p>Austauschbauteil  A Part_substitution is a mechanism that describes the replacement of a sealing plug with a terminal. Typically usage: an optional module is added to a harness and a common connector will be used.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Cavity_plug_occurrence]({{< relref "cavity_plug_occurrence.md" >}}) | Replaced | 1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Part_usage_select]({{< relref "part_usage_select.md" >}}) | 1 | Replacing | 0..* |  |
