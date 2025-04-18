﻿---
title: Specified_connector_occurrence
toc: false
type: specs
date: "2020-06-25"
draft: false
specification: KBL
version: 2.5.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Specified_connector_occurrence
menu_name: kbl-2.5.sr1
---
<p>A Specified_connector_occurrence is the occurrence of a Connector_occurrence within an Assembly_part_occurrence.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Connector_occurrence]({{< relref "connector_occurrence.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 1 | <p>The id specifies the identifier of the Connector_occurrence.</p> | [Connector_occurrence]({{< relref "connector_occurrence.md" >}}) |
|Alias_id | [Alias_identification]({{< relref "alias_identification.md" >}}) | 0..* | <p>The alias_id specifies additional identifiers for the Connector_occurrence.</p> | [Connector_occurrence]({{< relref "connector_occurrence.md" >}}) |
|Description | [String]({{< relref "string.md" >}}) | 0..1 | <p>The description specifies additional information about the ob ject.</p> | [Connector_occurrence]({{< relref "connector_occurrence.md" >}}) |
|Localized_description | [Localized_string]({{< relref "localized_string.md" >}}) | 0..* | <p> The description specifies additional information about the object. The Localized_description provides the possibility to define descriptions for different language codes.       </p> | [Connector_occurrence]({{< relref "connector_occurrence.md" >}}) |
|Usage | [Connector_usage]({{< relref "connector_usage.md" >}}) | 0..1 | <p> The usage is defined for cases where only a &quot;virtual connector&quot; exists for reason of routing and connectivity.&#160;However, in the actual harness no connector exists (e.g. splices or danglers).       </p> | [Connector_occurrence]({{< relref "connector_occurrence.md" >}}) |
|Placement | [Transformation]({{< relref "transformation.md" >}}) | 0..1 | <p>The placement specifies the transformation information, which is used to locate and orient the occurrence in the car coordinate system. For further information see [CESAK].</p> | [Connector_occurrence]({{< relref "connector_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Assembly_part_occurrence]({{< relref "assembly_part_occurrence.md" >}}) | Related_assembly | 1..* | 0..* |  |
| [Connector_occurrence]({{< relref "connector_occurrence.md" >}}) | Related_occurrence | 1..* | 0..* |  |
