---
title: CavitySpecification
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - CavitySpecification
menu_name: vec-2.1.0
---
<p> Specification for the definition of cavities.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|angle| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..2 | <p> Specifies the angle against two planes of the connector housing a terminal used in this cavity can be buckled.      </p> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|cavityDesign| [String]({{< relref "string.md" >}}) | 0..1 | {{< deprecated since="1.1.4" reason="Replaced by the more meaningful mechanism TerminalTypes.">}}<p> &#160;      </p> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|geometry| [CavityGeometry]({{< relref "cavitygeometry.md" >}}) | 0..1 | <p> Defines the geometry of a cavity in the sealing area (crimp end).      </p> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|cavityDimension| [Size]({{< relref "size.md" >}}) | 0..1 | <p> Specifies the dimension of the cavity in the sealing area of the cavity (crimp end), not in the contacting area (box end).      </p>      <p> The <i>Height</i> of a cavity is defined as the dimension of cavity in the direction of the primary locking. The <i>Width </i>is the dimension orthogonal to the <i>Height.</i>      </p>      <p> For cavities with <i>Geometry = Circular </i>the <i>Size.Width </i>shall be equal to <i>Size.Height.</i>      </p> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|minWireElementOutsideDiameter| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the minimum diameter a wire is allowed to have to fit into the cavity. This definition is necessary, since wires that are too small might cause movements and in acceptable torsion forces on terminals.      </p> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|maxWireElementOutsideDiameter| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the maximum diameter a wire is allowed to have to fit into the cavity.  </p> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|primaryLockingType| [PrimaryLockingType]({{< relref "primarylockingtype.md" >}}) | 0..1 | <p>Specifies if the cavity has a primary locking and of what type it is. </p> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|sealable| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p>Specifies if the cavity is sealable.  </p> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|compatibleTerminalType| [TerminalType]({{< relref "terminaltype.md" >}}) | 0..* | <p> Defines a list of terminal types that are compatible to this CavitySpecification.      </p> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|cavitySealingLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Defines the length of the sealing area in the cavity. | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |


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
        <td>cavitySpecification</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cavity.md" >}}">Cavity</a></td>
        <td>0..*</td>
        <td>References the CavitySpecification that is satisfied by the cavity.</td>
    </tr>
    </tbody>
</table>



