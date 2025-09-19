---
title: CableSealEntryReference
toc: false
type: specs
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - CableSealEntryReference
menu_name: vec-2.2.0
---
<p> Provides an identifier for the <i>CableSealEntryReference</i>. The <i>Identification</i> shall be unique within a <i>CableSealRole.</i>      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 |  | [CableSealEntryReference]({{< relref "cablesealentryreference.md" >}}) |
|positionOnWire| [Double]({{< relref "double.md" >}}) | 0..1 | <p> Specifies the position of this <i>CableSealEntryReference</i> on its associated <i>WireElementReference</i>. This value is analogous to <i>WireEnd.PositionOnWire</i> (see that documentation for details) and must be between 0 and 1. Note that it is <strong>not</strong> a fraction of the wire's total length used to compute an exact physical location.      </p>      <p> Its primary purpose is to indicate which side of the wire the seal entry is associated with. By definition, all <i>WireEnd</i> instances sharing the same <i>PositionOnWire</i> lie on the same side of the wire - and the same rule applies to <i>CableSealEntryReference.PositionOnWire</i>. Accordingly, properties such as <i>sealInsertionDepth</i> are always measured relative to the <i>WireEnd</i> with the matching <i>PositionOnWire</i>.      </p>      <p> In cases where the seal's position is determined by other topology elements (for example, the placement of a grommet) rather than a specific <i>WireEnd</i>, the <i>PositionOnWire</i> attribute may be omitted.      </p> | [CableSealEntryReference]({{< relref "cablesealentryreference.md" >}}) |
|sealInsertionDepth| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Defines how far the cable seal is pushed onto the wire, measured from the tip of the corresponding <i>WireEnd</i>. | [CableSealEntryReference]({{< relref "cablesealentryreference.md" >}}) |

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
        <td>cableSealEntry</td>
        <td><a href="{{< relref "cablesealentry.md" >}}">CableSealEntry</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>associatedWireElementRef</td>
        <td><a href="{{< relref "wireelementreference.md" >}}">WireElementReference</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td></td>
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
        <td>cableSealEntryReference</td>
        <td>1..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cablesealrole.md" >}}">CableSealRole</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>pluggedEntry</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "sealingpinreference.md" >}}">SealingPinReference</a></td>
        <td></td>
        <td></td>
    </tr>
    </tbody>
</table>



