---
title: SoundDampingClass
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - SoundDampingClass
menu_name: vec-1.1.2
---
<p> Allows the definition of a sound damping class. The sound damping class of a component is specified as a level of sound damping. The level is specified by the <i>classKey</i>. Valid keys are specified by the <i>referenceSystem</i>. Attributes of the type <i>SoundDampingClass</i> normally have the multiplicity [0..*]. This means that such an attribute can have <i>SoundDampingClass</i> entries for different <i>referenceSystems</i>. It must not have multiple entries for the same <i>referenceSystem</i>.      </p>

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
|classKey | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a key for the level defined in the sound damping class (e.g. A, B, C).      </p> | [SoundDampingClass]({{< relref "sounddampingclass.md" >}}) |
|referenceSystem | [String]({{< relref "string.md" >}}) | 1 | <p> The identification of the sound damping class reference system, which is defining possible values and the semantic of sound damping keys.      </p> | [SoundDampingClass]({{< relref "sounddampingclass.md" >}}) |

