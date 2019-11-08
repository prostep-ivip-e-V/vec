---
title: TapeSpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>Specification for the description of tapes.  </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [WireProtectionSpecification]({{< relref "wireprotectionspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p></body></html> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|soundDampingClass | [SoundDampingClass]({{< relref "sounddampingclass.md" >}}) | 0..* | <html><body><p>Specifies the class of sound damping. According to the VDA this is a value between A &amp; E. KBLFRM-311  </p></body></html> | [WireProtectionSpecification]({{< relref "wireprotectionspecification.md" >}}) |
|backing | [Material]({{< relref "material.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the material of carrier of the tape, on which the adhesive material is applied.      </p>    </body> </html>  | [TapeSpecification]({{< relref "tapespecification.md" >}}) |
|adhesive | [Material]({{< relref "material.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the adhesive material of the tape.     </p>    </body> </html>  | [TapeSpecification]({{< relref "tapespecification.md" >}}) |
|width | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the width of the tape.     </p>    </body> </html>  | [TapeSpecification]({{< relref "tapespecification.md" >}}) |
|thickness | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>Specifies the thickness of the tape (adhesive + backing).   </p></body></html> | [TapeSpecification]({{< relref "tapespecification.md" >}}) |
|coilCoreDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the inner diameter of the coil on which the tape is delivered.     </p>    </body> </html>  | [TapeSpecification]({{< relref "tapespecification.md" >}}) |

