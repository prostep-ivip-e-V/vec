---
title: Wire_colour
toc: false
type: specs
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Wire_colour
menu_name: kbl-2.4.sr1
---
<p>A Wire_colour is a mechanism to define a colour for a wire together with a description of the kind of the colour.</p>
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
|Colour_type | [String]({{< relref "string.md" >}}) | 1 | <p>The colour_type specifies the type of the colour. Note: There are no values pre-defined. Special values have to be negotiated between exchange partners.  Example:  'base colour', 'second', 'third'</p> | [Wire_colour]({{< relref "wire_colour.md" >}}) |
|Colour_value | [String]({{< relref "string.md" >}}) | 1 | <p>The colour_value specifies the value of the colour. Note: There are no values pre-defined. Special values have to be negotiated between exchange partners.  Example:  'red'</p> | [Wire_colour]({{< relref "wire_colour.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Core]({{< relref "core.md" >}}) | 1 | Core_colour | 1..* |  |
| [General_wire]({{< relref "general_wire.md" >}}) | 1 | Cover_colour | 1..* |  |
