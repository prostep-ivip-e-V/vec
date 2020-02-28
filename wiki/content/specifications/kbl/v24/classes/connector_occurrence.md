---
title: Connector_occurrence
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Connector_occurrence
menu_name: kbl-2.4
---
<p>Steckverbinder  A Connector_occurrence is the occurrence of a Connector_housing in a module part list.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Changed_element]({{< relref "changed_element.md" >}})<br/> [Connection_or_occurrence]({{< relref "connection_or_occurrence.md" >}})<br/> [Located_component]({{< relref "located_component.md" >}})<br/> [Mounting_element]({{< relref "mounting_element.md" >}})<br/> [Reference_element]({{< relref "reference_element.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [Specified_connector_occurrence]({{< relref "specified_connector_occurrence.md" >}}) |

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
| [Contact_point]({{< relref "contact_point.md" >}}) | Contact_points | 0..* | 1 |  |
| [Installation_instruction]({{< relref "installation_instruction.md" >}}) | Installation_information | 0..* | 1 |  |
| [Slot_occurrence]({{< relref "slot_occurrence.md" >}}) | Slots | 0..* | 1 |  |
| [Reference_element]({{< relref "reference_element.md" >}}) | Reference_element | 0..* | 0..* |  |
| [Connector_housing]({{< relref "connector_housing.md" >}}) | Part | 1 | 1..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Specified_connector_occurrence]({{< relref "specified_connector_occurrence.md" >}}) | 0..* | Related_occurrence | 1 |  |
