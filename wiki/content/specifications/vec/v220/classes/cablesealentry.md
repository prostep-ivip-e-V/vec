---
title: CableSealEntry
toc: false
type: specs
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - CableSealEntry
menu_name: vec-2.2.0
---
Specifies an opening in the cable seal.

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Provides an identifier for the <i>CableSealEntry</i>. The <i>Identification</i> shall be unique within a <i>CableSealSpecification.</i>      </p> | [CableSealEntry]({{< relref "cablesealentry.md" >}}) |
|wireElementOutsideDiameter| [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies a range of valid wire diameters to which the <i>CableSealEntry</i> fits.      </p> | [CableSealEntry]({{< relref "cablesealentry.md" >}}) |
|insideDiameter| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Defines the inside diameter in the relaxed state for the opening in the cable seal.      </p> | [CableSealEntry]({{< relref "cablesealentry.md" >}}) |

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
        <td>position</td>
        <td><a href="{{< relref "cavity.md" >}}">Cavity</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>Specifies the <i>Cavity</i> in the <i>CavityLayout</i> of the <i>CableSealSpecification</i> where this <i>CableSealEntry</i> is positioned.</td>
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
        <td>cableSealEntry</td>
        <td>1..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cablesealspecification.md" >}}">CableSealSpecification</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>cableSealEntry</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cablesealentryreference.md" >}}">CableSealEntryReference</a></td>
        <td></td>
        <td></td>
    </tr>
    </tbody>
</table>



