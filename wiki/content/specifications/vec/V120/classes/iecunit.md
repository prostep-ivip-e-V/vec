---
title: IECUnit
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> The IECUnit class can define quantities in the terms of the IEC-Unit-System by specifying the corresponding IEC prefix (optional) and an IEC unit name.      </p>    </body> </html> 
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
|iecUnitName | [IECUnitName]({{< relref "iecunitname.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies the name of the IEC unit.      </p>    </body> </html>  | [IECUnit]({{< relref "iecunit.md" >}}) |
|iecPrefix | [IECPrefix]({{< relref "iecprefix.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the prefix of the IEC unit.      </p>    </body> </html>  | [IECUnit]({{< relref "iecunit.md" >}}) |

