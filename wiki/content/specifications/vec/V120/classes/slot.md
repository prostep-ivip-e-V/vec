---
title: Slot
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A slot is a group of cavities in a connector housing with own properties. The design of a slot is described in a SlotSpecification.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [AbstractSlot]({{< relref "abstractslot.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Connector Housings]({{< relref "../description-of-components/connector-housings" >}})<br/> [EE-Components]({{< relref "../description-of-components/ee-components" >}})<br/> [Instances of Connector Housings]({{< relref "../instances-of-components/instances-of-connector-housings" >}})<br/> [Supplementary Parts]({{< relref "../description-of-components/supplementary-parts" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|slotNumber | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies the number of the slot. This must be unique within a ConnectorHousingSpecification.  </p></body></html> | [AbstractSlot]({{< relref "abstractslot.md" >}}) |
|colorInformation | [Color]({{< relref "color.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the color of the slot.      </p>    </body> </html>  | [Slot]({{< relref "slot.md" >}}) |
|sealingType | [SlotSealingType]({{< relref "slotsealingtype.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the type of the sealing of the slot, if sealed. The values are defined in an <i>OpenEnumeration</i>.      </p>    </body> </html>  | [Slot]({{< relref "slot.md" >}}) |
|permittedTerminalSupplierCompanyNames | [String]({{< relref "string.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> If this attribute is defined, it is only permitted to use terminals of one of the listed terminal suppliers.      </p>      <p> The used company name shall be same as the one used as <i>PartVersion.companyName</i> for part numbers of this supplier.      </p>    </body> </html>  | [Slot]({{< relref "slot.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartRelation]({{< relref "partrelation.md" >}}) | supplementaryParts | 0..* | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>PartRelations</i> that specify supplementary parts for this slot.      </p>  </body> </html> |
| [Cavity]({{< relref "cavity.md" >}}) | cavity | 1..* | 1 | <html>   <head>     </head>   <body>     <p> Specifies the Cavities forming the Slot.      </p>    </body> </html>  |
