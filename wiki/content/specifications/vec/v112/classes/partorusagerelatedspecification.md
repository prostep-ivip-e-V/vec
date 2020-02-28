---
title: PartOrUsageRelatedSpecification
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - PartOrUsageRelatedSpecification
menu_name: vec-1.1.2
---
<p> Base class for all specifications which are describing a <i>PartVersion</i> or a <i>PartUsage</i>. A <i>PartOrUsageRelatedSpecification</i> specifies a certain aspect of the described part or usage (e.g. general technical part information, connector housing aspects or wire aspects).      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [CableDuctSpecification]({{< relref "cableductspecification.md" >}}), [CavityPlugSpecification]({{< relref "cavityplugspecification.md" >}}), [CavitySealSpecification]({{< relref "cavitysealspecification.md" >}}), [ConnectorHousingCapSpecification]({{< relref "connectorhousingcapspecification.md" >}}), [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}), [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}), [FixingSpecification]({{< relref "fixingspecification.md" >}}), [GeneralTechnicalPartSpecification]({{< relref "generaltechnicalpartspecification.md" >}}), [GrommetSpecification]({{< relref "grommetspecification.md" >}}), [PartStructureSpecification]({{< relref "partstructurespecification.md" >}}), [PlaceableElementSpecification]({{< relref "placeableelementspecification.md" >}}), [TerminalSpecification]({{< relref "terminalspecification.md" >}}), [WireProtectionSpecification]({{< relref "wireprotectionspecification.md" >}}), [WireSpecification]({{< relref "wirespecification.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartVersion]({{< relref "partversion.md" >}}) | describedPart | 0..* | 0..* | References the PartVersion(s) to which the information defined in this specification applies. Example: If the PartOrUsageRelatedSpecification is a GeneralTechnicalPartSpecifcation and it defines that the color is "green" then all PartVersion referenced by this association are "green". |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PartUsage]({{< relref "partusage.md" >}}) | 0..* | partOrUsageRelatedSpecification | 0..* | References the PartOrUsageRelatedSpecification(s) that describe the PartOrUsageRelatedSpecification.  KBLFRM-399 |
| [SpecificRole]({{< relref "specificrole.md" >}}) | 0..* | specification | 1 | <p> References the <i>PartOrUsageRelatedSpecification </i>that is instantiated by this <i>SpecificRole.</i>      </p> |
