---
title: Component_occurrence
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Component_occurrence
menu_name: kbl-2.3.sr1
---
<p>A Component_occurrence is the occurrence of a Component in a module part list.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Connection_or_occurrence]({{< relref "connection_or_occurrence.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [Specified_component_occurrence]({{< relref "specified_component_occurrence.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 1 | <p>The id specifies the identifier of the Component.</p> | [Component_occurrence]({{< relref "component_occurrence.md" >}}) |
|Alias_id | [Alias_identification]({{< relref "alias_identification.md" >}}) | 0..* | <p>The alias_id specifies additional identifiers for the Component.</p> | [Component_occurrence]({{< relref "component_occurrence.md" >}}) |
|Description | [String]({{< relref "string.md" >}}) | 0..1 | <p>The description specifies additional information about the object.</p> | [Component_occurrence]({{< relref "component_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Mounting_element]({{< relref "mounting_element.md" >}}) | Mounting | 1..* | 0..* |  |
| [Component]({{< relref "component.md" >}}) | Part | 1 | 1..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Specified_component_occurrence]({{< relref "specified_component_occurrence.md" >}}) | 0..* | Related_occurrence | 1 |  |
