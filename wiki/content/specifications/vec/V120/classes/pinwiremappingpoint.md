---
title: PinWireMappingPoint
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body> The <i>PinWireMappingPoint </i>creates a single variance free mapping between a <i>ContactPoint</i> and a <i>PinComponentReference </i>within a <i>PinWireMappingSpecification</i> (more details there)<i>.</i></body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pin_wire_mapping |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Pin Wire Mapping]({{< relref "../connectivity/pin-wire-mapping" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PinComponentReference]({{< relref "pincomponentreference.md" >}}) | pinComponentReference | 1 |  |  |
| [ContactPoint]({{< relref "contactpoint.md" >}}) | contactPoint | 1 |  |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PinWireMappingSpecification]({{< relref "pinwiremappingspecification.md" >}}) |  |  |  |  |
