---
title: WireTupleTermination
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - WireTupleTermination
menu_name: vec-2.0.1
---
<p> A <i>WireTupleTermination</i> is to define the handling of wire ends in a tuple (group). This is mostly relevant for twisted pairs&#160;/&#160;triple / tuple to define the handling of untwisting.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|fixation| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | Defines whether a fixation to prevent untwisting must be applied to <i>associatedWireEnds </i>of this <i>WireTupleTermination</i>. | [WireTupleTermination]({{< relref "wiretupletermination.md" >}}) |
|fixationOffset| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Specifies the offset of the fixation. | [WireTupleTermination]({{< relref "wiretupletermination.md" >}}) |
|permittedUntwist| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Specifies the allowed length of untwist for the WireElementReferences on the sides of associated WireEnds. | [WireTupleTermination]({{< relref "wiretupletermination.md" >}}) |

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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>associatedWireEnds</td>
        <td><a href="{{< relref "wireend.md" >}}">WireEnd</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>wireTupleSpecification</td>
        <td><a href="{{< relref "wiretuplespecification.md" >}}">WireTupleSpecification</a></td>
        <td>0..1</td>
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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>wireTupleTermination</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wiretupleterminationspecification.md" >}}">WireTupleTerminationSpecification</a></td>
        <td>1</td>
        <td></td>
    </tr>
    </tbody>
</table>



