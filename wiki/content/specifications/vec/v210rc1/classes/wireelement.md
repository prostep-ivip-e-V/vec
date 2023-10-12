---
title: WireElement
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - WireElement
menu_name: vec-2.1.0
---
<p> A <i>WireElement </i>specifies a <i>WireElementSpecification</i> in the context of a <i>WireSpecification</i>. This is necessary to define a unique <i>identification</i> of a <i>WireElementSpecification </i>in the context of a <i>WireSpecification. </i>Additionally, the <i>WireElement</i> serves as anchor for the instancing of a wire (<i>WireElementReference</i>) as the <i>WireElementSpecifications </i>are not uniquely related to a <i>WireSpecification</i> for reasons of reusability.      </p>

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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> The identification of the WireElement. The identification is guaranteed to be unique within a wire and immutable. The identification is guaranteed to be the same for the same WireElement over different VEC documents.      </p> | [WireElement]({{< relref "wireelement.md" >}}) |

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
        <td>subWireElement</td>
        <td><a href="{{< relref "wireelement.md" >}}">WireElement</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td><p> Defines the <i>subWireElements </i>of this <i>WireElement</i>. The <i>subWireElements </i>shall be consistent with the <i>subWireElementSpecifications</i> of the <i>WireElementSpecification </i>referenced by this <i>WireElement </i>and shall resemble that hierarchy.      </p></td>
    </tr>
    <tr>
        <td>wireElementSpecification</td>
        <td><a href="{{< relref "wireelementspecification.md" >}}">WireElementSpecification</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> Reference the <i>WireElementSpecification </i>that is represented by the <i>WireElement.</i>      </p></td>
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
        <td>referencedWireElement</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wireelementreference.md" >}}">WireElementReference</a></td>
        <td>0..*</td>
        <td><p> References the WireElement that is represented by the WireElementReference.      </p></td>
    </tr>
    <tr>
        <td>subWireElement</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wireelement.md" >}}">WireElement</a></td>
        <td>0..1</td>
        <td><p> Defines the <i>subWireElements </i>of this <i>WireElement</i>. The <i>subWireElements </i>shall be consistent with the <i>subWireElementSpecifications</i> of the <i>WireElementSpecification </i>referenced by this <i>WireElement </i>and shall resemble that hierarchy.      </p></td>
    </tr>
    <tr>
        <td>wireElement</td>
        <td>1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wirespecification.md" >}}">WireSpecification</a></td>
        <td>0..1</td>
        <td><p> Specifies the <i>WireElement</i> that represents the root of the <i>WireSpecification</i>.      </p></td>
    </tr>
    </tbody>
</table>



