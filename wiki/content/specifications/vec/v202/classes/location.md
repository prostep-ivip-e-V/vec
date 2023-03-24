---
title: Location
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - Location
menu_name: vec-2.0.2
---
<p>A Location specifies a distinct position on a topology. Locations can be used for the placement of components or for the definition of Dimensions.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [DimensionAnchor]({{< relref "dimensionanchor.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [NodeLocation]({{< relref "nodelocation.md" >}}), [SegmentLocation]({{< relref "segmentlocation.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the Location. The identification is guaranteed to be unique within the PlacementSpecification.      </p> | [Location]({{< relref "location.md" >}}) |
|matchingId| [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies an identification for matching the location with a reference point of component (e.g. a cable channel).  </p> | [Location]({{< relref "location.md" >}}) |

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
        <td>placedPlacementPoints</td>
        <td><a href="{{< relref "placementpointreference.md" >}}">PlacementPointReference</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>PlacementPointReference </i>that is placed by this location.      </p></td>
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
        <td>definedLocations</td>
        <td>0..2</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "dimension.md" >}}">Dimension</a></td>
        <td>1</td>
        <td></td>
    </tr>
    <tr>
        <td>endLocation</td>
        <td>1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "onwayplacement.md" >}}">OnWayPlacement</a></td>
        <td>0..1</td>
        <td>References the Location where OnWayPlacement ends.</td>
    </tr>
    <tr>
        <td>firstLocation</td>
        <td>1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "zonecoverage.md" >}}">ZoneCoverage</a></td>
        <td>0..1</td>
        <td></td>
    </tr>
    <tr>
        <td>location</td>
        <td>1..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "onpointplacement.md" >}}">OnPointPlacement</a></td>
        <td>0..1</td>
        <td>References the Locations where Placement places the reference points of the placed element.</td>
    </tr>
    <tr>
        <td>mappedPosition</td>
        <td>1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "nodemapping.md" >}}">NodeMapping</a></td>
        <td>0..1</td>
        <td></td>
    </tr>
    <tr>
        <td>secondLocation</td>
        <td>1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "zonecoverage.md" >}}">ZoneCoverage</a></td>
        <td>0..1</td>
        <td></td>
    </tr>
    <tr>
        <td>startLocation</td>
        <td>1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "onwayplacement.md" >}}">OnWayPlacement</a></td>
        <td>0..1</td>
        <td>References the Location where OnWayPlacement starts.</td>
    </tr>
    </tbody>
</table>



