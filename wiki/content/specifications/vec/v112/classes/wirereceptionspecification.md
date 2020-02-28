---
title: WireReceptionSpecification
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - WireReceptionSpecification
menu_name: vec-1.1.2
---
<p> Specification for the definition of wire receptions. A WireReception is the area of a terminal where the contacting with a (e.g. by crimping) takes place.      </p>

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
|coreCrossSectionArea | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies a value range for valid cross section areas a core must have to fit to the wire reception.      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|insulationDisplacementLength | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the length of the insulation which must be stripped off to fit to this wire reception.  </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|multiContact | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p>Specifies if it is possible to contact more than core at the wire reception.  </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|wireReceptionType | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the type of the wire reception. This should be an enumeration of values defined in a conformance class.      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|wireElementOutsideDiameter | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies a value range for valid diameters a WireElement must have to fit to the wire reception.      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|platingMaterial | [Material]({{< relref "material.md" >}}) | 0..* | <p>Specifies the plating material of the wire reception. </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|sealable | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p>Specifies if the wire reception can be sealed.  (see KBLFRM-311) </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireReception]({{< relref "wirereception.md" >}}) | 0..* | wireReceptionSpecification | 0..1 | References the WireReceptionSpecification that specifies the WireReception. |
