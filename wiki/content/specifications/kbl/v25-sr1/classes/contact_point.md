﻿---
title: Contact_point
toc: false
type: specs
date: "2020-06-25"
draft: false
specification: KBL
version: 2.5.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Contact_point
menu_name: kbl-2.5.sr1
---
<p>A Contact_point defines the positions where electrical connectivity takes place.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 4_Connectivity |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Changed_element]({{< relref "changed_element.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 1 | <p>The id specifies the identifier of the Contact_point.</p> | [Contact_point]({{< relref "contact_point.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 0..1 |  |
| [Part_usage_select]({{< relref "part_usage_select.md" >}}) | Associated_parts | 0..* | 1..* |  |
| [Cavity_occurrence]({{< relref "cavity_occurrence.md" >}}) | Contacted_cavity | 1..* | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Component_pin_map]({{< relref "component_pin_map.md" >}}) | 0..* | Connected_contact_points | 0..* |  |
| [Extremity]({{< relref "extremity.md" >}}) | 0..* | Contact_point | 1 |  |
| [Component_box_occurrence]({{< relref "component_box_occurrence.md" >}}) | 1 | Contact_points | 0..* |  |
| [Connector_occurrence]({{< relref "connector_occurrence.md" >}}) | 1 | Contact_points | 0..* |  |
