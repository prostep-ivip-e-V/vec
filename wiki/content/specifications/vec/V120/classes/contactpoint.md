---
title: ContactPoint
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - ContactPoint
menu_name: vec-1.2.0
---
<p> A contact point defines the relationship between Terminals, Seals, Plugs, Cavities and Wires. It specifies a single contacting variant. This means that the contacting is manufactured, as specified by the <i>Contact</i>Point. Either all participants (Cavities, Terminals, Seals, Wires) set into a relationship by the <i>ContactPoint</i> exist in a specific harness or none. There is no requirement, to filter the participants of a contacting situation with information derived from VariantConfigurations or assembly /&#160;module associations in order to create a manufacturing variant.      </p>      <p> The <i>ContactPoint </i>represents a single potential. Consequently, all cavities and wires referencing / being referenced by a <i>ContactPoint </i>are short-circuited and have the same potential (even if the signals on the wires are named differently. If a contacting of a terminal has more than one potential (e.g. a coax-contact) one contact point for each potential is needed.      </p>

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
| [TerminalRole]({{< relref "terminalrole.md" >}}) | mountedTerminal | 0..1 | 0..* | References the terminal that is used for contacting defined by the ContactPoint. |
| [CavityMounting]({{< relref "cavitymounting.md" >}}) | cavityMounting | 0..* | 1 | Defines the mounting to a cavity of the terminal associated with the ContactPoint.  The cardinality is 0..* in order to allow a variant dependant cavity mounting. In such a scenario a cavity mounting is valid in a configuration if all addressed cavities and therefore the associated connector housing is available. |
| [WireMounting]({{< relref "wiremounting.md" >}}) | wireMounting | 0..* | 1 | Specifies the WireMouting defined by ContactPoint. More than one WireMounting is allowed in order to support variance. In concrete configuration the WireMounting with all referenced elements present is used. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ContactingSpecification]({{< relref "contactingspecification.md" >}}) | 1 | contactPoint | 0..* | Specifies the ContactPoints defined by the ContactingSpecification. |
| [PinWireMappingPoint]({{< relref "pinwiremappingpoint.md" >}}) |  | contactPoint | 1 |  |
