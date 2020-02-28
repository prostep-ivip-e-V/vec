---
title: TerminalRole
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalRole
menu_name: vec-1.2.0
---
<p>A TerminalRole defines the instance specific properties and relationships of a terminal.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [BoltTerminalRole]({{< relref "boltterminalrole.md" >}}), [BridgeTerminalRole]({{< relref "bridgeterminalrole.md" >}}), [OpenWireEndTerminalRole]({{< relref "openwireendterminalrole.md" >}}), [PluggableTerminalRole]({{< relref "pluggableterminalrole.md" >}}), [RingTerminalRole]({{< relref "ringterminalrole.md" >}}), [SpliceTerminalRole]({{< relref "spliceterminalrole.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |
|sealState | [SealState]({{< relref "sealstate.md" >}}) | 0..1 | <p>Specifies if this instance of a terminal should be sealed (waterproof). This applies for example to SpliceTerminals.  </p> | [TerminalRole]({{< relref "terminalrole.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TerminalSpecification]({{< relref "terminalspecification.md" >}}) | terminalSpecification | 1 | 0..* | <p> &#160;References the <i>TerminalSpecification</i> that is instanced by this <i>TerminalRole.</i>      </p> |
| [TerminalReceptionReference]({{< relref "terminalreceptionreference.md" >}}) | terminalReceptionReference | 0..* | 1 | <p> Specifies the <i>TerminalReceptionReferences </i>of this <i>TerminalRole.</i>      </p> |
| [ComponentPort]({{< relref "componentport.md" >}}) | componentPort | 0..1 | 0..* | References the ComponentPort that is realized by the referenced Terminal (OccurrenceOrUsage with TerminalRole). KBLFRM-341 |
| [WireReceptionReference]({{< relref "wirereceptionreference.md" >}}) | wireReceptionReference | 0..* | 1 | <p> Specifies the <i>WireReceptionReferences </i>of this <i>TerminalRole.</i>      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [MatingPoint]({{< relref "matingpoint.md" >}}) | 0..* | firstTerminalRole | 1 | References the first terminal that is mated. |
| [CavityReference]({{< relref "cavityreference.md" >}}) | 0..1 | integratedTerminalRole | 0..1 | <p> Contains the terminal role if the cavity has an integrated terminal (e.g. an IDC).      </p> |
| [ContactPoint]({{< relref "contactpoint.md" >}}) | 0..* | mountedTerminal | 0..1 | References the terminal that is used for contacting defined by the ContactPoint. |
| [MatingPoint]({{< relref "matingpoint.md" >}}) | 0..* | secondTerminalRole | 1 | References the second terminal that is mated. |
| [PinComponentReference]({{< relref "pincomponentreference.md" >}}) | 0..1 | terminalRole | 0..1 | References the TerminalRole of PinComponentReference. This is required to specify a Mating for EEComponents with other EEComponents or a Harness.  (KBLFRM-401) |
