---
title: Module_configuration
toc: false
type: specs
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Module_configuration
menu_name: kbl-2.4.sr1
---
<p>A Module_configuration is a grouping of wires and components fulfilling a specific functionality of a harness.  Example: Option: Audio System with CD Changer</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 1_Harness |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Changed_element]({{< relref "changed_element.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Logistic_control_information | [String]({{< relref "string.md" >}}) | 1 | <p>The logistic_control_information specifies the calculated combination of the configuration codes reflecting customer, market or country requirements, or a list of modules associated with a Module_configuration. The meaning of the string is further described by the configuration_type. Example: 'LOL/LOR+CFL'</p> | [Module_configuration]({{< relref "module_configuration.md" >}}) |
|Configuration_type | [Module_configuration_type]({{< relref "module_configuration_type.md" >}}) | 0..1 | <p>The configuration_type specifies further information on the type of the logistic_control_information. Note: To control completion parts which are only used if a specific combination of modules occur, a Module_configuration can be used with a logistic_control_information containing the Boolean expression for the combination and a configuration_type 'module list'. Where applicable the following values shall be used:  - 'option code': the logistic_control_information contains configuration codes reflecting customer, market or country requirements - 'module list': the logistic_control_information contains a list of modules, to which a completion part controlled by the Modul_configuration belongs to</p> | [Module_configuration]({{< relref "module_configuration.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Connection_or_occurrence]({{< relref "connection_or_occurrence.md" >}}) | Controlled_components | 0..* | 0..* |  |
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) |  | 0..* | 0..1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Harness]({{< relref "harness.md" >}}) | 1 | Module_configuration | 0..* |  |
| [Module]({{< relref "module.md" >}}) | 1 | Module_configuration | 1 |  |
