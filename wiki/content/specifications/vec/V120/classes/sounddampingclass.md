---
title: SoundDampingClass
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Allows the definition of a sound damping class. The sound damping class of a component is specified as a level of sound damping. The level is specified by the <i>classKey</i>. Valid keys are specified by the <i>referenceSystem</i>. Attributes of the type <i>SoundDampingClass</i> normally have the multiplicity [0..*]. This means that such an attribute can have <i>SoundDampingClass</i> entries for different <i>referenceSystems</i>. It must not have multiple entries for the same <i>referenceSystem</i>.      </p>    </body> </html> 
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
|classKey | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a key for the level defined in the sound damping class (e.g. A, B, C).      </p>    </body> </html>  | [SoundDampingClass]({{< relref "sounddampingclass.md" >}}) |
|referenceSystem | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> The identification of the sound damping class reference system, which is defining possible values and the semantic of sound damping keys.      </p>    </body> </html>  | [SoundDampingClass]({{< relref "sounddampingclass.md" >}}) |

