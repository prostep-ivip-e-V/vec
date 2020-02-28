---
title: ContactPoint
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - ContactPoint
menu_name: vec-1.1.2
---
<p> A contact point defines the relationship between Terminals, Seals, Plugs, Cavities and Wires. A ContactPoint is expected to have only one electrical potential.     </p>      <p> If a contacting of a terminal has more than one potential (e.g. a coax-contact) one contact point for each potential is needed.     </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | contacting |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the ContactPoint. The identification is guaranteed to be unique within the ContactingSpecification.      </p> | [ContactPoint]({{< relref "contactpoint.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [WireMounting]({{< relref "wiremounting.md" >}}) | wireMounting | 0..* | 1 | Specifies the WireMouting defined by ContactPoint. More than one WireMounting is allowed in order to support variance. In concrete configuration the WireMounting with all referenced elements present is used. |
| [CavityMounting]({{< relref "cavitymounting.md" >}}) | cavityMounting | 0..* | 1 | Defines the mounting to a cavity of the terminal associated with the ContactPoint.  The cardinality is 0..* in order to allow a variant dependant cavity mounting. In such a scenario a cavity mounting is valid in a configuration if all addressed cavities and therefore the associated connector housing is available. |
| [TerminalRole]({{< relref "terminalrole.md" >}}) | mountedTerminal | 0..1 | 0..* | References the terminal that is used for contacting defined by the ContactPoint. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ContactingSpecification]({{< relref "contactingspecification.md" >}}) | 1 | contactPoint | 0..* | Specifies the ContactPoints defined by the ContactingSpecification. |
