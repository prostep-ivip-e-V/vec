---
title: Contract
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A Contract-instance describes the relationship between an ItemVersion-instance and a Company-instance additionally defining the role the company takes in reference to the ItemVersion.      </p>    </body> </html> 
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
|companyName | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies the company which acts in the specified Role in the Contract Relationship.      </p>    </body> </html>  | [Contract]({{< relref "contract.md" >}}) |
|contractRole | [ContractRole]({{< relref "contractrole.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> The role the company takes in reference to the associated ItemVersion. Predefined are the values: Oem, Supplier and Manufacturer.      </p>    </body> </html>  | [Contract]({{< relref "contract.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [VecContent]({{< relref "veccontent.md" >}}) | 1 | contract | 0..* | Specifies the contracts used in the VEC-file.   |
| [ItemVersion]({{< relref "itemversion.md" >}}) | 0..* | contract | 0..* | References the contracts that apply to an ItemVersion.  |
