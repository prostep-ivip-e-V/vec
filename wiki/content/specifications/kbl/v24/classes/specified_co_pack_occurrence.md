﻿---
title: Specified_co_pack_occurrence
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Specified_co_pack_occurrence
menu_name: kbl-2.4
---
<p>A Specified_ co_pack _occurrence is the occurrence of a Co_pack_occurrence within an Assembly_part_occurrence.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Co_pack_occurrence]({{< relref "co_pack_occurrence.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 1 | <p>The id specifies the identifier of the Co_pack_occurrence.</p> | [Co_pack_occurrence]({{< relref "co_pack_occurrence.md" >}}) |
|Alias_id | [Alias_identification]({{< relref "alias_identification.md" >}}) | 0..* | <p>The alias_id specifies additional identifiers for the Co_pack _occurrence.</p> | [Co_pack_occurrence]({{< relref "co_pack_occurrence.md" >}}) |
|Description | [String]({{< relref "string.md" >}}) | 0..1 | <p>The description specifies additional information about the ob ject.</p> | [Co_pack_occurrence]({{< relref "co_pack_occurrence.md" >}}) |
|Localized_description | [Localized_string]({{< relref "localized_string.md" >}}) | 0..* | <p> The description specifies additional information about the object. The Localized_description provides the possibility to define descriptions for different language codes.       </p> | [Co_pack_occurrence]({{< relref "co_pack_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Assembly_part_occurrence]({{< relref "assembly_part_occurrence.md" >}}) | Related_assembly | 1 | 0..* |  |
| [Co_pack_occurrence]({{< relref "co_pack_occurrence.md" >}}) | Related_occurrence | 1 | 0..* |  |
