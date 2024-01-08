---
title: VariantGroup
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - VariantGroup
menu_name: vec-2.1.0
---
<p> With a VariantGroup it is possible to group VariantCodes. The semantic of this grouping should be defined with the groupType (e.g. composition, choice, etc.).      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | variants |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p>Specifies a unique identification of the variant code. </p> | [VariantGroup]({{< relref "variantgroup.md" >}}) |
|aliasId| [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Room to specify additional identifiers for the VariantGroup.      </p> | [VariantGroup]({{< relref "variantgroup.md" >}}) |
|abbreviation| [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..1 | <p> Room for a human readable short name, title etc. of the VariantGroup.      </p> | [VariantGroup]({{< relref "variantgroup.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>On optional human readable description of the variant group. </p> | [VariantGroup]({{< relref "variantgroup.md" >}}) |
|groupType| [VariantGroupType]({{< relref "variantgrouptype.md" >}}) | 0..1 | <p> Allows the classification of a VariantGroups into different types. For example: - composition (e.g. winter package) - choice (e.g. right hand / left hand driving). Agreed literals for this attribute are defined in the OpenEnumeration <i>VariantGroupType.</i>      </p> | [VariantGroup]({{< relref "variantgroup.md" >}}) |

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
        <td>variantCode</td>
        <td><a href="{{< relref "variantcode.md" >}}">VariantCode</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the VariantCodes that are member of the VariantGroup.</td>
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
        <td>containedGroups</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "variantstructurenode.md" >}}">VariantStructureNode</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>variantGroup</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "variantgroupspecification.md" >}}">VariantGroupSpecification</a></td>
        <td>1</td>
        <td>Specifies the individual VariantGroups defined in the VariantGroupSpecification.</td>
    </tr>
    </tbody>
</table>



