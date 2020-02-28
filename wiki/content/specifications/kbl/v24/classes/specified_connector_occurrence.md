---
title: Specified_connector_occurrence
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Specified_connector_occurrence
menu_name: kbl-2.4
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
|Usage | [Connector_usage]({{< relref "connector_usage.md" >}}) | 0..1 | <p>The usage specifies the way how a Connector_occurrence is used in a connection. Where applicable the following values shall be used:  - 'no end': end of wire without any connector ("blunt cut") - 'ring terminal': - 'splice': - 'dangler': terminal without any connector housing.</p> | [Connector_occurrence]({{< relref "connector_occurrence.md" >}}) |
|Placement | [Transformation]({{< relref "transformation.md" >}}) | 0..1 | <p>The placement specifies the transformation information, which is used to locate and orient the occurrence in the car coordinate system. For further information see [CESAK].</p> | [Connector_occurrence]({{< relref "connector_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Connector_occurrence]({{< relref "connector_occurrence.md" >}}) | Related_occurrence | 1 | 0..* |  |
| [Assembly_part_occurrence]({{< relref "assembly_part_occurrence.md" >}}) | Related_assembly | 1 | 0..* |  |
