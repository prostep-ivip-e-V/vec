---
title: OccurrenceOrUsage
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - OccurrenceOrUsage
menu_name: vec-2.1.0
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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the <i>OccurrenceOrUsage</i>. The identification is guaranteed to be unique within the context. For all VEC-documents an <i>OccurrenceOrUsage</i>-instance can be trusted to be the same if the context-instance is the same and the identification of the <i>OccurrenceOrUsage</i> is the same.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|aliasId| [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Room to specify additional identifiers for the <i>OccurrenceOrUsage</i>.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|abbreviation| [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Specifies an abbreviation of the <i>OccurrenceOrUsage</i>. Normally this a human readable short name.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the <i>OccurrenceOrUsage</i>.      </p> | [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) |

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
        <td>role</td>
        <td><a href="{{< relref "role.md" >}}">Role</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td><p> Specifies the different roles of the OccurrenceOrUsage.      </p></td>
    </tr>
    <tr>
        <td>referenceElement</td>
        <td><a href="{{< relref "occurrenceorusage.md" >}}">OccurrenceOrUsage</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>OccurrenceOrUsage</i> for which this <i>OccurrenceOrUsage</i> is an accessory /&#160;supplementary component. If an <i>OccurrenceOrUsage</i> defines more than one <i>referenceElement</i>, the semantic is that it is related to the combination all &quot;reference elements&quot; and not to each individually. In other words, in a variable product definition the <i>OccurrenceOrUsage</i> only exists if all <i>referenceElements</i> exist.      </p></td>
    </tr>
    <tr>
        <td>realizedUsageNode</td>
        <td><a href="{{< relref "usagenode.md" >}}">UsageNode</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>UsageNode</i> that is realized by this <i>OccurrenceOrUsage</i>.      </p></td>
    </tr>
    <tr>
        <td>installationInstruction</td>
        <td><a href="{{< relref "instruction.md" >}}">Instruction</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>Room to specify InstallationInstruction(s) for the OccurrenceOrUsage.</td>
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
        <td>completionComponents</td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "modulelist.md" >}}">ModuleList</a></td>
        <td>0..*</td>
        <td>References the components that are used as completion, if any of the Modules in the ModuleList appears in a configuration.</td>
    </tr>
    <tr>
        <td>inBillOfMaterial</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "partstructurespecification.md" >}}">PartStructureSpecification</a></td>
        <td>0..*</td>
        <td><p> References the PartOccurrences that are building the bill of material of a composite part.      </p></td>
    </tr>
    <tr>
        <td>occurrenceOrUsage</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "occurrenceorusageviewitem3d.md" >}}">OccurrenceOrUsageViewItem3D</a></td>
        <td>0..*</td>
        <td><p> Specifies the <i>OccurrenceOrUsages</i> which are represented by the view item.      </p>      <p> <b>Important: </b>To use one <i>OccurenceOrUsageViewItem</i> for multiple <i>OccurrenceOrUsages </i>is only valid, if the referenced items are true alternatives to each other. That means, they must have an identical placement, the geometrical models used for each item must be substitutable and the item must be mutually exclusive to each other.      </p></td>
    </tr>
    <tr>
        <td>occurrenceOrUsage</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "occurrenceorusageviewitem2d.md" >}}">OccurrenceOrUsageViewItem2D</a></td>
        <td>0..*</td>
        <td><p> Specifies the <i>OccurrenceOrUsages</i> which are represented by the view item.      </p>      <p> <b>Important: </b>To use one <i>OccurenceOrUsageViewItem</i> for multiple <i>OccurrenceOrUsages </i>is only valid, if the referenced items are true alternatives to each other. That means, they must have an identical placement, the geometrical models used for each item must be substitutable and the item must be mutually exclusive to each other.      </p></td>
    </tr>
    <tr>
        <td>referenceElement</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "occurrenceorusage.md" >}}">OccurrenceOrUsage</a></td>
        <td>0..*</td>
        <td><p> References the <i>OccurrenceOrUsage</i> for which this <i>OccurrenceOrUsage</i> is an accessory /&#160;supplementary component. If an <i>OccurrenceOrUsage</i> defines more than one <i>referenceElement</i>, the semantic is that it is related to the combination all &quot;reference elements&quot; and not to each individually. In other words, in a variable product definition the <i>OccurrenceOrUsage</i> only exists if all <i>referenceElements</i> exist.      </p></td>
    </tr>
    <tr>
        <td>subComponent</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "partwithsubcomponentsrole.md" >}}">PartWithSubComponentsRole</a></td>
        <td>0..*</td>
        <td><p> References the subcomponents that belong to this instance of a PartWithSubComponents.      </p></td>
    </tr>
    <tr>
        <td>usedSupplementaryParts</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "placementpointreference.md" >}}">PlacementPointReference</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>usedSupplementaryParts</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "slotreference.md" >}}">SlotReference</a></td>
        <td>0..*</td>
        <td><p> This is the relationship of the supplementary parts actually used in this <i>SlotReference.</i> This is the actual selection of the potential supplementary parts defined in the corresponding <i>Slot.supplementaryParts</i> association.      </p></td>
    </tr>
    </tbody>
</table>



