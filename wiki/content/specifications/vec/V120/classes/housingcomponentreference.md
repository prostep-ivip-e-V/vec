---
title: HousingComponentReference
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>A HousingComponentReference represents the usage of a HousingComponent in the context of a PartUsage or PartOccurrence.  (KBLFRM-401) </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the HousingComponentReference. The identification is guaranteed to be unique within the EEComponentRole.      </p>    </body> </html>  | [HousingComponentReference]({{< relref "housingcomponentreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ConnectorHousingRole]({{< relref "connectorhousingrole.md" >}}) | connectorHousingRole | 0..1 | 0..1 |  |
| [PinComponentReference]({{< relref "pincomponentreference.md" >}}) | pinComponentRef | 0..* | 1 | Specifies the PinComponentReferences used in the HousingComponentReference.  (KBLFRM-401)  |
| [HousingComponent]({{< relref "housingcomponent.md" >}}) | housingComponent | 1 | 0..* | Points to the HousingComponent referenced by the HousingComponent reference.  (KBLFRM-401)  |
| [ComponentConnector]({{< relref "componentconnector.md" >}}) | componentConnector | 0..1 | 0..* | References the ComponentConnector that is realized by the referenced HousingComponentReference. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [EEComponentRole]({{< relref "eecomponentrole.md" >}}) | 1 | housingComponentRef | 0..* | Specifies the HousingComponentReferences used in the EEComponentRole.  (KBLFRM-401)  |
