﻿---
title: PartOccurrence
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - PartOccurrence
menu_name: vec-1.1.1
---
<p>A PartOccurrence is an instance of a component with a specified part number (PartVersion). </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | part_structure |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the OccurrenceOrUsage. The identification is guaranteed to be unique within the context. Over all VEC-documents an OccurrenceOrUsage-instance can be trusted to be the same if the context-instance is the same and the identification of the OccurrenceOrUsage is the same.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Room to specify additional identifiers for the OccurrenceOrUsage.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|abbreviation | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Specifies an abbreviation of the <i>OccurrenceOrUsage</i>. Normally this a human readable short name.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the OccurrenceOrUsage.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|isSecondaryAlternative | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p>If a PartUsage is realized by more than one PartOccurrence it is possible to specify which one is the preferred.   (see KBLFRM-264) </p> | [PartOccurrence]({{< relref "partoccurrence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartOccurrence]({{< relref "partoccurrence.md" >}}) | instanciatedOccurrence | 0..* | 0..* | <p> References the PartOccurrence which is instantiated by the PartOccurrence. This reference is for example needed in the case of usage of assemblies.      </p> |
| [PartOccurrence]({{< relref "partoccurrence.md" >}}) | referenceElement | 0..* | 0..* | <p> References the PartOcurrence for which this PartOccurrence is an accessory.      </p> |
| [PartUsage]({{< relref "partusage.md" >}}) | realizedPartUsage | 0..1 | 0..* | References the PartUsage that is realized by the PartOccurrence. |
| [PartOccurrence]({{< relref "partoccurrence.md" >}}) | alternativeOccurrence | 0..* | 0..* | <p> References the PartOcurrences that are an alternative for this PartOccurrence.      </p> |
| [PartVersion]({{< relref "partversion.md" >}}) | part | 0..1 | 0..* | <p> References the PartVersion that is instantiated by this PartOccurrence.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PartOccurrence]({{< relref "partoccurrence.md" >}}) | 0..* | alternativeOccurrence | 0..* | <p> References the PartOcurrences that are an alternative for this PartOccurrence.      </p> |
| [ModuleList]({{< relref "modulelist.md" >}}) | 0..* | completionComponents | 1..* | References the components that are used as completition, if any of the Modules in the ModuleList appears in a configuration. |
| [CompositionSpecification]({{< relref "compositionspecification.md" >}}) | 1 | component | 0..* | <p> Specifies the PartOccurrences defined in the CompositionSpecification.      </p> |
| [PartStructureSpecification]({{< relref "partstructurespecification.md" >}}) | 0..* | inBillOfMaterial | 0..* | <p> References the PartOccurrences that are building the bill of material of a composite part.      </p> |
| [PartOccurrence]({{< relref "partoccurrence.md" >}}) | 0..* | instanciatedOccurrence | 0..* | <p> References the PartOccurrence which is instantiated by the PartOccurrence. This reference is for example needed in the case of usage of assemblies.      </p> |
| [PartOccurrence]({{< relref "partoccurrence.md" >}}) | 0..* | referenceElement | 0..* | <p> References the PartOcurrence for which this PartOccurrence is an accessory.      </p> |
