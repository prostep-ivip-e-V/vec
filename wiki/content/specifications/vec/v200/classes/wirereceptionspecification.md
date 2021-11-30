---
title: WireReceptionSpecification
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - WireReceptionSpecification
menu_name: vec-2.0.0-rc1
---
<p> Specification for the definition of wire receptions. A WireReception is the area of a terminal where the contacting with a wire element (e.g. by crimping) takes place.      </p>

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|coreCrossSectionArea | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies a value range for cross-section areas of cores that are compatible with the wire reception.      </p>      <p> For wire receptions where a single core is attached to, this value defines the <i>ValueRange</i> of the <i>crossSectionArea </i>of the core. For wire receptions where more than one core is attached to (e.g. ring terminals, splices), this attribute defines the valid value range for the sum of the cross-section areas of all attached cores.      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|insulationDisplacementLength | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the length of the insulation which must be stripped off to fit to this wire reception.  </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|multiContact | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Specifies if it is possible to contact more than one core at the wire reception. If this attribute is set to true, the wire reception is allowed for more than one wire, but one wire is possible as well. If set to false, only one wire is allowed.      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|wireReceptionType | [WireReceptionType]({{< relref "wirereceptiontype.md" >}}) | 0..1 | <p> Specifies the type of the wire reception. The wireReceptionType defines how the wire is joined with the wire reception.     </p>      <p> This attribute is defined in an OpenEnumeration.      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|wireElementOutsideDiameter | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies a value range for valid diameters a WireElement must have to fit to the wire reception.      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|platingMaterial | [Material]({{< relref "material.md" >}}) | 0..* | <p>Specifies the plating material of the wire reception. </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|sealable | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p>Specifies if the wire reception can be sealed.  (see KBLFRM-311) </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|frontBellMouthLength | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the front (facing the terminal reception) bell mouth of the conductor crimp (wire reception, see diagram &quot;Terminal Dimensions&quot;).      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|conductorCrimpLength | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the conductor crimp (wire reception, see diagram &quot;Terminal Dimensions&quot;).      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|rearBellMouthLength | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the rear bell mouth of the conductor crimp (wire reception, see diagram &quot;Terminal Dimensions&quot;).      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|crimpConnectionLength | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the crimp area, conductor + insulation crimp (wire reception, see diagram &quot;Terminal Dimensions&quot;).      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|insulationCrimpLength | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the insulation crimp (wire reception, see diagram &quot;Terminal Dimensions&quot;).      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|cutOffTabLength | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the cut off tab (wire reception, see diagram &quot;Terminal Dimensions&quot;).      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|connectionBLength | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the connection between the conductor and the insulation crimp (wire reception, see diagram &quot;Terminal Dimensions&quot;).      </p> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [WireReceptionAddOn]({{< relref "wirereceptionaddon.md" >}}) | addOns | 0..* | 1 |  |
| [ConductorMaterial]({{< relref "conductormaterial.md" >}}) | validConductorMaterials | 0..* | 1 | <p> Specifies the materials of a conductor, that are valid to use with this <i>WireReceptionSpecification</i>. This material shall be matched against the <i>ConductorSpecification.material.</i>      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireEndAccessorySpecification]({{< relref "wireendaccessoryspecification.md" >}}) |  | wireReceptionSpecification | 0..1 | <p> References the single <i>WireReceptionSpecification</i> that is specifying the properties of the <i>WireEndAccessory</i> that are related to wire.      </p> |
| [WireReception]({{< relref "wirereception.md" >}}) | 0..* | wireReceptionSpecification | 0..1 | References the WireReceptionSpecification that specifies the WireReception. |
