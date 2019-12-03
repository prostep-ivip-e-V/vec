---
title: TerminalSpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>Specification for the definition of terminals. A terminal can own multiple WireReceptions &amp; TerminalReceptions. </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [BoltTerminalSpecification]({{< relref "boltterminalspecification.md" >}}), [OpenWireEndTerminalSpecification]({{< relref "openwireendterminalspecification.md" >}}), [PluggableTerminalSpecification]({{< relref "pluggableterminalspecification.md" >}}), [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}), [SpliceTerminalSpecification]({{< relref "spliceterminalspecification.md" >}}) |
| **Usage in Diagrams**   | [Connector Housings]({{< relref "../description-of-components/connector-housings" >}})<br/> [EE-Components]({{< relref "../description-of-components/ee-components" >}})<br/> [Instances of Connector Housings]({{< relref "../instances-of-components/instances-of-connector-housings" >}})<br/> [Instances of Terminals]({{< relref "../instances-of-components/instances-of-terminals" >}})<br/> [Placeable Elements]({{< relref "../description-of-components/placeable-elements" >}})<br/> [Terminals]({{< relref "../description-of-components/terminals" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p></body></html> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|voltageRange | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the allowed voltage range for the connector housing.      </p>    </body> </html>  | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|sealingType | [TerminalSealingType]({{< relref "terminalsealingtype.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Defines the <i>SealingType</i> of the Terminal. This type always refers to the sealing of the terminal itself. However, even a terminal which is not sealable can be used in sealed locations with additional measures (e.g. on the slot).        </p>    </body> </html>  | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [WireReception]({{< relref "wirereception.md" >}}) | wireReception | 0..* | 1 | Specifies the WireReceptions of the terminal described by the TerminalSpecification.  |
| [TerminalReception]({{< relref "terminalreception.md" >}}) | terminalReception | 0..* | 1 | Specifies the TerminalReceptions of the terminal described by the TerminalSpecification.  |
| [InternalTerminalConnection]({{< relref "internalterminalconnection.md" >}}) | internalTerminalConnection | 0..* | 1 | Specifies the InternalTerminalConnections of the terminal.   |
| [TerminalCurrentInformation]({{< relref "terminalcurrentinformation.md" >}}) | currentInformation | 0..* | 1 | <html>   <head>     </head>   <body>     <p> Specifies the <i>TerminalCurrentInformation</i> that is applicable for the terminal.      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Cavity]({{< relref "cavity.md" >}}) |  | integratedTerminalSpecification | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the terminal, if the cavity has an integrated terminal (e.g. an IDC).      </p>  </body> </html> |
| [PinComponent]({{< relref "pincomponent.md" >}}) | 0..* | pinSpecification | 0..1 | References the TerminalSpecification describing the electrical connectivity aspect of the PinComponent.  (see KBLFRM-300)  |
| [TerminalRole]({{< relref "terminalrole.md" >}}) | 0..* | terminalSpecification | 1 | <html>   <head>     </head>   <body>     <p> &#160;References the <i>TerminalSpecification</i> that is instanced by this <i>TerminalRole.</i>      </p>    </body> </html>  |
