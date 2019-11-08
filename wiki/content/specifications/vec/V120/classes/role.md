---
title: Role
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A Role is the corresponding mechanism for OccurrenceOrUsages to the PartOrUsageRelatedSpecifcations for PartVersions or PartUsages. The PartOrUsageRelatedSpecifcations are describing a certain aspect of the master data of a part. A Role describes the corresponding properties and relationships for instances of a part (e.g. the usage specific properties of a wire occurrence like the length or the contacting).      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [CableDuctRole]({{< relref "cableductrole.md" >}}), [CableTieRole]({{< relref "cabletierole.md" >}}), [CavityAccessoryRole]({{< relref "cavityaccessoryrole.md" >}}), [CavityPlugRole]({{< relref "cavityplugrole.md" >}}), [CavitySealRole]({{< relref "cavitysealrole.md" >}}), [ConnectorHousingCapRole]({{< relref "connectorhousingcaprole.md" >}}), [ConnectorHousingRole]({{< relref "connectorhousingrole.md" >}}), [EEComponentRole]({{< relref "eecomponentrole.md" >}}), [FixingRole]({{< relref "fixingrole.md" >}}), [GrommetRole]({{< relref "grommetrole.md" >}}), [PartWithSubComponentsRole]({{< relref "partwithsubcomponentsrole.md" >}}), [PlaceableElementRole]({{< relref "placeableelementrole.md" >}}), [SpecificRole]({{< relref "specificrole.md" >}}), [TerminalRole]({{< relref "terminalrole.md" >}}), [WireEndAccessoryRole]({{< relref "wireendaccessoryrole.md" >}}), [WireProtectionRole]({{< relref "wireprotectionrole.md" >}}), [WireRole]({{< relref "wirerole.md" >}}) |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies a unique identification of the Role. The identification is guaranteed to be unqiue within the OccurrenceOrUsage. </p></body></html> | [Role]({{< relref "role.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) | 0..1 | role | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the different roles of the OccurrenceOrUsage.      </p>    </body> </html>  |
