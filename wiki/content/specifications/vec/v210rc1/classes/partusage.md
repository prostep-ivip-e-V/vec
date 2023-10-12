---
title: PartUsage
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - PartUsage
menu_name: vec-2.1.0
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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the OccurrenceOrUsage. The identification is guaranteed to be unique within the context. For all VEC-documents an OccurrenceOrUsage-instance can be trusted to be the same if the context-instance is the same and the identification of the OccurrenceOrUsage is the same.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|aliasId| [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Room to specify additional identifiers for the OccurrenceOrUsage.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|abbreviation| [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Specifies an abbreviation of the <i>OccurrenceOrUsage</i>. Normally this a human readable short name.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the OccurrenceOrUsage.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|primaryPartUsageType| [PrimaryPartType]({{< relref "primaryparttype.md" >}}) | 1 | <p>The primary type of the PartUsage defines the type of the described part (e.g. ConnectorHousing, Fixing, etc.) Since the VEC supports dual use parts (e.g. Fixing &amp; WireProtection) there is no direct connection between the primaryPartUsageType and the allowed specifications for the description of a PartUsage.  </p> | [PartUsage]({{< relref "partusage.md" >}}) |

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
        <td>partSubstitution</td>
        <td><a href="{{< relref "partsubstitutionspecification.md" >}}">PartSubstitutionSpecification</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>partOrUsageRelatedSpecification</td>
        <td><a href="{{< relref "partorusagerelatedspecification.md" >}}">PartOrUsageRelatedSpecification</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the PartOrUsageRelatedSpecification(s) that describe the PartOrUsageRelatedSpecification.  KBLFRM-399</td>
    </tr>
    <tr>
        <td>instanciatedUsage</td>
        <td><a href="{{< relref "partusage.md" >}}">PartUsage</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td></td>
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
        <td>instanciatedUsage</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "partusage.md" >}}">PartUsage</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>partUsage</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "partusagespecification.md" >}}">PartUsageSpecification</a></td>
        <td>1</td>
        <td>Specifies the PartUsages defined by the PartUsageSpecification.</td>
    </tr>
    <tr>
        <td>realizedPartUsage</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "partoccurrence.md" >}}">PartOccurrence</a></td>
        <td>0..*</td>
        <td>References the PartUsages that are realized by the PartOccurrence.</td>
    </tr>
    </tbody>
</table>



