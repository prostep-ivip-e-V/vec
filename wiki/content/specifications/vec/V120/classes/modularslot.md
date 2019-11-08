---
title: ModularSlot
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>A ModularSlot is a place in a connector housing where different other connector housings can be placed during the assembly (e.g. by clicking them into the connector housing).  </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [AbstractSlot]({{< relref "abstractslot.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|slotNumber | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies the number of the slot. This must be unique within a ConnectorHousingSpecification.  </p></body></html> | [AbstractSlot]({{< relref "abstractslot.md" >}}) |
|optional | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies whether the allocation of the ModularSlot is optional or not (can a usage of the connector housing leave this ModularSlot empty.      </p>    </body> </html>  | [ModularSlot]({{< relref "modularslot.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartRelation]({{< relref "partrelation.md" >}}) | allowedInserts | 0..* | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>PartRelations</i> that are valid inserts for this <i>ModularSlot.</i>      </p>      <p> This reference points to <i>PartRelations</i> in order to allow referencing indirectly a <i>PartVersion </i>if the description of individual <i>PartVersions</i> is done with one physical VEC file per <i>PartVersion </i>and to allow the expression of optional inserts, choices etc. However, inserts for a <i>ModularSlot</i> are always ConnectorHousings by itself. Therefore the referenced <i>PartVersion</i> shall have a <i>PrimaryPartType =&#160;ConnectorHousing</i>      </p>  </body> </html> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ModularSlotAddOn]({{< relref "modularslotaddon.md" >}}) | 0..* | slot | 1 |  |
