---
title: PartUsage
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - PartUsage
menu_name: vec-2.0.0-rc1
---
<p> PartUsages shall be used for the specification of the elements on an electrical system wiring plan and for the specification of the elements on a pure geometry description. PartUsages shall more than ever be used in cases where it is necessary to describe a certain instance of a part or part group, possibly together with certain technical properties, but where it is at the same time yet not possible to define a concrete part number.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | part_usage |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the OccurrenceOrUsage. The identification is guaranteed to be unique within the context. For all VEC-documents an OccurrenceOrUsage-instance can be trusted to be the same if the context-instance is the same and the identification of the OccurrenceOrUsage is the same.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Room to specify additional identifiers for the OccurrenceOrUsage.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|abbreviation | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Specifies an abbreviation of the <i>OccurrenceOrUsage</i>. Normally this a human readable short name.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the OccurrenceOrUsage.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|primaryPartUsageType | [PrimaryPartType]({{< relref "primaryparttype.md" >}}) | 1 | <p>The primary type of the PartUsage defines the type of the described part (e.g. ConnectorHousing, Fixing, etc.) Since the VEC supports dual use parts (e.g. Fixing &amp; WireProtection) there is no direct connection between the primaryPartUsageType and the allowed specifications for the description of a PartUsage.  </p> | [PartUsage]({{< relref "partusage.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartSubstitutionSpecification]({{< relref "partsubstitutionspecification.md" >}}) | partSubstitution | 0..1 |  |  |
| [PartUsage]({{< relref "partusage.md" >}}) | instanciatedUsage | 0..* | 0..* |  |
| [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) | partOrUsageRelatedSpecification | 0..* | 0..* | References the PartOrUsageRelatedSpecification(s) that describe the PartOrUsageRelatedSpecification.  KBLFRM-399 |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PartUsage]({{< relref "partusage.md" >}}) | 0..* | instanciatedUsage | 0..* |  |
| [PartUsageSpecification]({{< relref "partusagespecification.md" >}}) | 1 | partUsage | 0..* | Specifies the PartUsages defined by the PartUsageSpecification. |
| [PartOccurrence]({{< relref "partoccurrence.md" >}}) | 0..* | realizedPartUsage | 0..* | References the PartUsages that are realized by the PartOccurrence. |
