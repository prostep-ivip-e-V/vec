---
title: TapeRole
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body> Specific <i>WireProtectionRole </i>for instances of <i>TapeSpecification.</i></body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [WireProtectionRole]({{< relref "wireprotectionrole.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Instances of Wire Protections]({{< relref "../instances-of-components/instances-of-wire-protections" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies a unique identification of the Role. The identification is guaranteed to be unqiue within the OccurrenceOrUsage. </p></body></html> | [Role]({{< relref "role.md" >}}) |
|protectionLength | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>Specifies the length of the protection. </p></body></html> | [WireProtectionRole]({{< relref "wireprotectionrole.md" >}}) |
|tapeOverlap | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the amount of overlap two rounds of taping around a segment have, as an absolute value. A negative value means, that there is a gap between two rounds.      </p>  </body> </html> | [TapeRole]({{< relref "taperole.md" >}}) |
|tapeOverlapRelative | [Double]({{< relref "double.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the amount of overlap two rounds of taping around a segment have, as an relative value. A negative value means, that there is a gap between two rounds. Values are defined as a factor, not as a percentage. Values can be between 1.0 and negative &quot;infinity&quot;.      </p>      <p> <b>Examples:</b> An overlap of 1.0 defines that the second round is placed exactly on top of the first one. An overlap of 0.5 specifies that one half of the second round is on top of the first round (50% overlapping), a value of 0 specifies, that there is no overlap, but also no gap. A value of -2.0 specifies that there is a gap twice the width of the tape between two rounds.      </p>  </body> </html> | [TapeRole]({{< relref "taperole.md" >}}) |
|tapingDirection | [TapingDirection]({{< relref "tapingdirection.md" >}}) | 0..1 | <html><body><p>Specifies the direction of the taping. </p></body></html> | [TapeRole]({{< relref "taperole.md" >}}) |
|gradient | [ValueWithUnit]({{< relref "valuewithunit.md" >}}) | 0..1 | <html><body><p>Specifies the gradient of the taping. </p></body></html> | [TapeRole]({{< relref "taperole.md" >}}) |
|windingType | [WindingType]({{< relref "windingtype.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Defines the type of the tape's winding (see <i>WindingType</i>).      </p>  </body> </html> | [TapeRole]({{< relref "taperole.md" >}}) |
|windingFirmness | [WindingFirmness]({{< relref "windingfirmness.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Defines the firmness of the tape's winding (see WindingFirmness).      </p>  </body> </html> | [TapeRole]({{< relref "taperole.md" >}}) |

