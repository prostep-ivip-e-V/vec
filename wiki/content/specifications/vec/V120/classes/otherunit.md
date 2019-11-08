---
title: OtherUnit
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>The OtherUnit class can be used to define a unit, which is necessary in the context of data exchange but not contained in the standard systems (e.g. Piece).  </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | physical_information |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Unit]({{< relref "unit.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|exponent | [Integer]({{< relref "integer.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Defines the exponent with which this unit instance should be used. In order to define square meters for example, the SIUnit &quot;metre&quot; with an exponent of 2 will be used. If no exponent is defined it is equivalent to the value 1.      </p>    </body> </html>  | [Unit]({{< relref "unit.md" >}}) |
|otherUnitName | [OtherUnitName]({{< relref "otherunitname.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies the name of the unit.      </p>    </body> </html>  | [OtherUnit]({{< relref "otherunit.md" >}}) |

