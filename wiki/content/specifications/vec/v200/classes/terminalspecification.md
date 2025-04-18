﻿---
title: TerminalSpecification
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalSpecification
menu_name: vec-2.0.0
---
<p>Specification for the definition of terminals. A terminal can own multiple WireReceptions &amp; TerminalReceptions. </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [BoltTerminalSpecification]({{< relref "boltterminalspecification.md" >}}), [BridgeTerminalSpecification]({{< relref "bridgeterminalspecification.md" >}}), [OpenWireEndTerminalSpecification]({{< relref "openwireendterminalspecification.md" >}}), [PluggableTerminalSpecification]({{< relref "pluggableterminalspecification.md" >}}), [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}), [SpliceTerminalSpecification]({{< relref "spliceterminalspecification.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|voltageRange | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies the allowed voltage range for the connector housing.      </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|sealingType | [TerminalSealingType]({{< relref "terminalsealingtype.md" >}}) | 0..1 | <p> Defines the <i>SealingType</i> of the Terminal. This type always refers to the sealing of the terminal itself. However, even a terminal which is not sealable can be used in sealed locations with additional measures (e.g. on the slot).        </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|connectionALength | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the terminal between the contact area (terminal reception) and the crimp are (wire reception, see diagram &quot;Terminal Dimensions&quot;).      </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|overallLength | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the overall length the terminal (see diagram &quot;Terminal Dimensions&quot;).      </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TerminalReception]({{< relref "terminalreception.md" >}}) | terminalReception | 0..* | 1 | Specifies the TerminalReceptions of the terminal described by the TerminalSpecification. |
| [TerminalCurrentInformation]({{< relref "terminalcurrentinformation.md" >}}) | currentInformation | 0..* | 1 | <p> Specifies the <i>TerminalCurrentInformation</i> that is applicable for the terminal.      </p> |
| [InternalTerminalConnection]({{< relref "internalterminalconnection.md" >}}) | internalTerminalConnection | 0..* | 1 | Specifies the InternalTerminalConnections of the terminal. |
| [WireReception]({{< relref "wirereception.md" >}}) | wireReception | 0..* | 1 | Specifies the WireReceptions of the terminal described by the TerminalSpecification. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Cavity]({{< relref "cavity.md" >}}) |  | integratedTerminalSpecification | 0..1 | <p> Specifies the terminal, if the cavity has an integrated terminal (e.g. an IDC).      </p> |
| [PinComponent]({{< relref "pincomponent.md" >}}) | 0..* | pinSpecification | 0..1 | References the TerminalSpecification describing the electrical connectivity aspect of the PinComponent.  (see KBLFRM-300) |
| [TerminalRole]({{< relref "terminalrole.md" >}}) | 0..* | terminalSpecification | 1 | <p> &#160;References the <i>TerminalSpecification</i> that is instanced by this <i>TerminalRole.</i>      </p> |
