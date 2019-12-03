---
title: Coding
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specifies the coding of a slot or a connector housing.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Connector Housings]({{< relref "../description-of-components/connector-housings" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|coding | [CodingName]({{< relref "codingname.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies the name of the coding.      </p>  </body> </html> | [Coding]({{< relref "coding.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [AbstractSlot]({{< relref "abstractslot.md" >}}) | 0..1 | coding | 0..1 | Defines coding of the slot that is satisfied by the Slot.  |
| [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) | 0..1 | coding | 0..1 | Defines coding of the connector housing that is satisfied by the connector housing.   |
