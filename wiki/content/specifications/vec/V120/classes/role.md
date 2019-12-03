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
| **Usage in Diagrams**   | [Assemblies, Modules and Harness (Configurations)]({{< relref "../composite-part-descriptions/assemblies-modules-and-harness-configurations" >}})<br/> [Harness and Variants]({{< relref "../composite-part-descriptions/harness-and-variants" >}})<br/> [Instances of Cavity Seals and Cavity Plugs]({{< relref "../instances-of-components/instances-of-cavity-seals-and-cavity-plugs" >}})<br/> [Instances of Connector Housings]({{< relref "../instances-of-components/instances-of-connector-housings" >}})<br/> [Instances of EE-Components]({{< relref "../instances-of-components/instances-of-ee-components" >}})<br/> [Instances of Fixings, Grommets and Cable Ducts]({{< relref "../instances-of-components/instances-of-fixings-grommets-and-cable-ducts" >}})<br/> [Instances of Placeable Components]({{< relref "../instances-of-components/instances-of-placeable-components" >}})<br/> [Instances of Terminals]({{< relref "../instances-of-components/instances-of-terminals" >}})<br/> [Instances of undefined Components]({{< relref "../instances-of-components/instances-of-undefined-components" >}})<br/> [Instances of Wire Protections]({{< relref "../instances-of-components/instances-of-wire-protections" >}})<br/> [Instances of Wires]({{< relref "../instances-of-components/instances-of-wires" >}})<br/> [Instantiation of Components]({{< relref "../instances-of-components/instantiation-of-components" >}})<br/> [Placement and Dimensions]({{< relref "../topology-and-geometry/placement-and-dimensions" >}})<br/> [Wiring Specification]({{< relref "../connectivity/wiring-specification" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies a unique identification of the Role. The identification is guaranteed to be unqiue within the OccurrenceOrUsage. </p></body></html> | [Role]({{< relref "role.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) | 0..1 | role | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the different roles of the OccurrenceOrUsage.      </p>    </body> </html>  |
