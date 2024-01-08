---
title: CoreSpecification
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - CoreSpecification
menu_name: vec-2.1.0
---
<p> Defines the properties of a circular conductor (core) which are specific for them.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConductorSpecification]({{< relref "conductorspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|wireType| [WireType]({{< relref "wiretype.md" >}}) | 0..* | <p> Defines the type of the conductor. A <i>WireType</i> is a key in a reference system for the definition of wires. Some reference system define independent type fragment for insulations and conductors and the <i>WireType</i> of a <i>WireElement</i> is the combination of both.      </p>      <p> An conductor must not have more than one type. This attribute allows more than one value for the reason, that the same type can be expressed in multiple reference systems.      </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|crossSectionArea| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the cross-section area of the conductor (e.g. 0,5 mm²). The cross-section area is a nominal value, which refers to the conducting properties of the conductor normalized to the properties of a full material core.      </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|massInformation| [MassInformation]({{< relref "massinformation.md" >}}) | 0..1 | <p>Specifies the mass information of the conductor. In most cases this mass information is known as copper weight and is normally specified as mass per length (e.g. gram per meter).  </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|material| [Material]({{< relref "material.md" >}}) | 0..* | <p>Specifies the material of the conductor. </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|resistance| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the electrical resistance of the conductor. In most cases this is specified as resistance per length (e.g. Ohm per meter).  </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|structure| [ConductorStructure]({{< relref "conductorstructure.md" >}}) | 0..1 | <p> Specifies the structure of the conductor according to ISO 6722-1 for ConductorSpecifications with Type = Stranded.      </p>      <p> <i>Should only be used for ConductorSpecifications with type=Stranded.</i>      </p>      <p> &#160;      </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|type| [ConductorType]({{< relref "conductortype.md" >}}) | 0..1 | <p> Specifies the type of the conductor, e.g. if it is rigid or stranded.      </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|numberOfStrands| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the number of strands in one conductor. If the conductor is solid than the number of strands would be one.      </p>      <p> &#160;      </p>      <p> <b>Note:</b> This attribute has incorrectly the type <i>NumericalValue, </i>correct would be type &quot;Integer&quot;. Since this would be a breaking change, this will be fixed with the next major release (V3). In the mean time, a <i>NumericalValue</i> with the <i>OtherUnit &quot;Piece&quot; </i>and values without fraction shall be used.       </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|platingMaterial| [Material]({{< relref "material.md" >}}) | 0..* | <p>Specifies the plating material of the conductor.  </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|strandDiameter| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the diameter of a single strand in the conductor.  </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|voltageRange| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the voltageRange for which the conductor is approved.      </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|outsideDiameter| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the outside diameter of the core.  </p> | [CoreSpecification]({{< relref "corespecification.md" >}}) |





