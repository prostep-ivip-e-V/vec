---
title: WireEnd
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - WireEnd
menu_name: vec-2.1.0
---
<p> A WireEnd is the end of a wire. This class mainly needed for the definition of a contacting. As a wire can be contacted on more than two ends (e.g. IDC) the WireEnd has a position on the wire.      </p>

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
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the WireEnd. The identification is guaranteed to be unique within the WireElementReference.      </p> | [WireEnd]({{< relref "wireend.md" >}}) |
|positionOnWire| [Double]({{< relref "double.md" >}}) | 1 | <p> Specifies the order of the <i>WireEnds</i> on the <i>WireElementReference</i>. This must be a value between 0 and 1.&#160;The <i>PositionOnWire</i> is defined as a floating point number, to allow the ordering of an arbitrary number of <i>WireEnds</i> while having constant known values for the first and last <i>WireEnd</i> (&quot;0.0&quot; &amp;&#160;&quot;1.0&quot;). The <i>PositionOnWire</i> is <u>not</u> defined as a relative factor with respect to the <i>WireLength</i> to determine an exact position of the <i>WireEnd </i>on the wire. This would not be defined unambiguously, since a <i>WireElementReference</i> can define multiple lengths of different <i>WireLengthTypes</i>. If such an interpretation can be made, it is tool or process specific definition.      </p>      <p> In case of <i>WireRole</i> with multiple <i>WireElementReferences </i>the ordering of the <i>WireEnds</i> shall be consistent for all <i>WireElementReferences.</i> That means that all <i>WireEnds</i> with <i>PositionOnWire =&#160;0.0 </i>are on the same side of the <i>WireRole.</i>      </p> | [WireEnd]({{< relref "wireend.md" >}}) |
|cutBackLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Defines the length, by which this <i>WireEnd</i> is cut back relative to the cut length of the outer most <i>WireElementReference </i>(see<i> </i><i>strippingLength</i> for an example).      </p> | [WireEnd]({{< relref "wireend.md" >}}) |
|strippingLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Defines the length by which an insulation on this stripped relative to this <i>WireEnd,</i> defined by the <i>cutBackLength</i>. E.g. a <i>cutBackLength</i> of 20mm and a <i>strippingLength</i> of 10mm means, that this <i>WireElementReference</i> is cutback by 20mm relative to length of whole wire, on the side of the defining <i>WireEnd. </i>Form the remaining <i>WireElementReference</i> are then 10mm insulation removed.      </p> | [WireEnd]({{< relref "wireend.md" >}}) |

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
        <td>connectionEnd</td>
        <td><a href="{{< relref "connectionend.md" >}}">ConnectionEnd</a></td>
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
        <td>associatedWireEnds</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wiretupletermination.md" >}}">WireTupleTermination</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>referencedWireEnd</td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wiremounting.md" >}}">WireMounting</a></td>
        <td>0..*</td>
        <td><p> References the wire ends that are used for the wire mounting. The minimum cardinality is one, because a wire mounting without wire end makes no sense.     </p>      <p> The maximum cardinality is * in order to support multi crimps.      </p></td>
    </tr>
    <tr>
        <td>referencedWireEnd</td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wiremountingdetail.md" >}}">WireMountingDetail</a></td>
        <td>0..*</td>
        <td>References the WireEnds that are mounted to referenced WireReception. A cardinality of more than one is allowed in order support parallel connectors, where multiple wire ends are placed on one side of the connector (one wire reception) and the other wire ends are placed on the other side of the connector (the other wire reception).</td>
    </tr>
    <tr>
        <td>wireEnd</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wireelementreference.md" >}}">WireElementReference</a></td>
        <td>1</td>
        <td>Specifies the ends of the WireElementReference for contacting purposes.</td>
    </tr>
    </tbody>
</table>



