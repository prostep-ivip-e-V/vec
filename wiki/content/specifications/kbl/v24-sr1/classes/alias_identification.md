---
title: Alias_identification
toc: false
type: specs
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Alias_identification
menu_name: kbl-2.4.sr1
---
<p>Alternative Identifikation  An Alias_identification is a mechanism to associate an object with an additional identifier that is used to identify the object of interest in a different context, either in another Organization, or in some other context. The scope of the Alias_identification shall be specified by the attributes 'Scope' and/or by the attribute 'Description'.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 6_Foundation |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Alias_id | [String]({{< relref "string.md" >}}) | 1 | <p>The alias_id specifies the identifier used in the context specified by scope and description.</p> | [Alias_identification]({{< relref "alias_identification.md" >}}) |
|Scope | [String]({{< relref "string.md" >}}) | 0..1 | <p>The scope specifies the organization in which the Alias_identification is valid.</p> | [Alias_identification]({{< relref "alias_identification.md" >}}) |
|Description | [String]({{< relref "string.md" >}}) | 0..1 | <p>The description specifies the type of the Alias_identification. Example: The description may be, e.g., 'inventory number'.</p> | [Alias_identification]({{< relref "alias_identification.md" >}}) |
|Localized_description | [Localized_string]({{< relref "localized_string.md" >}}) | 0..* | <p> The description specifies additional information about the object. The Localized_description provides the possibility to define descriptions for different language codes.       </p> | [Alias_identification]({{< relref "alias_identification.md" >}}) |

