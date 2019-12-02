---
title: ExtensionSlot
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> An <i>ExtensionSlot </i>defines a slot within an EE-Component where other EE-Components can plugged into (modular extension). This is necessary for example for modular power distributions.       </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [EE-Components]({{< relref "../description-of-components/ee-components" >}})<br/> [Instances of EE-Components]({{< relref "../instances-of-components/instances-of-ee-components" >}})<br/> [Supplementary Parts]({{< relref "../description-of-components/supplementary-parts" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Identification of the ExtensionSlot, which must be distinct for all ExtensionSlots of an EEComponent.      </p>    </body> </html>  | [ExtensionSlot]({{< relref "extensionslot.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartRelation]({{< relref "partrelation.md" >}}) | allowedInserts | 0..* | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>PartRelations</i> that are valid inserts for this <i>ExtensionSlot.</i>      </p>      <p> This reference points to <i>PartRelations</i> in order to allow referencing indirectly a <i>PartVersion </i>if the description of individual <i>PartVersions</i> is done with one physical VEC file per <i>PartVersion </i>and to allow the expression of optional inserts, choices etc. However, inserts for a <i>ExtensionSlot</i> are always <i>EEComponents</i> by itself. Therefore the referenced <i>PartVersion</i> shall have a <i>PrimaryPartType =&#160;EEComponent.</i>      </p>  </body> </html> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ExtensionSlotReference]({{< relref "extensionslotreference.md" >}}) |  | extensionSlot | 1 |  |
| [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) | 1 | extensionSlots | 0..* | Specifies the available ExtensionSlots of the EEComponent.  |
