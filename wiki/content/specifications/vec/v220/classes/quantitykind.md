---
title: QuantityKind
toc: false
type: specs
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - QuantityKind
menu_name: vec-2.2.0
---
<p> A <i>QuantityKind</i> is any observable property that can be measured and quantified numerically. Familiar examples include physical properties such as length, mass, time, force, energy, power, electric charge, etc. A quantity (not represented as class in the VEC) would always be associated with the context of measurement (i.e. the thing measured, the measured value, the accuracy of measurement, etc.) whereas the underlying <i>QuantityKind</i> is independent of any particular measurement. &#160;      </p>      <p> A <i>QuantityKind</i> provides an identifier and an optional human-readable name and is associated with a <i>Unit</i> that specifies how magnitudes of this <i>QuantityKind</i> are expressed within this VEC.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the <i>QuantityKind</i>. The identification is guaranteed to be unique within a VEC<i>.</i> Furthermore, the same <i>QuantityKind</i> shall have the same <i>Identification</i> for different VECs in the same a data exchange context. For example, if using the identification <code>trippingTime</code> for the time-<i>Quantity</i> of a <i>FuseCharacteristic</i> all appearances of this <i>QuantityKind</i> shall have the same <i>Identification</i>, when created by the same publisher.      </p> | [QuantityKind]({{< relref "quantitykind.md" >}}) |
|name| [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | A human readable name of the <i>QuantityKind</i> for example used as axis label in a visual diagram. | [QuantityKind]({{< relref "quantitykind.md" >}}) |

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
        <td>unit</td>
        <td><a href="{{< relref "unit.md" >}}">Unit</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>The <i>Unit</i> in which the magnitudes of this <i>QuantityKind</i> are defined.</td>
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
        <td>dimension</td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "multidimensionalvalue.md" >}}">MultiDimensionalValue</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>dimension</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "datapointvalue.md" >}}">DataPointValue</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>quantityKind</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "veccontent.md" >}}">VecContent</a></td>
        <td>1</td>
        <td><p> Specifies the <i>QuantityKind</i> used in the VEC-file.      </p></td>
    </tr>
    <tr>
        <td>time</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "fusecharacteristic.md" >}}">FuseCharacteristic</a></td>
        <td>0..1</td>
        <td></td>
    </tr>
    <tr>
        <td>trippingCurrent</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "fusecharacteristic.md" >}}">FuseCharacteristic</a></td>
        <td>0..1</td>
        <td></td>
    </tr>
    </tbody>
</table>



