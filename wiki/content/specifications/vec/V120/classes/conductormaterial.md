---
title: ConductorMaterial
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> <i>ConductorMaterial</i> is a helper class to specify <i>validConductorMaterials. </i>This is necessary, since all attributes of the type <i>Material</i> have a multiplicity of * with the semantics that it always defines <u>one</u> <i>Material</i> with the possibility to define it in different reference systems.     </p>      <p> Since a wire reception can have more than one <i>validConductorMaterial</i> this container class is necessary to keep the semantics clear.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Terminals]({{< relref "../description-of-components/terminals" >}})<br/> [Wire End Accessory]({{< relref "../description-of-components/wire-end-accessory" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|material | [Material]({{< relref "material.md" >}}) | 1..* | <html>   <head>     </head>   <body> Specifies the material.   </body> </html>  | [ConductorMaterial]({{< relref "conductormaterial.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) | 1 | validConductorMaterials | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the materials of a conductor, that are valid to use with this <i>WireReceptionSpecification</i>. This material shall be matched against the <i>ConductorSpecification.material.</i>      </p>    </body> </html>  |
