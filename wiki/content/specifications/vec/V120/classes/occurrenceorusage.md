---
title: OccurrenceOrUsage
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - OccurrenceOrUsage
menu_name: vec-1.2.0
---
<p> An OccurrenceOrUsage is an abstract appearance of a part in the harness. This can either be a concrete part (with a part number or something similar) or the description (specification / requirements) of a part that should be used at that position. In the first case it would be a PartOccurrence in the second case a PartUsage.      </p>

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the OccurrenceOrUsage. The identification is guaranteed to be unique within the context. For all VEC-documents an OccurrenceOrUsage-instance can be trusted to be the same if the context-instance is the same and the identification of the OccurrenceOrUsage is the same.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Room to specify additional identifiers for the OccurrenceOrUsage.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|abbreviation | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Specifies an abbreviation of the <i>OccurrenceOrUsage</i>. Normally this a human readable short name.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the OccurrenceOrUsage.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Instruction]({{< relref "instruction.md" >}}) | installationInstruction | 0..* | 0..1 | Room to specify InstallationInstruction(s) for the OccurrenceOrUsage. |
| [Role]({{< relref "role.md" >}}) | role | 0..* | 0..1 | <p> Specifies the different roles of the OccurrenceOrUsage.      </p> |
| [UsageNode]({{< relref "usagenode.md" >}}) | realizedUsageNode | 0..1 | 0..* | <p> References the <i>UsageNode</i> that is realized by this <i>OccurrenceOrUsage</i>.      </p> |
| [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) | referenceElement | 0..* | 0..* | <p> References the <i>OccurrenceOrUsage</i> for which this <i>OccurrenceOrUsage</i> is an accessory /&#160;supplementary component.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ModuleList]({{< relref "modulelist.md" >}}) | 0..* | completionComponents | 1..* | References the components that are used as completion, if any of the Modules in the ModuleList appears in a configuration. |
| [PartStructureSpecification]({{< relref "partstructurespecification.md" >}}) | 0..* | inBillOfMaterial | 0..* | <p> References the PartOccurrences that are building the bill of material of a composite part.      </p> |
| [OccurrenceOrUsageViewItem3D]({{< relref "occurrenceorusageviewitem3d.md" >}}) | 0..* | occurrenceOrUsage | 0..* | <p> Specifies the <i>OccurrenceOrUsages</i> which are represented by the view item.      </p>      <p> <b>Important: </b>To use one <i>OccurenceOrUsageViewItem</i> for multiple <i>OccurrenceOrUsages </i>is only valid, if the referenced items are true alternatives to each other. That means, they must have an identical placement, the geometrical models used for each item must be substitutable and the item must be mutually exclusive to each other.      </p> |
| [OccurrenceOrUsageViewItem2D]({{< relref "occurrenceorusageviewitem2d.md" >}}) | 0..* | occurrenceOrUsage | 0..* | <p> Specifies the <i>OccurrenceOrUsages</i> which are represented by the view item.      </p>      <p> <b>Important: </b>To use one <i>OccurenceOrUsageViewItem</i> for multiple <i>OccurrenceOrUsages </i>is only valid, if the referenced items are true alternatives to each other. That means, they must have an identical placement, the geometrical models used for each item must be substitutable and the item must be mutually exclusive to each other.      </p> |
| [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) | 0..* | referenceElement | 0..* | <p> References the <i>OccurrenceOrUsage</i> for which this <i>OccurrenceOrUsage</i> is an accessory /&#160;supplementary component.      </p> |
| [PartWithSubComponentsRole]({{< relref "partwithsubcomponentsrole.md" >}}) | 0..* | subComponent | 0..* | <p> References the subcomponents that belong to this instance of a PartWithSubComponents.      </p> |
