---
title: CavitySpecification
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - CavitySpecification
menu_name: vec-1.1.2
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|angle | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..2 | <p> Specifies the angle against two planes of the connector housing a terminal used in this cavity can be buckled.      </p> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|cavityDesign | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the structural shape of the cavity, e.g. round, flat, box.      </p> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|cavityDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the diameter of the cavity.      </p> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|minWireElementOutsideDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the minimum diameter a wire is allowed to have to fit into the cavity. This definition is necessary, since wires that are two small might cause movements and in acceptable torsion forces on terminals.      </p> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|maxWireElementOutsideDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the maximum diameter a wire is allowed to have to fit into the cavity.  </p> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|primaryLockingType | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies if the cavity has a primary locking and of what type it is. </p> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|sealable | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p>Specifies if the cavity is sealable.  </p> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|compatibleTerminalType | [TerminalType]({{< relref "terminaltype.md" >}}) | 0..* | <p> Defines a list of terminal types that are compatible to this CavitySpecification.      </p> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CompatibilityStatement]({{< relref "compatibilitystatement.md" >}}) | 0..* | cavitySpecification | 0..* | <p> References the CavitySpecifications for which the compatibility statement is stated.      </p> |
| [Cavity]({{< relref "cavity.md" >}}) | 0..* | cavitySpecification | 0..1 | References the CavitySpecification that is satisfied by the cavity. |
