---
title: Wire_length
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Wire_length
menu_name: kbl-2.5
---
<p> The <i>Wire_length</i> specifies a length for a wire together with a description of the kind of the length (<i>Length_type)</i>. The <i>Length_value </i>is always an absolute value.      </p>
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
|Length_type | [Length_type]({{< relref "length_type.md" >}}) | 1 | <p>The length_type specifies the type of the length. Note: There are no values pre-defined. Special values have to be negotiated between exchange partners.</p> | [Wire_length]({{< relref "wire_length.md" >}}) |
|Length_value | [Numerical_value]({{< relref "numerical_value.md" >}}) | 1 | <p>The length_value specifies the length of the wire. </p> | [Wire_length]({{< relref "wire_length.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Core_occurrence]({{< relref "core_occurrence.md" >}}) | 1 | Length_information | 1..* |  |
| [General_wire_occurrence]({{< relref "general_wire_occurrence.md" >}}) | 1 | Length_information | 1..* |  |
