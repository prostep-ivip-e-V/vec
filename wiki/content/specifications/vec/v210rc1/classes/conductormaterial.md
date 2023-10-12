---
title: ConductorMaterial
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - ConductorMaterial
menu_name: vec-2.1.0
---
<p> <i>ConductorMaterial</i> is a helper class to specify <i>validConductorMaterials. </i>This is necessary, since all attributes of the type <i>Material</i> have a multiplicity of * with the semantics that it always defines <u>one</u> <i>Material</i> with the possibility to define it in different reference systems.     </p>      <p> Since a wire reception can have more than one <i>validConductorMaterial</i> this container class is necessary to keep the semantics clear.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|material| [Material]({{< relref "material.md" >}}) | 1..* | <p> Specifies the material.      </p> | [ConductorMaterial]({{< relref "conductormaterial.md" >}}) |


##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>validConductorMaterials</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wirereceptionspecification.md" >}}">WireReceptionSpecification</a></td>
        <td>1</td>
        <td><p> Specifies the materials of a conductor, that are valid to use with this <i>WireReceptionSpecification</i>. This material shall be matched against the <i>ConductorSpecification.material.</i>      </p></td>
    </tr>
    </tbody>
</table>



