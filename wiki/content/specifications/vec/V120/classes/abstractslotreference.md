---
title: AbstractSlotReference
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> An <i>AbstractSlotReference</i> represents the usage of an AbstractSlot in the context of PartUsage or PartOccurrence.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [ModularSlotReference]({{< relref "modularslotreference.md" >}}), [SlotReference]({{< relref "slotreference.md" >}}) |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the SlotReference. The identification is guaranteed to be unique within the ConnectorHousingRole. The cavity &amp; slot number is defined by the associated cavity and slot.      </p>    </body> </html>  | [AbstractSlotReference]({{< relref "abstractslotreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [AbstractSlot]({{< relref "abstractslot.md" >}}) | referencedSlot | 1 | 0..* | Points to the slot referenced by the slot reference.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [SlotCoupling]({{< relref "slotcoupling.md" >}}) | 0..* | firstSlot | 1 |  |
| [SlotCoupling]({{< relref "slotcoupling.md" >}}) | 0..* | secondSlot | 1 |  |
| [ConnectorHousingRole]({{< relref "connectorhousingrole.md" >}}) | 1 | slotReference | 0..* | Specifies the SlotReferences used in the ConnectorHousingRole.   |
