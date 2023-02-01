---
title: PlacementPoint
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - PlacementPoint
menu_name: vec-2.0.1
---
<p>Defines a point on the component which can be placed explicitly in the topology (e.g. opening in a grommet, the entry point of a connector housing).  If a PlacementPoint requires further specification for a certain component type (e.g. the entry point of a connector housing), this is done by an element specific for the component type, which related to the placement point.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placeable_element |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the PlacementPoint. The identification is guaranteed to be unique within a component.      </p> | [PlacementPoint]({{< relref "placementpoint.md" >}}) |
|segmentDiameter| [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies the valid segment diameter range for which this <i>PlacementPoint</i> is suitable.      </p> | [PlacementPoint]({{< relref "placementpoint.md" >}}) |

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
        <td>supplementaryParts</td>
        <td><a href="{{< relref "partrelation.md" >}}">PartRelation</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td><p> References the <i>PartRelations</i> that specify supplementary parts for this <i>PlacementPoint</i>, e.g. cable ties for attaching the component on the harness.      </p></td>
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
        <td>placementPoint</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "placeableelementspecification.md" >}}">PlaceableElementSpecification</a></td>
        <td>1</td>
        <td><p> Specifies the <i>PlacementPoints</i> of a <i>PlaceableElementSpecification</i>.      </p></td>
    </tr>
    <tr>
        <td>placementPoint</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "segmentconnectionpointhc.md" >}}">SegmentConnectionPointHC</a></td>
        <td>0..*</td>
        <td><p> Specifies the <i>PlacementPoint</i> that represents this <i>SegmentConnectionPoint </i>in a <i>PlaceableElementSpecification.</i>      </p></td>
    </tr>
    <tr>
        <td>placementPoint</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cableleadthroughoutlet.md" >}}">CableLeadThroughOutlet</a></td>
        <td>0..*</td>
        <td><p> Specifies the <i>PlacementPoint</i> that represents this <i>CableLeadThroughOutlet</i> in a PlaceableElementSpecification.      </p></td>
    </tr>
    <tr>
        <td>placementPoint</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "placementpointreference.md" >}}">PlacementPointReference</a></td>
        <td>0..*</td>
        <td><p> References the <i>PlacementPoint</i> that is instanced by this <i>PlacementPointReference.</i>      </p></td>
    </tr>
    <tr>
        <td>placementPoint</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "fittingoutlet.md" >}}">FittingOutlet</a></td>
        <td>0..*</td>
        <td><p> Specifies the <i>PlacementPoint</i> that represents this <i>FittingOutlet</i> in a PlaceableElementSpecification.      </p></td>
    </tr>
    <tr>
        <td>placementPoint</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "placementpointposition.md" >}}">PlacementPointPosition</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>placementPoint</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wirereception.md" >}}">WireReception</a></td>
        <td>0..*</td>
        <td><p> Specifies the <i>PlacementPoint</i> that represents this <i>WireReception</i> in a PlaceableElementSpecification.      </p></td>
    </tr>
    <tr>
        <td>placementPoint</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "segmentconnectionpoint.md" >}}">SegmentConnectionPoint</a></td>
        <td>0..*</td>
        <td><p> Specifies the <i>PlacementPoint</i> that represents this <i>SegmentConnectionPoint </i>in a <i>PlaceableElementSpecification.</i>      </p></td>
    </tr>
    <tr>
        <td>placementPoint</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cableductoutlet.md" >}}">CableDuctOutlet</a></td>
        <td>0..*</td>
        <td><p> Specifies the <i>PlacementPoint</i> that represents this <i>CableDuctOutlet</i> in a PlaceableElementSpecification.      </p></td>
    </tr>
    </tbody>
</table>



