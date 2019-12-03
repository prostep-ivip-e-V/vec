---
title: Material
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Allows the definition of material information. Attributes of the type Material normally have the multiplicity [0..*]. This means that such an attribute can have material values for different <i>referenceSystems</i>. It must not have multiple values for the same <i>referenceSystems</i>.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Foundation Classes for Physical Properties]({{< relref "../description-of-components/foundation-classes-for-physical-properties" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|key | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>The key of the material in the corresponding material reference system. </p></body></html> | [Material]({{< relref "material.md" >}}) |
|referenceSystem | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> The identification of the material reference system, which is defining possible values and the semantic of material keys.      </p>    </body> </html>  | [Material]({{< relref "material.md" >}}) |
|description | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <html><body><p>On optional human readable description of the material (e.g. the name).  </p></body></html> | [Material]({{< relref "material.md" >}}) |

