---
title: Contract
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - Contract
menu_name: vec-1.1.2
---
<p> A Contract-instance describes the relationship between an ItemVersion-instance and a Company-instance additionally defining the role the company takes in reference to the ItemVersion.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pdm |
| **Applied Stereotype**  | [constant]({{< relref "constant.md" >}})<br/>  |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|companyName | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies the company which acts in the specified Role in the Contract Relationship.      </p> | [Contract]({{< relref "contract.md" >}}) |
|contractRole | [ContractRole]({{< relref "contractrole.md" >}}) | 1 | <p> The role the company takes in reference to the associated ItemVersion. Predefined are the values: Oem, Supplier and Manufacturer.      </p> | [Contract]({{< relref "contract.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ItemVersion]({{< relref "itemversion.md" >}}) | 0..* | contract | 0..* | References the contracts that apply to an ItemVersion. |
| [VecContent]({{< relref "veccontent.md" >}}) | 1 | contract | 0..* | Specifies the contracts used in the VEC-file. |
