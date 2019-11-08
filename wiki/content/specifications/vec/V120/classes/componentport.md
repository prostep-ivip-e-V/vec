---
title: ComponentPort
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Defines a port of ComponentNode. A ComponentPort is usually the realization of a NetworkPort. Electrological connections are defined between two or more ComponentPorts.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | schematic |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the ComponentPort. The identification is guaranteed to be unique within the ComponentConnector.      </p>    </body> </html>  | [ComponentPort]({{< relref "componentport.md" >}}) |
|signalDirection | [SignalDirection]({{< relref "signaldirection.md" >}}) | 0..1 | <html><body><p>Specifies the direction of the signal on this ComponentPort.  </p></body></html> | [ComponentPort]({{< relref "componentport.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html><body><p>Room for additional, human readable information about the ComponentPort. </p></body></html> | [ComponentPort]({{< relref "componentport.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [NetworkPort]({{< relref "networkport.md" >}}) | networkPort | 0..1 | 0..* | References the NetworkPort that is realized by the ComponentPort.  |
| [Signal]({{< relref "signal.md" >}}) | signal | 0..1 | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>Signal</i> that is associated with the <i>ComponentPort</i>.      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ComponentConnector]({{< relref "componentconnector.md" >}}) | 1 | componentPort | 0..* | Specifies the ComponentPorts of the ComponentConnector.  |
| [TerminalRole]({{< relref "terminalrole.md" >}}) | 0..* | componentPort | 0..1 | References the ComponentPort that is realized by the referenced Terminal (OccurrenceOrUsage with TerminalRole). KBLFRM-341  |
| [CavityReference]({{< relref "cavityreference.md" >}}) | 0..* | componentPort | 0..1 | <html>   <head>     </head>   <body>     <p> References the <i>ComponentPort</i> that is implemented by this <i>CavityReference</i>.      </p>    </body> </html>  |
| [ConnectionEnd]({{< relref "connectionend.md" >}}) | 0..* | connectedComponentPort | 1 | References the ComponentPort that is connected by the ConnectionEnd.   |
