---
title: PartOccurrence
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - PartOccurrence
menu_name: vec-2.1.0
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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the OccurrenceOrUsage. The identification is guaranteed to be unique within the context. For all VEC-documents an OccurrenceOrUsage-instance can be trusted to be the same if the context-instance is the same and the identification of the OccurrenceOrUsage is the same.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|aliasId| [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Room to specify additional identifiers for the OccurrenceOrUsage.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|abbreviation| [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Specifies an abbreviation of the <i>OccurrenceOrUsage</i>. Normally this a human readable short name.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the OccurrenceOrUsage.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|isSecondaryAlternative| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p>If a PartUsage is realized by more than one PartOccurrence it is possible to specify which one is the preferred.   (see KBLFRM-264) </p> | [PartOccurrence]({{< relref "partoccurrence.md" >}}) |

## Outgoing Relations
<table>
    <thead>
        <tr>
           <th colspan="6">Other End</th>
           <th colspan="1">This End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>instanciatedOccurrence</td>
        <td><a href="{{< relref "partoccurrence.md" >}}">PartOccurrence</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the PartOccurrence which is instantiated by the PartOccurrence. This reference is for example needed in the case of usage of assemblies.      </p></td>
    </tr>
    <tr>
        <td>alternativeOccurrence</td>
        <td><a href="{{< relref "partoccurrence.md" >}}">PartOccurrence</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the PartOccurrences that are an alternative for this PartOccurrence.      </p></td>
    </tr>
    <tr>
        <td>part</td>
        <td><a href="{{< relref "partversion.md" >}}">PartVersion</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the PartVersion that is instantiated by this PartOccurrence.      </p></td>
    </tr>
    <tr>
        <td>realizedPartUsage</td>
        <td><a href="{{< relref "partusage.md" >}}">PartUsage</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the PartUsages that are realized by the PartOccurrence.</td>
    </tr>
    </tbody>
</table>

##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>alternativeOccurrence</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "partoccurrence.md" >}}">PartOccurrence</a></td>
        <td>0..*</td>
        <td><p> References the PartOccurrences that are an alternative for this PartOccurrence.      </p></td>
    </tr>
    <tr>
        <td>component</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "compositionspecification.md" >}}">CompositionSpecification</a></td>
        <td>1</td>
        <td><p> Specifies the PartOccurrences defined in the CompositionSpecification.      </p></td>
    </tr>
    <tr>
        <td>instanciatedOccurrence</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "partoccurrence.md" >}}">PartOccurrence</a></td>
        <td>0..*</td>
        <td><p> References the PartOccurrence which is instantiated by the PartOccurrence. This reference is for example needed in the case of usage of assemblies.      </p></td>
    </tr>
    </tbody>
</table>



