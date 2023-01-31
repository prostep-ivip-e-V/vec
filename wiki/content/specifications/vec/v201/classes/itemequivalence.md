---
title: ItemEquivalence
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - ItemEquivalence
menu_name: vec-2.0.1
---
<p> Defines two or more ItemVersions to be equivalent out of the view of a certain company. The ItemEquivalence class will most likely be used by a company to express which PartNumber a certain PartVersion has in the context of other companies (same applies to <i>DocumentVersions</i>). However, for every other company separate ItemEquivalences are needed as the statement of equivalence can be very subjective.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pdm |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|companyName| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies the company which states the ItemEquivalence.      </p> | [ItemEquivalence]({{< relref "itemequivalence.md" >}}) |

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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>item</td>
        <td><a href="{{< relref "itemversion.md" >}}">ItemVersion</a></td>
        <td>2..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References all ItemVersion that are considered to be equivalent by the ItemEquivalence. A single <i>ItemEquivalence</i> shall only reference <i>ItemVersions</i> of the same class (either <i>DocumentVersions</i> or <i>PartVersions</i>).      </p></td>
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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>itemEquivalence</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "documentversion.md" >}}">DocumentVersion</a></td>
        <td>1</td>
        <td>Specifies ItemEquivalances defined by the DocumentVersion.</td>
    </tr>
    </tbody>
</table>



