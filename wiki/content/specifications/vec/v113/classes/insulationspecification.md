﻿---
title: InsulationSpecification
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - InsulationSpecification
menu_name: vec-1.1.3
---
<p>Specification for the definition of insulation properties of a WireElement.  </p>

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
|baseColor | [Color]({{< relref "color.md" >}}) | 0..* | <p> Specifies the base color of the insulation.      </p> | [InsulationSpecification]({{< relref "insulationspecification.md" >}}) |
|firstIdentificationColor | [Color]({{< relref "color.md" >}}) | 0..* | <p>Specifies the first identification color of the insulation. </p> | [InsulationSpecification]({{< relref "insulationspecification.md" >}}) |
|secondIdentificationColor | [Color]({{< relref "color.md" >}}) | 0..* | <p>Specifies the second identification color of the insulation. </p> | [InsulationSpecification]({{< relref "insulationspecification.md" >}}) |
|labelIdentificationColor | [Color]({{< relref "color.md" >}}) | 0..* | <p>Specifies the color of a label printed on the insulation of the wire. </p> | [InsulationSpecification]({{< relref "insulationspecification.md" >}}) |
|labelIdentificationType | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the type of a label printed on the insulation of the wire (e.g. alpha numerical, bar code). </p> | [InsulationSpecification]({{< relref "insulationspecification.md" >}}) |
|labelIdentificationValue | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the value of a label printed on the insulation of the wire. </p> | [InsulationSpecification]({{< relref "insulationspecification.md" >}}) |
|material | [Material]({{< relref "material.md" >}}) | 0..* | <p>Specifies the material of the insulation. </p> | [InsulationSpecification]({{< relref "insulationspecification.md" >}}) |
|thickness | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the thickness of the insulation. </p> | [InsulationSpecification]({{< relref "insulationspecification.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) | 0..* | insulationSpecification | 0..1 | <p> If the <i>WireElement</i> has an insulation then the specification of the insulation is referenced here.      </p> |
| [Signal]({{< relref "signal.md" >}}) |  | recommendedInsulationSpecification | 0..1 | <p> Defines a recommended Specification for the insulation (e.g. the color) that implements this signal.      </p> |
