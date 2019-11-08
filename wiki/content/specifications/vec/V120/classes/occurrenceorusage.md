---
title: OccurrenceOrUsage
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>An OccurrenceOrUsage is an abstract appearance of a part in the harness. This can either be a concrete part (with a part number a.s.o) or the description (specification / requirements) of a part that should be used at that position. In the first case it would be a PartOccurrence in the second case a PartUsage.  </p></body></html>
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the OccurrenceOrUsage. The identification is guaranteed to be unique within the context. Over all VEC-documents an OccurrenceOrUsage-instance can be trusted to be the same if the context-instance is the same and the identification of the OccurrenceOrUsage is the same.      </p>    </body> </html>  | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Room to specify additional identifiers for the OccurrenceOrUsage.      </p>    </body> </html>  | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|abbreviation | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies an abbreviation of the <i>OccurrenceOrUsage</i>. Normally this a human readable short name.      </p>    </body> </html>  | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the OccurrenceOrUsage.      </p>    </body> </html>  | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Role]({{< relref "role.md" >}}) | role | 0..* | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the different roles of the OccurrenceOrUsage.      </p>    </body> </html>  |
| [Instruction]({{< relref "instruction.md" >}}) | installationInstruction | 0..* | 0..1 | Room to specify InstallationInstruction(s) for the OccurrenceOrUsage.   |
| [UsageNode]({{< relref "usagenode.md" >}}) | realizedUsageNode | 0..1 | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>UsageNode</i> that is realized by this <i>OccurrenceOrUsage</i>.      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PartStructureSpecification]({{< relref "partstructurespecification.md" >}}) | 0..* | inBillOfMaterial | 0..* | <html>   <head>     </head>   <body>     <p> References the PartOccurrences that are building the bill of material of a composite part.      </p>    </body> </html>  |
| [OccurrenceOrUsageViewItem2D]({{< relref "occurrenceorusageviewitem2d.md" >}}) | 0..* | occurrenceOrUsage | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>OccurrenceOrUsages</i> which are represented by the view item.      </p>      <p> <b>Important: </b>To use one <i>OccurenceOrUsageViewItem</i> for multiple <i>OccurrenceOrUsages </i>is only valid, if the referenced items are true alternatives to each other. That means, they must have an identical placement, the geometrical models used for each item must be substitutable and the item must be mutually exclusive to each other.      </p>  </body> </html> |
| [OccurrenceOrUsageViewItem3D]({{< relref "occurrenceorusageviewitem3d.md" >}}) | 0..* | occurrenceOrUsage | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>OccurrenceOrUsages</i> which are represented by the view item.      </p>      <p> <b>Important: </b>To use one <i>OccurenceOrUsageViewItem</i> for multiple <i>OccurrenceOrUsages </i>is only valid, if the referenced items are true alternatives to each other. That means, they must have an identical placement, the geometrical models used for each item must be substitutable and the item must be mutually exclusive to each other.      </p>  </body> </html> |
| [PartWithSubComponentsRole]({{< relref "partwithsubcomponentsrole.md" >}}) | 0..* | subComponent | 0..* | <html>   <head>     </head>   <body>     <p> References the subcomponents that belong to this instance of a PartWithSubComponents.      </p>    </body> </html>  |
