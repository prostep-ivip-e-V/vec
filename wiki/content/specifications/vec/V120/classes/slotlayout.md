---
title: SlotLayout
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> For regularly laid out slots the slot layout describes the positions of the cavities      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Connector Housings]({{< relref "../description-of-components/connector-housings" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|gridX | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>The horizontal distance between the center points of two cavities. </p></body></html> | [SlotLayout]({{< relref "slotlayout.md" >}}) |
|gridY | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>The vertical distance between the center points of two cavities. </p></body></html> | [SlotLayout]({{< relref "slotlayout.md" >}}) |
|rowCount | [Integer]({{< relref "integer.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> The number of cavity rows of the slot.      </p>    </body> </html>  | [SlotLayout]({{< relref "slotlayout.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [SlotSpecification]({{< relref "slotspecification.md" >}}) | 1 | slotLayout | 0..1 | <html>   <head>     </head>   <body>     <p> References the layout associated with this slot.      </p>    </body> </html>  |
