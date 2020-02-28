---
title: Default_dimension_specification
toc: false
type: specs
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Default_dimension_specification
menu_name: kbl-2.4.sr1
---
<p> A Default_dimension_specification defines tolerance values that shall be applied to the harness, if no explicit tolerance value has been defined.     </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 5_Topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Dimension_value_range | [Value_range]({{< relref "value_range.md" >}}) | 0..1 | <p> Dimension_value_range defines the magnitude of measurements for which the tolerance applies (e.g. length from 500mm - 1500mm).      </p> | [Default_dimension_specification]({{< relref "default_dimension_specification.md" >}}) |
|Tolerance_type | [String]({{< relref "string.md" >}}) | 0..1 | <p> The Tolerance_type defines to which measurements this Default_dimension_specification applies (e.g. segment lengths, wire lengths).       </p> | [Default_dimension_specification]({{< relref "default_dimension_specification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [External_reference]({{< relref "external_reference.md" >}}) | External_references | 0..* | 0..* | <p> An External_reference which can be used to reference an external document in which the default values are defined (e.g. a company standard).      </p> |
| [Tolerance]({{< relref "tolerance.md" >}}) | Tolerance_indication | 0..1 | 1 | <p> The Tolerance_indication, which defines the values of the tolerance (e.g. +-5mm).      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [KBL_container]({{< relref "kbl_container.md" >}}) | 1 | Default_dimension_specification | 0..* |  |
