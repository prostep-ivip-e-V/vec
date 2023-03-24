---
title: Contract
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - Contract
menu_name: vec-2.0.2
---
<p> A Contract-instance describes the relationship between an ItemVersion-instance and a Company-instance additionally defining the role the company takes in reference to the ItemVersion.      </p>

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
|companyName| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies the company which acts in the specified Role in the Contract Relationship.      </p> | [Contract]({{< relref "contract.md" >}}) |
|contractRole| [ContractRole]({{< relref "contractrole.md" >}}) | 1 | <p> The role the company takes in reference to the associated ItemVersion. Predefined are the values: OEM, Supplier and Manufacturer.      </p> | [Contract]({{< relref "contract.md" >}}) |


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
        <td>contract</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "itemversion.md" >}}">ItemVersion</a></td>
        <td>0..*</td>
        <td>References the contracts that apply to an ItemVersion.</td>
    </tr>
    <tr>
        <td>contract</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "veccontent.md" >}}">VecContent</a></td>
        <td>1</td>
        <td>Specifies the contracts used in the VEC-file.</td>
    </tr>
    </tbody>
</table>



