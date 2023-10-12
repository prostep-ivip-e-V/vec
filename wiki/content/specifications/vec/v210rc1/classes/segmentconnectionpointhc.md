---
title: SegmentConnectionPointHC
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - SegmentConnectionPointHC
menu_name: vec-2.1.0
---
<p> Specifies a point where the <i>HousingComponent</i> can be attached to the topology [if required] (sometimes called bundle position point or insertion point).      </p>      <p> &#160;      </p>      <p> <i>Note: The suffix HC is justified by the fact that class names must be unique within the model and the name SegmentConnectionPoint is already used within the ConnectorHousingSpecification. However, the represented semantics of the two connection points are so similar that the use of actually different names for both would rather have led to confusion. So SegmentConnectionPointHC&#160;actually is short hand for &quot;SegmentConnectionPoint within HousingComponent&quot;.</i>      </p>

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
|identification| [String]({{< relref "string.md" >}}) | 1 |  | [SegmentConnectionPointHC]({{< relref "segmentconnectionpointhc.md" >}}) |
|wireAddOn| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Defines the wire add-on that is required the reach the referenced SegmentConnectionPoint from this SegmentConnectionPointHC with which the individual cavity add-ons are defined. | [SegmentConnectionPointHC]({{< relref "segmentconnectionpointhc.md" >}}) |

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
        <td>connectorSegmentConnectionPoint</td>
        <td><a href="{{< relref "segmentconnectionpoint.md" >}}">SegmentConnectionPoint</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the <i>SegementConnectionPoint </i>of the <i>ConnectorHousingSpecification</i> that is used to &quot;enter&quot; the connector housing.</td>
    </tr>
    <tr>
        <td>placementPoint</td>
        <td><a href="{{< relref "placementpoint.md" >}}">PlacementPoint</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> Specifies the <i>PlacementPoint</i> that represents this <i>SegmentConnectionPoint </i>in a <i>PlaceableElementSpecification.</i>      </p></td>
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
        <td>segmentConnectionPoint</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "housingcomponent.md" >}}">HousingComponent</a></td>
        <td>1</td>
        <td><p> Specifies the <i>SegmentConnectionPoints </i>the <i>HousingComponent</i>.      </p></td>
    </tr>
    </tbody>
</table>



