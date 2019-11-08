---
title: SIUnit
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> The SIUnit class can define quantities in the terms of the SI-Unit-System by specifying the corresponding SI prefix (optional) and a SI unit name. The usage of SI units must be the preferred way of expressing units, since these units can be easily translated into other SI units.      </p>    </body> </html> 
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
|siUnitName | [SiUnitName]({{< relref "siunitname.md" >}}) | 1 | <html><body><p>Specifies the name of SI unit (e.g. metre, second,...) </p></body></html> | [SIUnit]({{< relref "siunit.md" >}}) |
|siPrefix | [SiPrefix]({{< relref "siprefix.md" >}}) | 0..1 | <html><body><p>Specifies the prefix of the SI unit (e.g. milli, centi, mirco,...) </p></body></html> | [SIUnit]({{< relref "siunit.md" >}}) |

