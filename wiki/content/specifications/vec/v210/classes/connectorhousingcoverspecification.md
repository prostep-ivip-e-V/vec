---
title: ConnectorHousingCoverSpecification
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - ConnectorHousingCoverSpecification
menu_name: vec-2.1.0
---
<p> Specification for the definition of covers for connectors. A <i>ConnectorHousingCover</i> is used to protect the contacting side (front) of the connector during transport of the harness or in the vehicle, if the connector remains unconnected (e.g. in case of &quot;give-away&quot; features or retrofit options).      </p>      <p> There are two types of covers, on the one hand components whose sole purpose is to be used as a cover and on the other hand normal harness connectors which can also be used as covers, if necessary sealed with additional plugs. The former have the <i>PrimaryPartType=&quot;</i><i>ConnectorCover&quot;</i> and are only specified by a <i>ConnectorHousingCoverSpecification, </i>the latter have the <i>PrimaryPartType=&quot;ConnectorHousing&quot; </i>and have an additional <i>ConnectorHousingCoverSpecification</i><i>. </i>      </p>      <p> The relation between a connect and its covers is established in part master data with the <i>PartRelation.</i>      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType| [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |


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
        <td>connectorHousingCoverSpecification</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "connectorhousingcoverrole.md" >}}">ConnectorHousingCoverRole</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    </tbody>
</table>



