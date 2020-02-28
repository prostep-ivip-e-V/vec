---
title: Accessory_occurrence
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Accessory_occurrence
menu_name: kbl-2.3.sr1
---
<p>An Accessory_occurrence is the occurrence of an Accessory in a module part list.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Connection_or_occurrence]({{< relref "connection_or_occurrence.md" >}})<br/> [Fixed_component]({{< relref "fixed_component.md" >}})<br/> [Located_component]({{< relref "located_component.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [Specified_accessory_occurrence]({{< relref "specified_accessory_occurrence.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 1 | <p>The id specifies the identifier of the Accessory_occurrence.</p> | [Accessory_occurrence]({{< relref "accessory_occurrence.md" >}}) |
|Alias_id | [Alias_identification]({{< relref "alias_identification.md" >}}) | 0..* | <p>The alias_id specifies additional identifiers for the Accessory _occurrence.</p> | [Accessory_occurrence]({{< relref "accessory_occurrence.md" >}}) |
|Description | [String]({{< relref "string.md" >}}) | 0..1 | <p>The description specifies additional information about the object.</p> | [Accessory_occurrence]({{< relref "accessory_occurrence.md" >}}) |
|Placement | [Transformation]({{< relref "transformation.md" >}}) | 0..1 | <p>The placement specifies the transformation information, which is used to locate and orient the occurrence in the car coordinate system. For further information see [CESAK].</p> | [Accessory_occurrence]({{< relref "accessory_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Connector_occurrence]({{< relref "connector_occurrence.md" >}}) | Reference_element | 0..* | 0..* |  |
| [Installation_instruction]({{< relref "installation_instruction.md" >}}) | Installation_information | 0..* | 1 |  |
| [Accessory]({{< relref "accessory.md" >}}) | Part | 1 | 1..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Specified_accessory_occurrence]({{< relref "specified_accessory_occurrence.md" >}}) | 0..* | Related_occurrence | 1 |  |
