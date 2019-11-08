---
title: ItemEquivalence
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Defines two or more ItemVersions to be equivalent out of the view of a certain company. The ItemEquivalence class will most likely be used by a company to express which PartNumber a certain PartVersion has in the context of other companies. However, for every other company separate ItemVersion-instances are needed as the statement of equivalence can be very subjective.      </p>    </body> </html> 
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
|companyName | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies the company which states the ItemEquivalence.      </p>    </body> </html>  | [ItemEquivalence]({{< relref "itemequivalence.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ItemVersion]({{< relref "itemversion.md" >}}) | item | 2..* | 0..* | References all ItemVersion that are considered to be equivalent by the ItemEquivalence.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [DocumentVersion]({{< relref "documentversion.md" >}}) | 1 | itemEquivalence | 0..* | Specifies ItemEquivalances defined by the DocumentVersion.  |
