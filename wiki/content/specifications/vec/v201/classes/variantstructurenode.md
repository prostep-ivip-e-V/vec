---
title: VariantStructureNode
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - VariantStructureNode
menu_name: vec-2.0.1
---
<p> <i>VariantStructureNodes</i> can be used to define a hierarchical structure on <i>VariantGroups</i>. Every <i>VariantStructureNodes</i> can reference <i>VariantGroups</i> and <i>VariantStructureNodes</i> as children.      </p>

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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the <i>VariantStructureNode</i>.      </p> | [VariantStructureNode]({{< relref "variantstructurenode.md" >}}) |
|aliasId| [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Room to specify additional identifiers for the <i>VariantStructureNode</i>.      </p> | [VariantStructureNode]({{< relref "variantstructurenode.md" >}}) |
|abbreviation| [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..1 | <p> Room for a human readable short name, title etc. of the <i>VariantStructureNode</i>.      </p> | [VariantStructureNode]({{< relref "variantstructurenode.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> On optional human readable description of the <i>VariantStructureNode</i>.      </p> | [VariantStructureNode]({{< relref "variantstructurenode.md" >}}) |

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
        <td>containedGroups</td>
        <td><a href="{{< relref "variantgroup.md" >}}">VariantGroup</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>childNodes</td>
        <td><a href="{{< relref "variantstructurenode.md" >}}">VariantStructureNode</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
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
        <td>childNodes</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "variantstructurenode.md" >}}">VariantStructureNode</a></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td>rootNode</td>
        <td>1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "variantstructurespecification.md" >}}">VariantStructureSpecification</a></td>
        <td>0..1</td>
        <td></td>
    </tr>
    </tbody>
</table>



