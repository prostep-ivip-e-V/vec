---
title: Role
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - Role
menu_name: vec-1.1.1
---
<p> A Role is the corresponding mechanism for OccurrenceOrUsages to the PartOrUsageRelatedSpecifcations for PartVersions or PartUsages. The PartOrUsageRelatedSpecifcations are describing a certain aspect of the master data of a part. A Role describes the corresponding properties and relationships for instances of a part (e.g. the usage specific properties of a wire occurrence like the length or the contacting).      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [CableDuctRole]({{< relref "cableductrole.md" >}}), [CavityPlugRole]({{< relref "cavityplugrole.md" >}}), [CavitySealRole]({{< relref "cavitysealrole.md" >}}), [ConnectorHousingRole]({{< relref "connectorhousingrole.md" >}}), [EEComponentRole]({{< relref "eecomponentrole.md" >}}), [FixingRole]({{< relref "fixingrole.md" >}}), [GrommetRole]({{< relref "grommetrole.md" >}}), [PartWithSubComponentsRole]({{< relref "partwithsubcomponentsrole.md" >}}), [PlaceableElementRole]({{< relref "placeableelementrole.md" >}}), [SpecificRole]({{< relref "specificrole.md" >}}), [TerminalRole]({{< relref "terminalrole.md" >}}), [WireProtectionRole]({{< relref "wireprotectionrole.md" >}}), [WireRole]({{< relref "wirerole.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies a unique identification of the Role. The identification is guaranteed to be unqiue within the OccurrenceOrUsage. </p> | [Role]({{< relref "role.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) | 0..1 | role | 0..* | <p> Specifies the different roles of the OccurrenceOrUsage.      </p> |
