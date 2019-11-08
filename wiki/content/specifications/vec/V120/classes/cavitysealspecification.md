---
title: CavitySealSpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specification for the definition of cavity seals. A <i>CavitySeal</i> is a water tight non-electrical object to fill a populated Cavity.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [CavityPartSpecification]({{< relref "cavitypartspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [MultiCavitySealSpecification]({{< relref "multicavitysealspecification.md" >}}) |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p></body></html> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|cavityDimension | [Size]({{< relref "size.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies a valid cavity dimensions to which the cavity part fits. The dimension defines the size of the sealing area of the cavity (crimp end), not in the contacting area (box end).      </p>      <p> Note: CavityDimension is of type Size which is defined as x &amp;&#160;y with type NumericalValue. NumericalValue can define tolerances. So a cavity dimension is not necessarily a single fixed value.      </p>  </body> </html> | [CavityPartSpecification]({{< relref "cavitypartspecification.md" >}}) |
|hardness | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>Specifies the hardness of the cavity seal.  </p></body></html> | [CavityPartSpecification]({{< relref "cavitypartspecification.md" >}}) |
|geometry | [SealingGeometry]({{< relref "sealinggeometry.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Defines the geometry of the cavity sealing.      </p>      <p> &#160;     </p>      <p> This attribute is defined as an OpenEnumeration.      </p>    </body> </html>  | [CavityPartSpecification]({{< relref "cavitypartspecification.md" >}}) |
|compatibleTerminalType | [TerminalType]({{< relref "terminaltype.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Defines a list of terminal types that are compatible to this CavitySealSpecification. This defines as well the compatible cavities, since a plug is normally used when no terminals are present.      </p>    </body> </html>  | [CavityPartSpecification]({{< relref "cavitypartspecification.md" >}}) |
|compatibleCavityGeometry | [CavityGeometry]({{< relref "cavitygeometry.md" >}}) | 0..* | <html>   <head>     </head>   <body> Defines a list of <i>CavityGeometries</i> that are compatible with this cavity part.</body> </html> | [CavityPartSpecification]({{< relref "cavitypartspecification.md" >}}) |
|wireElementOutsideDiameter | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies a range of valid wire diameters to which the cavity seal fits.      </p>    </body> </html>  | [CavitySealSpecification]({{< relref "cavitysealspecification.md" >}}) |
|wireReceptionType | [WireReceptionType]({{< relref "wirereceptiontype.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the wireReceptionType to which the cavity seal fits. This should be an enumeration of values defined in a conformance class.      </p>    </body> </html>  | [CavitySealSpecification]({{< relref "cavitysealspecification.md" >}}) |
|insideDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html>   <head>     </head>   <body> Defines the inside diameter in the relaxed state for a cavity seal. </body> </html> | [CavitySealSpecification]({{< relref "cavitysealspecification.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CavitySealRole]({{< relref "cavitysealrole.md" >}}) | 0..* | cavitySealSpecification | 1 | <html>   <head>     </head>   <body>     <p> References the <i>CavitySealSpecification </i>that is instanced by this <i>CavitySealRole.</i>      </p>    </body> </html>  |
