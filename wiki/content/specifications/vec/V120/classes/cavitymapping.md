---
title: CavityMapping
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Defines the mapping of two cavities contained Slot A &amp; B of the containing SlotMapping-object.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | mapping |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Cavity Mapping]({{< relref "../description-of-components/cavity-mapping" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identificationA | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>The identification of the Cavity on side A </p></body></html> | [CavityMapping]({{< relref "cavitymapping.md" >}}) |
|identificationB | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>The identification of the Cavity on side B </p></body></html> | [CavityMapping]({{< relref "cavitymapping.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [SlotMapping]({{< relref "slotmapping.md" >}}) | 1 | cavityMapping | 0..* |  |
