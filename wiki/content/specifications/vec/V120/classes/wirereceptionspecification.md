---
title: WireReceptionSpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specification for the definition of wire receptions. A WireReception is the area of a terminal where the contacting with a wire element (e.g. by crimping) takes place.      </p>    </body> </html> 
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|coreCrossSectionArea | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies a value range for cross section areas of cores that are compatible with the wire reception.     </p>      <p> For wire receptions where a single core is attached to, this value defines the <i>ValueRange</i> of the <i>crossSectionArea </i>of the core. For wire receptions where more than one core is attached to (e.g. ring terminals, splices), this attributes defines the valid value range for the sum of the cross section areas of all attached cores.      </p>    </body> </html>  | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|insulationDisplacementLength | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>Specifies the length of the insulation which must be stripped off to fit to this wire reception.  </p></body></html> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|multiContact | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies if it is possible to contact more than one core at the wire reception. If this attribute is set to true, the wire reception is allowed for more than one wire, but one wire is possible as well. If set to false, only one wire is allowed.      </p>    </body> </html>  | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|wireReceptionType | [WireReceptionType]({{< relref "wirereceptiontype.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the type of the wire reception. The wireReceptionType defines how the wire is joined with the wire reception.     </p>      <p> This attribute is defined in an OpenEnumeration.      </p>    </body> </html>  | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|wireElementOutsideDiameter | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies a value range for valid diameters a WireElement must have to fit to the wire reception.      </p>    </body> </html>  | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|platingMaterial | [Material]({{< relref "material.md" >}}) | 0..* | <html><body><p>Specifies the plating material of the wire reception. </p></body></html> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |
|sealable | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <html><body><p>Specifies if the wire reception can be sealed.  (see KBLFRM-311) </p></body></html> | [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ConductorMaterial]({{< relref "conductormaterial.md" >}}) | validConductorMaterials | 0..* | 1 | <html>   <head>     </head>   <body>     <p> Specifies the materials of a conductor, that are valid to use with this <i>WireReceptionSpecification</i>. This material shall be matched against the <i>ConductorSpecification.material.</i>      </p>    </body> </html>  |
| [WireReceptionAddOn]({{< relref "wirereceptionaddon.md" >}}) | addOns | 0..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireEndAccessorySpecification]({{< relref "wireendaccessoryspecification.md" >}}) |  | wireReceptionSpecification | 0..1 | <html>   <head>     </head>   <body>     <p> References the single <i>WireReceptionSpecification</i> that is specifying the properties of the <i>WireEndAccessory</i> that are related to wire.      </p>    </body> </html>  |
| [WireReception]({{< relref "wirereception.md" >}}) | 0..* | wireReceptionSpecification | 0..1 | References the WireReceptionSpecification that specifies the WireReception.   |
