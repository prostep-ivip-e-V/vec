---
title: WireProtectionRole
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - WireProtectionRole
menu_name: vec-2.1.0
---
<p> A WireProtectionRole defines the instance specific properties and relationships of a wire protection. This is a general-purpose role for instances of all types of <i>WireProtectionSpecifications</i> that do not have specific instance attributes. For <i>TapeSpecifications</i> the more specific <i>TapeRole</i> shall be used.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [FittingRole]({{< relref "fittingrole.md" >}}), [StripeRole]({{< relref "striperole.md" >}}), [TapeRole]({{< relref "taperole.md" >}}), [TubeRole]({{< relref "tuberole.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |
|protectionLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> The <i>ProtectionLength</i> specifies the length of the area covered by the protection. As a consequence, the <i>ProtectionLength</i> may differ from the real length of the material (e.g. for tapes).      </p> | [WireProtectionRole]({{< relref "wireprotectionrole.md" >}}) |

## Outgoing Relations
<table>
    <thead>
        <tr>
           <th colspan="6">Other End</th>
           <th colspan="1">This End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>materialLength</td>
        <td><a href="{{< relref "protectionmateriallength.md" >}}">ProtectionMaterialLength</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td></td>
    </tr>
    <tr>
        <td>wireProtectionSpecification</td>
        <td><a href="{{< relref "wireprotectionspecification.md" >}}">WireProtectionSpecification</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>WireProtectionSpecification</i> that is instanced by this <i>WireProtectionRole.</i>      </p></td>
    </tr>
    </tbody>
</table>

##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>relatedWireProtections</td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wireprotectiongroup.md" >}}">WireProtectionGroup</a></td>
        <td>0..1</td>
        <td><p> References the members in the <i>WireProtectionGroup.</i>      </p></td>
    </tr>
    </tbody>
</table>



