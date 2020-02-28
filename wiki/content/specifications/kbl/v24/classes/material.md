---
title: Material
toc: false
type: specs
date: "2015-03-16"
draft: false
specification: KBL
version: 2.4
documentType: "Recommendation"
elementType: Class
classes:
  - Material
menu_name: kbl-2.4
---
<p>A Material is the substance out of which a Part is or can be made.</p>
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
|Material_key | [String]({{< relref "string.md" >}}) | 1 | <p>The material_key specifies a code by which the material can be identified.</p> | [Material]({{< relref "material.md" >}}) |
|Material_reference_system | [String]({{< relref "string.md" >}}) | 0..1 | <p>The material_reference_system specifies the system in which the material_key and its meaning is defined. Example:  'IMDS' for the International Material Database System.</p> | [Material]({{< relref "material.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Part]({{< relref "part.md" >}}) | 1 | Material_information | 0..1 |  |
