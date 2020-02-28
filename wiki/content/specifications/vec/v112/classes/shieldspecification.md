---
title: ShieldSpecification
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - ShieldSpecification
menu_name: vec-1.1.2
---
<p>Specifies the properties of a shield.  </p>

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|crossSectionArea | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the cross section area of the conductor (e.g. 0,5 mm²). The cross section area is a nominal value, which refers to the conducting properties of the conductor normalized to the properties of a full material core. </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|massInformation | [MassInformation]({{< relref "massinformation.md" >}}) | 0..1 | <p>Specifies the mass information of the conductor. In most cases this mass information is known as copper weight and is normally specified as mass per length (e.g. gram per meter).  </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|material | [Material]({{< relref "material.md" >}}) | 0..* | <p>Specifies the material of the conductor. </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|resistance | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the electrical resistance of the conductor. In most cases this is specified as resistance per length (e.g. Ohm per meter).  </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|structure | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the structure of the conductor (e.g. symmetrical, asymmetrical).  </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|type | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the type of the conductor. This should be an enumeration of values defined in a conformance class (e.g. solid, meshwork).  </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|numberOfStrands | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the number of strands in one conductor. If the conductor is solid than the number of strands would be one.  </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|platingMaterial | [Material]({{< relref "material.md" >}}) | 0..* | <p>Specifies the plating material of the conductor.  </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|strandDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the diameter of a single strand in the conductor.  </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|voltageRange | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the voltageRange for which the conductor is approved.      </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|opticalTissueDensity | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Defines the optical tissue density of the strands of a shield. This is defined as a value in percentage. </p> | [ShieldSpecification]({{< relref "shieldspecification.md" >}}) |
|windingType | [String]({{< relref "string.md" >}}) | 0..1 | <p> Defines the type of winding of the shield. E.g. if the shield is a sheet, it can be folded around the inner elements and along them like a cigarette paper or it can be winded around them like the taping of a harness. Both types result in different manufacturing and EMC properties.      </p> | [ShieldSpecification]({{< relref "shieldspecification.md" >}}) |

