---
title: StripeSpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>Specifies a stripe which has fixed length and width. Stripes can be used for example for sealing. </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [WireProtectionSpecification]({{< relref "wireprotectionspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Wire Protections]({{< relref "../description-of-components/wire-protections" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p></body></html> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|soundDampingClass | [SoundDampingClass]({{< relref "sounddampingclass.md" >}}) | 0..* | <html><body><p>Specifies the class of sound damping. According to the VDA this is a value between A &amp; E. KBLFRM-311  </p></body></html> | [WireProtectionSpecification]({{< relref "wireprotectionspecification.md" >}}) |
|length | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>Specifies the length of the stripe. </p></body></html> | [StripeSpecification]({{< relref "stripespecification.md" >}}) |
|segmentDiameter | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <html><body><p>Specifies the valid segment diameter range for which the stripe can be used.  </p></body></html> | [StripeSpecification]({{< relref "stripespecification.md" >}}) |
|width | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the width of the stripe.      </p>    </body> </html>  | [StripeSpecification]({{< relref "stripespecification.md" >}}) |
|thickness | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html>   <head>     </head>   <body> Specifies the thickness of the stripe (adhesive + backing).</body> </html> | [StripeSpecification]({{< relref "stripespecification.md" >}}) |

