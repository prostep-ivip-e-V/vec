---
title: RingTerminalSpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specification for the definition of ring terminals. These are the counterparts to bolt terminals.      </p>  </body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [TerminalSpecification]({{< relref "terminalspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Terminals]({{< relref "../description-of-components/terminals" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p></body></html> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|voltageRange | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the allowed voltage range for the connector housing.      </p>    </body> </html>  | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|sealingType | [TerminalSealingType]({{< relref "terminalsealingtype.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Defines the <i>SealingType</i> of the Terminal. This type always refers to the sealing of the terminal itself. However, even a terminal which is not sealable can be used in sealed locations with additional measures (e.g. on the slot).        </p>    </body> </html>  | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|boltDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the diameter of the bolt for which the ring terminal is designed for in a numerical way.      </p>  </body> </html> | [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}) |
|boltNominalSize | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Defines the size (diameter) of the bolt for which the ring terminal is designed for in a nominal way (e.g. &quot;M8&quot;).      </p>  </body> </html> | [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}) |
|thickness | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>Specifies the thickness of the contact surface of the ring terminal. </p></body></html> | [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}) |
|boltType | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the type of the bolt. This should be an enumeration of values defined in a conformance class.      </p>    </body> </html>  | [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}) |
|outsideDimension | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>Specifies the diameter of the circle around the center of the bolt which passes through the farthest outside point of the contact surface of the ring terminal. (see KBLFRM-311) </p></body></html> | [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}) |
|torsionProtection | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <html><body><p>Specifies if the ring terminal is torsion protected or not.  (see KBLFRM-311) </p></body></html> | [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}) |

