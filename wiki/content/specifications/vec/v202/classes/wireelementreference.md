---
title: WireElementReference
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - WireElementReference
menu_name: vec-2.0.2
---
<p> A WireElementReference represents the usage of a WireElement in the context of a PartUsage or PartOccurrence. For contacting purposes, a WireElementReference has WireEnds. KBLFRM-384      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [RoutableElement]({{< relref "routableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the WireElementReference. The identification is guaranteed to be unique within the WireRole.      </p> | [WireElementReference]({{< relref "wireelementreference.md" >}}) |
|unconnected| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> If this attribute is <i>true</i>, the <i>WireElementReference</i> is not connected (unused) on purpose. This can be the case for example if a multi core is used, but not all cores are necessary in a specific situation.      </p>      <p> However, for all <i>WireElements</i> defined in the <i>WireSpecification</i> a corresponding <i>WireElementReference</i> shall exist. This attribute can be used to mark these unused cores explicitly.      </p> | [WireElementReference]({{< relref "wireelementreference.md" >}}) |
|labelValue| [String]({{< relref "string.md" >}}) | 0..1 | Specifies the value of label, if this <i>WireElementReference</i> is labled. | [WireElementReference]({{< relref "wireelementreference.md" >}}) |
|labelType| [LabelType]({{< relref "labeltype.md" >}}) | 0..1 |  | [WireElementReference]({{< relref "wireelementreference.md" >}}) |
|labelPosition| [LabelPosition]({{< relref "labelposition.md" >}}) | 0..1 | Specifies the position of label, if this <i>WireElementReference</i> is labled. | [WireElementReference]({{< relref "wireelementreference.md" >}}) |
|labelingTechnology| [LabelingTechnology]({{< relref "labelingtechnology.md" >}}) | 0..1 | Specifies the used <i>LabelingTechnology</i>, if this <i>WireElementReference</i> is labled. | [WireElementReference]({{< relref "wireelementreference.md" >}}) |

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
        <td>wireLength</td>
        <td><a href="{{< relref "wirelength.md" >}}">WireLength</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the different length of a wire.</td>
    </tr>
    <tr>
        <td>connectionGroup</td>
        <td><a href="{{< relref "connectiongroup.md" >}}">ConnectionGroup</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td><p> References the <i>ConnectionGroup</i> that is realized by this <i>WireElementReference.</i> This applies normally to <i>WireElementReference </i>that have <i>subWireElements</i>.      </p></td>
    </tr>
    <tr>
        <td>wireEnd</td>
        <td><a href="{{< relref "wireend.md" >}}">WireEnd</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the ends of the WireElementReference for contacting purposes.</td>
    </tr>
    <tr>
        <td>referencedWireElement</td>
        <td><a href="{{< relref "wireelement.md" >}}">WireElement</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the WireElement that is represented by the WireElementReference.      </p></td>
    </tr>
    <tr>
        <td>signal</td>
        <td><a href="{{< relref "signal.md" >}}">Signal</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the signal that is transmitted by the WireElementReference.</td>
    </tr>
    <tr>
        <td>connection</td>
        <td><a href="{{< relref "connection.md" >}}">Connection</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the Connection that is realized by the referenced WireElement (WireElementReference). KBLFRM-341</td>
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
        <td>relatedWireElementReference</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wiregrouping.md" >}}">WireGrouping</a></td>
        <td>0..*</td>
        <td><p> References the concrete wire elements (<i>WireElementReference</i>) that are grouped by the WireGrouping.      </p></td>
    </tr>
    <tr>
        <td>wireElementReference</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wirerole.md" >}}">WireRole</a></td>
        <td>1</td>
        <td>Specifies the WireElementReferences used in the WireRole. For multi core wires more than one WireElementReference is needed.</td>
    </tr>
    </tbody>
</table>



