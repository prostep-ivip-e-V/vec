---
title: PartRelation
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - PartRelation
menu_name: vec-2.1.0
---
<p> A <i>PartRelation</i> defines additional parts (e.g. accessories) for a specific part. These parts are in some way or usage scenario required for the part itself to be used. However, they are not included with the part number and have to ordered separately. This can be used for example for caps, cable ties etc.      </p>      <p> The associated <i>PartRelations</i> of a <i>GeneralTechnicalPartSpecification</i> represent a configurable bill of material that can/must be ordered together with the part, when it is used. Each <i>PartRelation </i>represents an item /&#160;line in this bill of material. The semantic by which a <i>PartRelation </i>is resolved to <i>PartVersions </i>is defined by the <i>PartRelationType. </i>If multiple <i>PartRelations </i>resolve to the same <i>PartVersions</i> the resulting bill of material is the sum of them.      </p>      <p> If a <i>PartRelation</i> references more than one <i>accessoryPart</i> the <i>PartRelationType</i> defines the semantic to resolve this reference for a resulting bill of material. If the type is <i>Mandatory</i> all referenced <i>PartVersions</i> shall be in the resulting bill of material. If the type is <i>Optional</i>, the referenced <i>PartVersions </i>can be selected by choice into the resulting bill of material. However, the choice applies to <u>all</u> <i>PartVersion</i>s of one <i>PartRelation. </i>For<i> Mandatory </i>it is semantically equivalent to have <u>one</u> <i>PartRelation</i> referencing <u>N</u> <i>PartVersions</i> or to have <u>N</u><i> PartRelations</i>, each referencing <u>one</u> <i>PartVersion. </i>The <i>PartRelationType OneOfAll</i> defines, that exactly <u>one</u> of the referenced <i>PartVersions</i> shall be chosen for the resulting bill of material.      </p>      <p> If the same <i>PartVersion</i> is referenced multiple times, each reference counts as its own position.      </p>      <p> <u><b>Example:</b></u> To express that a <i>PartVersion </i>shall be used at least three times and with a maximum of 6 times, three mandatory and three optional <i>PartRelations </i>to this <i>PartVersion </i>would be created.      </p>      <p> With these concepts, simple yes/no decisions can be represented. However, there cases where there are constraints between accessory parts (e.g. if part A, then choice of 2 x B&#160;or 1 x C). To express such logic in a static object model is not very feasible and inflexible. For such cases, the <i>relationType 'Custom' </i>was introduced. In this case, the relationships and constraints between all referenced <i>accessoryPart</i> can<i> </i>be expressed with some custom expression language in the <i>customRelationExpression </i>attribute. Even if it is custom, the expression shall only refer to elements that are contained in the <i>accessoryPart</i> relation and shall not influence other <i>PartRelations</i> of the same <i>GeneralTechnicalPartSpecification</i>.      </p>      <p> &#160;      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|relationType| [PartRelationType]({{< relref "partrelationtype.md" >}}) | 1 | <p>Specifies the type of the relation. </p> | [PartRelation]({{< relref "partrelation.md" >}}) |
|customRelationExpression| [String]({{< relref "string.md" >}}) | 0..1 | <p> Defines the relationship between the accessory parts in a proprietary expression language. This attribute shall only be used, if the <i>relationType =&#160;'Custom'.</i>      </p> | [PartRelation]({{< relref "partrelation.md" >}}) |

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
        <td>accessoryPart</td>
        <td><a href="{{< relref "partversion.md" >}}">PartVersion</a></td>
        <td>1..*</td>
        <td>N</td>
        <td>N</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the PartVersions that are related by the PartRelation.</td>
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
        <td>allowedInserts</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "extensionslot.md" >}}">ExtensionSlot</a></td>
        <td>0..*</td>
        <td><p> References the <i>PartRelations</i> that are valid inserts for this <i>ExtensionSlot.</i>      </p>      <p> This reference points to <i>PartRelations</i> in order to allow referencing indirectly a <i>PartVersion </i>if the description of individual <i>PartVersions</i> is done with one physical VEC file per <i>PartVersion </i>and to allow the expression of optional inserts, choices etc. However, inserts for an <i>ExtensionSlot</i> are always <i>EEComponents</i> by itself. Therefore, the referenced <i>PartVersion</i> shall have a <i>PrimaryPartType =&#160;EEComponent.</i>      </p></td>
    </tr>
    <tr>
        <td>allowedInserts</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "modularslot.md" >}}">ModularSlot</a></td>
        <td>0..*</td>
        <td><p> References the <i>PartRelations</i> that are valid inserts for this <i>ModularSlot.</i>      </p>      <p> This reference points to <i>PartRelations</i> in order to allow referencing indirectly a <i>PartVersion </i>if the description of individual <i>PartVersions</i> is done with one physical VEC file per <i>PartVersion </i>and to allow the expression of optional inserts, choices etc. However, inserts for a <i>ModularSlot</i> are always ConnectorHousings by itself. Therefore, the referenced <i>PartVersion</i> shall have a <i>PrimaryPartType =&#160;ConnectorHousing</i>      </p></td>
    </tr>
    <tr>
        <td>fixationAccessory</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wiretuplespecification.md" >}}">WireTupleSpecification</a></td>
        <td>1</td>
        <td>Specifies <i>PartRelations</i> that can / have to be used for the fixation.</td>
    </tr>
    <tr>
        <td>partRelation</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "generaltechnicalpartspecification.md" >}}">GeneralTechnicalPartSpecification</a></td>
        <td>1</td>
        <td>Specifies possible relations (accessories) of the specified part with other PartVersion (e.g. caps, clips).</td>
    </tr>
    <tr>
        <td>supplementaryParts</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "placementpoint.md" >}}">PlacementPoint</a></td>
        <td></td>
        <td><p> References the <i>PartRelations</i> that specify supplementary parts for this <i>PlacementPoint</i>, e.g. cable ties for attaching the component on the harness.      </p></td>
    </tr>
    <tr>
        <td>supplementaryParts</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "slot.md" >}}">Slot</a></td>
        <td>0..*</td>
        <td><p> References the <i>PartRelations</i> that specify supplementary parts for this slot.      </p></td>
    </tr>
    </tbody>
</table>



