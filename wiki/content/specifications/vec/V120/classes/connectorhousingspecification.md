---
title: ConnectorHousingSpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specification for the definition of connector housings. A connector housing consists of a one or more slots. In the means of the VEC, a connector housing can be a conventional connector housing, a contact module or a connector shell.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p></body></html> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|averageWireLengthAddOn | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the average wire length add on for this connector.     </p>    </body> </html>  | [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) |
|voltageRange | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the allowed voltage range for the connector housing.      </p>    </body> </html>  | [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) |
|coupleable | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Defines whether the connector is coupleable or not. Connectors that are coupleable can be used in an inline position. Connectors that are not coupleable can be connected only to an ECU or something similar.      </p>    </body> </html>  | [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) |
|connectorPositionAssurance | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> If <i>true</i> the <i>ConnectorHousing</i> has a connector position assurance (CPA).     </p>      <p> A CPA is some sort of feature of a connector, that secures the connector in its correctly assembled position with its mating part.       </p>    </body> </html>  | [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) |
|outletDirection | [ConnectorOutletDirection]({{< relref "connectoroutletdirection.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Defines the <i>OutletDirection</i> for wires.      </p>      <p> This attribute is defined as an <i>OpenEnumeration</i>.      </p>    </body> </html>  | [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [AbstractSlot]({{< relref "abstractslot.md" >}}) | slot | 0..* | 1 | Specifies the slots forming the ConnectorHousing.   |
| [SegmentConnectionPoint]({{< relref "segmentconnectionpoint.md" >}}) | segmentConnectionPoint | 0..* | 1 | <html>   <head>     </head>   <body>     <p> Specifies the <i>SegmentConnectionPoints </i>the connector housing.      </p>    </body> </html>  |
| [Coding]({{< relref "coding.md" >}}) | coding | 0..1 | 0..1 | Defines coding of the connector housing that is satisfied by the connector housing.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ConnectorHousingRole]({{< relref "connectorhousingrole.md" >}}) | 0..* | connectorHousingSpecification | 1 | <html>   <head>     </head>   <body>     <p> References the <i>ConnectorHousingSpecification </i>that is instanced by this <i>ConnectorHousingRole.</i>      </p>    </body> </html>  |
| [HousingComponent]({{< relref "housingcomponent.md" >}}) | 0..* | housingSpecification | 0..1 | References the ConnectorHousingSpecification that is describing the connector interface of the HousingComponent (e.g. Slots, Cavities, Design, Coding).  |
