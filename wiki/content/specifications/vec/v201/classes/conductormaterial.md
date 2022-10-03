---
title: ConductorMaterial
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - ConductorMaterial
menu_name: vec-2.0.1
---
<p> <i>ConductorMaterial</i> is a helper class to specify <i>validConductorMaterials. </i>This is necessary, since all attributes of the type <i>Material</i> have a multiplicity of * with the semantics that it always defines <u>one</u> <i>Material</i> with the possibility to define it in different reference systems.     </p>      <p> Since a wire reception can have more than one <i>validConductorMaterial</i> this container class is necessary to keep the semantics clear.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|material | [Material]({{< relref "material.md" >}}) | 1..* | <p> Specifies the material.      </p> | [ConductorMaterial]({{< relref "conductormaterial.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) | 1 | validConductorMaterials | 0..* | <p> Specifies the materials of a conductor, that are valid to use with this <i>WireReceptionSpecification</i>. This material shall be matched against the <i>ConductorSpecification.material.</i>      </p> |
