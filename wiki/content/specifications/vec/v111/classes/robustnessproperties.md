---
title: RobustnessProperties
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - RobustnessProperties
menu_name: vec-1.1.1
---
<p> Allows the definition of robustness properties. Robustness of component is specified as a level of robustness against a specific influence (e.g. oil, water, UV-light). The influence is specified by the <i>class</i> and the level is specified by the <i>classKey</i>. Valid robustness classes and keys are specified by the reference system. Attributes of the type RobustnessProperties normally have the multiplicity [0..*]. This means that such an attribute can have RobustnessProperties entries for different <i>classReferenceSystems</i> and <i>classes</i>. It must not have multiple entries for the same <i>class</i> and <i>classReferenceSystem</i>.      </p>
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
|class | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies the identifier of a robustness class defined by the robustness class reference system. Robustness classes are for example: oil, petrol, UV, water.      </p> | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) |
|classKey | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a key for the robustness level defined in the specified robustness class (e.g. A, B, C).      </p> | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) |
|classReferenceSystem | [String]({{< relref "string.md" >}}) | 1 | <p> The identification of the robustness class reference system, which is defining possible values and the semantic of robustness classes and robustness class keys.      </p> | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) |
|hasRobustness | [Boolean]({{< relref "boolean.md" >}}) | 1 | <p>Specifies if the described element has a robustness in the specified robustness class. (see KBLFRM-260) </p> | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) |
|description | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p>On optional human readable description of the robustnes (e.g. the name).  </p> | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) |

