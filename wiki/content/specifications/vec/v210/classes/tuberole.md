---
title: TubeRole
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - TubeRole
menu_name: vec-2.1.0
---
<p> Specific <i>WireProtectionRole </i>for instances of <i>TubeSpecification.</i>      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [WireProtectionRole]({{< relref "wireprotectionrole.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [CorrugatedPipeRole]({{< relref "corrugatedpiperole.md" >}}), [ShrinkableTubeRole]({{< relref "shrinkabletuberole.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |
|protectionLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> The <i>ProtectionLength</i> specifies the length of the area covered by the protection. As a consequence, the <i>ProtectionLength</i> may differ from the real length of the material (e.g. for tapes).      </p> | [WireProtectionRole]({{< relref "wireprotectionrole.md" >}}) |
|slitStyle| [TubeSlitStyle]({{< relref "tubeslitstyle.md" >}}) | 0..1 | <p> Specifies the style of the slitting of the tube. If a <i>slitStyle</i> is defined, it implies that <i>isSlit=true</i>.     </p>      <p> This attribute is defined as an <i>OpenEnumeration.</i>      </p> | [TubeRole]({{< relref "tuberole.md" >}}) |
|isSlit| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Specifies whether the tube is slit or not. The style of the slitting can be defined with the <i>slitStyle.</i> If a <i>slitStyle</i> is defined, it implies that <i>isSlit=true</i>.      </p> | [TubeRole]({{< relref "tuberole.md" >}}) |





