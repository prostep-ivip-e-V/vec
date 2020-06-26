---
title: Component_pin_map
toc: false
type: specs
date: "2020-06-25"
draft: false
specification: KBL
version: 2.5.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Component_pin_map
menu_name: kbl-2.5.sr1
---
<p> A <i>Component_pin_map</i> defines a mapping between the pins a <i>Component_occurrence</i> and the cavities of the <i>Component_box_occurrence</i> on which the <i>Component_occurrence</i> is mounted.      </p>      <p> The cavity numbers used in the <i>Component_pin_map</i> shall be a subset of the <i>Component_cavity_occurrences</i> referenced in the <i>Mounting</i> of the <i>Component_occurrence</i>.     </p>      <p> This object is optional and can be used in cases where the Component_occurrence is mounted on more than on cavity and it is relevant which pin of the Component_occurrence is connected to which cavity (e.g. in cases of relays).       </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Component_pin_number | [String]({{< relref "string.md" >}}) | 1 |  | [Component_pin_map]({{< relref "component_pin_map.md" >}}) |
|Cavity_number | [String]({{< relref "string.md" >}}) | 1 |  | [Component_pin_map]({{< relref "component_pin_map.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Contact_point]({{< relref "contact_point.md" >}}) | Connected_contact_points | 0..* | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Component_occurrence]({{< relref "component_occurrence.md" >}}) | 1 | Component_pin_maps | 0..* | The <i>Component_pin_map</i> used for this <i>Component_occurrence.</i> |
