---
title: RobustnessProperties
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - RobustnessProperties
menu_name: vec-2.1.0
---
<p> Allows the definition of robustness properties. Robustness of a component is specified as a level of robustness against a specific influence (e.g. oil, water, UV-light). The influence is specified by the <i>class</i> and the level is specified by the <i>classKey</i>. Valid robustness classes and keys are specified by the reference system. Attributes of the type RobustnessProperties normally have the multiplicity [0..*]. This means that such an attribute can have RobustnessProperties entries for different <i>classReferenceSystems</i> and <i>classes</i>.       </p>      <p> Constraints for the multiplicity of entries for the same <i>class</i> and <i>classReferenceSystem</i> are defined by the reference system. It most cases an element can have only one single value for a <i>class</i> and <i>classReferenceSystem. </i>This applies for example to cumulative ratings where a &quot;higher&quot; rating includes all &quot;lower&quot; ratings.&#160;However, there are reference systems where this is not true, for example in the &quot;ISO 20653 - Liquid Ingress Protection&quot; a component rated as IPX7 is not automatically rated IPX5 and vice versa. In these case, multiple values (<i>classKey</i>) for a single <i>c</i><i>lass</i> and <i>classReferenceSystem</i> are allowed.      </p>      <p> Note: Most reference systems just define one class or at least some of the possible classes, but not all (e.g. the ISO 20653 defines &quot;Solid Particle Protection&quot; and &quot;Liquid&#160;Ingress&#160;Protection&quot;, whereas the ISO 6722 defines &quot;Ambient&#160;Temperature&quot; among others).      </p>

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
|class| [RobustnessClass]({{< relref "robustnessclass.md" >}}) | 1 | <p> Specifies the identifier of a robustness class defined by the robustness class reference system. Robustness classes are for example: oil, petrol, UV, water. Specific known and used classes are defined in an open enumeration.      </p> | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) |
|classKey| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a key for the robustness level defined in the specified robustness class (e.g. A, B, C). The classKey is the key as specified in the reference system and no additional syntax or prefixes, e.g. for ISO&#160;20653 (Ingress Protection)&#160;it is <i>&quot;9K&quot;</i> and not <i>&quot;IPX9K&quot;.</i>      </p> | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) |
|classReferenceSystem| [RobustnessClassReferenceSystem]({{< relref "robustnessclassreferencesystem.md" >}}) | 1 | <p> The identification of the robustness class reference system, which is defining possible values and the semantic of robustness classes and robustness class keys. Specific known and used reference systems are defined in an open enumeration.     </p> | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) |
|hasRobustness| [Boolean]({{< relref "boolean.md" >}}) | 1 | <p>Specifies if the described element has a robustness in the specified robustness class. (see KBLFRM-260) </p> | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) |
|description| [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> On optional human readable description of the robustness (e.g. the name).      </p> | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) |





