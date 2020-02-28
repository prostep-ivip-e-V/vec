---
title: Material
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - Material
menu_name: vec-1.1.1
---
<p> Allows the definition of material information. Attributes of the type Material normally have the multiplicity [0..*]. This means that such an attribute can have material values for different <i>referenceSystems</i>. It must not have multiple values for the same <i>referenceSystems</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|key | [String]({{< relref "string.md" >}}) | 1 | <p>The key of the material in the corresponding material reference system. </p> | [Material]({{< relref "material.md" >}}) |
|referenceSystem | [String]({{< relref "string.md" >}}) | 1 | <p> The identification of the material reference system, which is defining possible values and the semantic of material keys.      </p> | [Material]({{< relref "material.md" >}}) |
|description | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p>On optional human readable description of the material (e.g. the name).  </p> | [Material]({{< relref "material.md" >}}) |

