---
title: Module_family
toc: false
type: specs
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Module_family
menu_name: kbl-2.4.sr1
---
<p>Funktionsfamilie  Description of a set of modules.  A Module_family is a mechanism to group mutually exclusive modules. EXAMPLE "audio equipment"</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 1_Harness |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 1 | <p>The id specifies the identifier of the Module_family.</p> | [Module_family]({{< relref "module_family.md" >}}) |
|Description | [String]({{< relref "string.md" >}}) | 0..1 | <p>The description specifies additional information about the Module_family.</p> | [Module_family]({{< relref "module_family.md" >}}) |
|Localized_description | [Localized_string]({{< relref "localized_string.md" >}}) | 0..* | <p> The description specifies additional information about the object. The Localized_description provides the possibility to define descriptions for different language codes.       </p> | [Module_family]({{< relref "module_family.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 0..1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Harness]({{< relref "harness.md" >}}) | 1 | Module_families | 0..* |  |
| [Module]({{< relref "module.md" >}}) | 0..* | Of_family | 0..1 |  |
