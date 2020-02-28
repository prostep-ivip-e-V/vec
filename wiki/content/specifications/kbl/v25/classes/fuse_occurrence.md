---
title: Fuse_occurrence
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Fuse_occurrence
menu_name: kbl-2.5
---


## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Component_occurrence]({{< relref "component_occurrence.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 1 | <p>The id specifies the identifier of the Component.</p> | [Component_occurrence]({{< relref "component_occurrence.md" >}}) |
|Alias_id | [Alias_identification]({{< relref "alias_identification.md" >}}) | 0..* | <p>The alias_id specifies additional identifiers for the Component.</p> | [Component_occurrence]({{< relref "component_occurrence.md" >}}) |
|Description | [String]({{< relref "string.md" >}}) | 0..1 | <p>The description specifies additional information about the object.</p> | [Component_occurrence]({{< relref "component_occurrence.md" >}}) |
|Localized_description | [Localized_string]({{< relref "localized_string.md" >}}) | 0..* | <p> The description specifies additional information about the object. The Localized_description provides the possibility to define descriptions for different language codes.       </p> | [Component_occurrence]({{< relref "component_occurrence.md" >}}) |
|Designed_operating_current | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p> The designed operating current is calculated /&#160;specified by the consumers available in the network.      </p> | [Fuse_occurrence]({{< relref "fuse_occurrence.md" >}}) |
|Maximum_operating_current | [Numerical_value]({{< relref "numerical_value.md" >}}) | 0..1 | <p> The maximum operating current is calculated /&#160;specified by the weakest used wires.      </p> | [Fuse_occurrence]({{< relref "fuse_occurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Consumers]({{< relref "consumers.md" >}}) | attachedConsumers | 0..* | 1 |  |
