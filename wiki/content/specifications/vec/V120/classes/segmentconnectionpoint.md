---
title: SegmentConnectionPoint
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>Specifies a point where the connector can be attached to the topology (sometimes called bundle position point or insertion point).  </p></body></html>
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the SegmentConnectionPoint. The identification is guaranteed to be unique within the ConnectorHousingSpecification.      </p>    </body> </html>  | [SegmentConnectionPoint]({{< relref "segmentconnectionpoint.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Cavity]({{< relref "cavity.md" >}}) | reachableCavities | 0..* | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>Cavities</i> that are reachable with wires through this <i>SegmentConnectionPoint.</i>      </p>    </body> </html>  |
| [PlacementPoint]({{< relref "placementpoint.md" >}}) | placementPoint | 0..1 | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>PlacementPoint</i> that represents this <i>SegmentConnectionPoint </i>in a <i>PlaceableElementSpecification.</i>      </p>    </body> </html>  |
| [CavityAddOn]({{< relref "cavityaddon.md" >}}) | cavityAddOns | 0..* | 1 |  |
| [ModularSlotAddOn]({{< relref "modularslotaddon.md" >}}) | ModularSlotAddOns | 0..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) | 1 | segmentConnectionPoint | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>SegmentConnectionPoints </i>the connector housing.      </p>    </body> </html>  |
