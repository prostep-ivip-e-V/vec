---
title: DefaultDimension
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body> A <i>DefaultDimension</i> defines a tolerance value that shall be applied to a part, if no explicit tolerance value has been defined.   </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placement |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|dimensionValueRange | [ValueRange]({{< relref "valuerange.md" >}}) | 1 | <html>   <head>     </head>   <body> dimensionValueRange defines the magnitude of measurements for which the tolerance applies (e.g. length from 500mm - 1500mm).   </body> </html>  | [DefaultDimension]({{< relref "defaultdimension.md" >}}) |
|dimensionType | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body> The <i>dimensionType</i> defines to which measurements this <i>DefaultDimension</i> applies (e.g. segment lengths, wire lengths).   </body> </html>  | [DefaultDimension]({{< relref "defaultdimension.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Tolerance]({{< relref "tolerance.md" >}}) | toleranceIndication | 1 | 0..1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [DefaultDimensionSpecification]({{< relref "defaultdimensionspecification.md" >}}) |  |  |  |  |
