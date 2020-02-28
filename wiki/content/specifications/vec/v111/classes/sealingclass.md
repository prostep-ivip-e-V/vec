---
title: SealingClass
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - SealingClass
menu_name: vec-1.1.1
---
<p>Allows the definition of a sealing class. The sealing class of a component is specified as a level of sealing against a specific influence. The influence is specified by the sealingClass and the level is specified by the sealingClassKey. Valid sealing classes and keys are specified by the reference system. Attributes of the type SealingClass normally have the multiplicity [0..*]. This means that such an attribute can have SealingClass entries for different sealingClassReferenceSystems and sealingClasses. It must not have multiple entries for the same sealing class and reference system.  </p>

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
|class | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies the identifier of a sealing class defined by the sealing class reference system.      </p> | [SealingClass]({{< relref "sealingclass.md" >}}) |
|classKey | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a key for the sealing level defined in the specified sealing class (e.g. A, B, C).      </p> | [SealingClass]({{< relref "sealingclass.md" >}}) |
|classReferenceSystem | [String]({{< relref "string.md" >}}) | 1 | <p> The identification of the sealing class reference system, which is defining possible values and the semantic of sealing classes and sealing class keys.      </p> | [SealingClass]({{< relref "sealingclass.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>On optional human readable description of the sealing class (e.g. the name).  </p> | [SealingClass]({{< relref "sealingclass.md" >}}) |

