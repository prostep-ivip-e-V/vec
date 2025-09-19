---
title: CableLeadThroughOutletReference
toc: false
type: specs
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - CableLeadThroughOutletReference
menu_name: vec-2.2.0
---
<p> A <i>CableLeadThroughOutletReference</i> is the instance of a <i>CableLeadThroughOutlet</i>. It can define a set of cable seals or plugs as supplementary parts. Plugs are used if no wire is present, seals are used together with a wire.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the CableLeadThroughReference. The identification is guaranteed to be unique within the GrommetRole.      </p> | [CableLeadThroughOutletReference]({{< relref "cableleadthroughoutletreference.md" >}}) |

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
        <td>usedSupplementaryParts</td>
        <td><a href="{{< relref "occurrenceorusage.md" >}}">OccurrenceOrUsage</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td><p> This is the relationship of the supplementary parts actually used in this <i>CableLeadThroughOutletReference.</i> This is the actual selection of the potential supplementary parts defined in the corresponding <i>Slot.supplementaryParts</i> association.      </p></td>
    </tr>
    <tr>
        <td>cableLeadThroughOutlet</td>
        <td><a href="{{< relref "cableleadthroughoutlet.md" >}}">CableLeadThroughOutlet</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
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
        <td>cableLeadThroughOutletReference</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cableleadthroughreference.md" >}}">CableLeadThroughReference</a></td>
        <td></td>
        <td></td>
    </tr>
    </tbody>
</table>



