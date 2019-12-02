---
title: ModularSlotAddOn
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specifies the wire addon needed to reach a <i>ModularSlot</i> from a specific <i>SegmentConnectionPoint</i>. The addon needed to reach the cavities of the insert(s) from this point is defined by the <i>ConnectorHousingSpecification </i>of the insert.      </p>    </body> </html> 
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
|wireAddOn | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies the wire length add on needed for the modular slot.      </p>    </body> </html>  | [ModularSlotAddOn]({{< relref "modularslotaddon.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ModularSlot]({{< relref "modularslot.md" >}}) | slot | 1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [SegmentConnectionPoint]({{< relref "segmentconnectionpoint.md" >}}) | 1 | ModularSlotAddOns | 0..* |  |
