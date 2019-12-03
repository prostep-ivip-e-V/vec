---
title: PinComponentReference
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>A PinComponentReference represents the usage of a PinComponent in the context of a PartUsage or PartOccurrence.  (KBLFRM-401) </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Instances of EE-Components]({{< relref "../instances-of-components/instances-of-ee-components" >}})<br/> [Pin Wire Mapping]({{< relref "../connectivity/pin-wire-mapping" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the PinComponentReference. The identification is guaranteed to be unique within the HousingComponentReference.      </p>    </body> </html>  | [PinComponentReference]({{< relref "pincomponentreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PinComponent]({{< relref "pincomponent.md" >}}) | pinComponent | 1 | 0..* | Points to the PinComponent referenced by the PinComponent reference.  (KBLFRM-401)  |
| [TerminalRole]({{< relref "terminalrole.md" >}}) | terminalRole | 0..1 | 0..1 | References the TerminalRole of PinComponentReference. This is required to specify a Mating for EEComponents with other EEComponents or a Harness.  (KBLFRM-401)  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [HousingComponentReference]({{< relref "housingcomponentreference.md" >}}) | 1 | pinComponentRef | 0..* | Specifies the PinComponentReferences used in the HousingComponentReference.  (KBLFRM-401)  |
| [PinWireMappingPoint]({{< relref "pinwiremappingpoint.md" >}}) |  | pinComponentReference | 1 |  |
