---
title: TapeRole
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - TapeRole
menu_name: vec-2.1.0
---
<p> Specific <i>WireProtectionRole </i>for instances of <i>TapeSpecification. </i>This <i>Role</i> is used for a all kinds of taping and the <i>WindingType</i> defines the actual type of execution. Not all attributes in the <i>TapeRole</i> are relevant for all <i>WingingTypes</i>. Generating processes and systems are responsible to fill only attributes relevant for the selected <i>WindingType</i>.      </p>      <p> &#160;      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [WireProtectionRole]({{< relref "wireprotectionrole.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |
|protectionLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> The <i>ProtectionLength</i> specifies the length of the area covered by the protection. As a consequence, the <i>ProtectionLength</i> may differ from the real length of the material (e.g. for tapes).      </p> | [WireProtectionRole]({{< relref "wireprotectionrole.md" >}}) |
|tapeOverlap| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the amount of overlap two rounds of taping around a segment have, as an absolute value. A negative value means, that there is a gap between two rounds.      </p> | [TapeRole]({{< relref "taperole.md" >}}) |
|tapeOverlapRelative| [Double]({{< relref "double.md" >}}) | 0..1 | <p> Specifies the amount of overlap two rounds of taping around a segment have, as a relative value. A negative value means, that there is a gap between two rounds. Values are defined as a factor, not as a percentage. Values can be between 1.0 and negative &quot;infinity&quot;.      </p>      <p> <b>Examples:</b> An overlap of 1.0 defines that the second round is placed exactly on top of the first one. An overlap of 0.5 specifies that one half of the second round is on top of the first round (50% overlapping), a value of 0 specifies, that there is no overlap, but also no gap. A value of -2.0 specifies that there is a gap twice the width of the tape between two rounds.      </p> | [TapeRole]({{< relref "taperole.md" >}}) |
|tapingDirection| [TapingDirection]({{< relref "tapingdirection.md" >}}) | 0..1 | <p>Specifies the direction of the taping. </p> | [TapeRole]({{< relref "taperole.md" >}}) |
|gradient| [ValueWithUnit]({{< relref "valuewithunit.md" >}}) | 0..1 | <p>Specifies the gradient of the taping. </p> | [TapeRole]({{< relref "taperole.md" >}}) |
|windingType| [WindingType]({{< relref "windingtype.md" >}}) | 0..1 | <p> Defines the type of the tape's winding (see <i>WindingType</i>).      </p> | [TapeRole]({{< relref "taperole.md" >}}) |
|windingFirmness| [WindingFirmness]({{< relref "windingfirmness.md" >}}) | 0..1 | <p> Defines the firmness of the tape's winding (see WindingFirmness).      </p> | [TapeRole]({{< relref "taperole.md" >}}) |
|numberOfTurns| [Integer]({{< relref "integer.md" >}}) | 0..1 | Specifies the number of turns, the tape is wrapped around a segment. This is mainly a relevant definition for <i>Spot</i> and <i>Cross </i>tapes. | [TapeRole]({{< relref "taperole.md" >}}) |





