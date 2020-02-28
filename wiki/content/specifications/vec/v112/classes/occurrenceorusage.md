---
title: OccurrenceOrUsage
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - OccurrenceOrUsage
menu_name: vec-1.1.2
---
<p>An OccurrenceOrUsage is an abstract appearance of a part in the harness. This can either be a concrete part (with a part number a.s.o) or the description (specification / requirements) of a part that should be used at that position. In the first case it would be a PartOccurrence in the second case a PartUsage.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [PartOccurrence]({{< relref "partoccurrence.md" >}}), [PartUsage]({{< relref "partusage.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the OccurrenceOrUsage. The identification is guaranteed to be unique within the context. Over all VEC-documents an OccurrenceOrUsage-instance can be trusted to be the same if the context-instance is the same and the identification of the OccurrenceOrUsage is the same.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Room to specify additional identifiers for the OccurrenceOrUsage.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|abbreviation | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Specifies an abbreviation of the <i>OccurrenceOrUsage</i>. Normally this a human readable short name.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the OccurrenceOrUsage.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Role]({{< relref "role.md" >}}) | role | 0..* | 0..1 | <p> Specifies the different roles of the OccurrenceOrUsage.      </p> |
| [Instruction]({{< relref "instruction.md" >}}) | installationInstruction | 0..* | 0..1 | Room to specify InstallationInstruction(s) for the OccurrenceOrUsage. |
| [UsageNode]({{< relref "usagenode.md" >}}) | realizedUsageNode | 0..1 | 0..* | <p> References the <i>UsageNode</i> that is realized by this <i>OccurrenceOrUsage</i>.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [OccurrenceOrUsageViewItem2D]({{< relref "occurrenceorusageviewitem2d.md" >}}) | 0..* | occurrenceOrUsage | 0..1 | Specifies the OccurrenceOrUsage which is represented by the view item. |
| [OccurrenceOrUsageViewItem3D]({{< relref "occurrenceorusageviewitem3d.md" >}}) | 0..* | occurrenceOrUsage | 0..1 | <p> Specifies the OccurrenceOrUsage which is represented by the view item.      </p> |
| [PartWithSubComponentsRole]({{< relref "partwithsubcomponentsrole.md" >}}) | 0..* | subComponent | 1..* | <p> References the subcomponents that belong to this instance of a PartWithSubComponents.      </p> |
