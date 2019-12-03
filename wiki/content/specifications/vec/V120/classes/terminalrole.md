---
title: TerminalRole
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>A TerminalRole defines the instance specific properties and relationships of a terminal.</p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [BoltTerminalRole]({{< relref "boltterminalrole.md" >}}), [OpenWireEndTerminalRole]({{< relref "openwireendterminalrole.md" >}}), [PluggableTerminalRole]({{< relref "pluggableterminalrole.md" >}}), [RingTerminalRole]({{< relref "ringterminalrole.md" >}}), [SpliceTerminalRole]({{< relref "spliceterminalrole.md" >}}) |
| **Usage in Diagrams**   | [Contacting Specification]({{< relref "../connectivity/contacting-specification" >}})<br/> [Coupling Specification]({{< relref "../connectivity/coupling-specification" >}})<br/> [Instances of Connector Housings]({{< relref "../instances-of-components/instances-of-connector-housings" >}})<br/> [Instances of EE-Components]({{< relref "../instances-of-components/instances-of-ee-components" >}})<br/> [Instances of Terminals]({{< relref "../instances-of-components/instances-of-terminals" >}})<br/> [Wiring Specification]({{< relref "../connectivity/wiring-specification" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies a unique identification of the Role. The identification is guaranteed to be unqiue within the OccurrenceOrUsage. </p></body></html> | [Role]({{< relref "role.md" >}}) |
|sealState | [SealState]({{< relref "sealstate.md" >}}) | 0..1 | <html><body><p>Specifies if this instance of a terminal should be sealed (waterproof). This applies for example to SpliceTerminals.  </p></body></html> | [TerminalRole]({{< relref "terminalrole.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ComponentPort]({{< relref "componentport.md" >}}) | componentPort | 0..1 | 0..* | References the ComponentPort that is realized by the referenced Terminal (OccurrenceOrUsage with TerminalRole). KBLFRM-341  |
| [TerminalSpecification]({{< relref "terminalspecification.md" >}}) | terminalSpecification | 1 | 0..* | <html>   <head>     </head>   <body>     <p> &#160;References the <i>TerminalSpecification</i> that is instanced by this <i>TerminalRole.</i>      </p>    </body> </html>  |
| [TerminalReceptionReference]({{< relref "terminalreceptionreference.md" >}}) | terminalReceptionReference | 0..* | 1 | <html>   <head>     </head>   <body>     <p> Specifies the <i>TerminalReceptionReferences </i>of this <i>TerminalRole.</i>      </p>    </body> </html>  |
| [WireReceptionReference]({{< relref "wirereceptionreference.md" >}}) | wireReceptionReference | 0..* | 1 | <html>   <head>     </head>   <body>     <p> Specifies the <i>WireReceptionReferences </i>of this <i>TerminalRole.</i>      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [MatingPoint]({{< relref "matingpoint.md" >}}) | 0..* | firstTerminalRole | 1 | References the first terminal that is mated.  |
| [CavityReference]({{< relref "cavityreference.md" >}}) | 0..1 | integratedTerminalRole | 0..1 | <html>   <head>     </head>   <body>     <p> Contains the terminal role if the cavity has an integrated terminal (e.g. an IDC).      </p>  </body> </html> |
| [ContactPoint]({{< relref "contactpoint.md" >}}) | 0..* | mountedTerminal | 0..1 | References the terminal that is used for contacting defined by the ContactPoint.   |
| [MatingPoint]({{< relref "matingpoint.md" >}}) | 0..* | secondTerminalRole | 1 | References the second terminal that is mated.  |
| [PinComponentReference]({{< relref "pincomponentreference.md" >}}) | 0..1 | terminalRole | 0..1 | References the TerminalRole of PinComponentReference. This is required to specify a Mating for EEComponents with other EEComponents or a Harness.  (KBLFRM-401)  |
