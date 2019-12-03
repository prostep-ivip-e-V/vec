---
title: ContactPoint
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A contact point defines the relationship between Terminals, Seals, Plugs, Cavities and Wires. A ContactPoint is expected to have only one electrical potential.     </p>      <p> If a contacting of a terminal has more than one potential (e.g. a coax-contact) one contact point for each potential is needed.     </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | contacting |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Contacting Specification]({{< relref "../connectivity/contacting-specification" >}})<br/> [Pin Wire Mapping]({{< relref "../connectivity/pin-wire-mapping" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the ContactPoint. The identification is guaranteed to be unique within the ContactingSpecification.      </p>    </body> </html>  | [ContactPoint]({{< relref "contactpoint.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CavityMounting]({{< relref "cavitymounting.md" >}}) | cavityMounting | 0..* | 1 | Defines the mounting to a cavity of the terminal associated with the ContactPoint.  The cardinality is 0..* in order to allow a variant dependant cavity mounting. In such a scenario a cavity mounting is valid in a configuration if all addressed cavities and therefore the associated connector housing is available.   |
| [WireMounting]({{< relref "wiremounting.md" >}}) | wireMounting | 0..* | 1 | Specifies the WireMouting defined by ContactPoint. More than one WireMounting is allowed in order to support variance. In concrete configuration the WireMounting with all referenced elements present is used.  |
| [TerminalRole]({{< relref "terminalrole.md" >}}) | mountedTerminal | 0..1 | 0..* | References the terminal that is used for contacting defined by the ContactPoint.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ContactingSpecification]({{< relref "contactingspecification.md" >}}) | 1 | contactPoint | 0..* | Specifies the ContactPoints defined by the ContactingSpecification.  |
| [PinWireMappingPoint]({{< relref "pinwiremappingpoint.md" >}}) |  | contactPoint | 1 |  |
