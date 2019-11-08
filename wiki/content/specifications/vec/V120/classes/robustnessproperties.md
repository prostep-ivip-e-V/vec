---
title: RobustnessProperties
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Allows the definition of robustness properties. Robustness of component is specified as a level of robustness against a specific influence (e.g. oil, water, UV-light). The influence is specified by the <i>class</i> and the level is specified by the <i>classKey</i>. Valid robustness classes and keys are specified by the reference system. Attributes of the type RobustnessProperties normally have the multiplicity [0..*]. This means that such an attribute can have RobustnessProperties entries for different <i>classReferenceSystems</i> and <i>classes</i>. It must not have multiple entries for the same <i>class</i> and <i>classReferenceSystem</i>.     </p>      <p> Note: Most reference systems just define one class or at least some of the possible classes, but not all (e.g. the ISO 20653 defines &quot;Solid Particle Protection&quot; and &quot;Liquid&#160;Ingress&#160;Protection&quot;, where as the ISO 6722 defines &quot;Ambient&#160;Temperature&quot; among others).     </p>    </body> </html> 
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
|class | [RobustnessClass]({{< relref "robustnessclass.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies the identifier of a robustness class defined by the robustness class reference system. Robustness classes are for example: oil, petrol, UV, water. Specific known and used classes are defined in an open enumeration.      </p>    </body> </html>  | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) |
|classKey | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies a key for the robustness level defined in the specified robustness class (e.g. A, B, C).      </p>    </body> </html>  | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) |
|classReferenceSystem | [RobustnessClassReferenceSystem]({{< relref "robustnessclassreferencesystem.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> The identification of the robustness class reference system, which is defining possible values and the semantic of robustness classes and robustness class keys. Specific known and used reference systems are defined in an open enumeration.     </p>    </body> </html>  | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) |
|hasRobustness | [Boolean]({{< relref "boolean.md" >}}) | 1 | <html><body><p>Specifies if the described element has a robustness in the specified robustness class. (see KBLFRM-260) </p></body></html> | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) |
|description | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <html><body><p>On optional human readable description of the robustnes (e.g. the name).  </p></body></html> | [RobustnessProperties]({{< relref "robustnessproperties.md" >}}) |

