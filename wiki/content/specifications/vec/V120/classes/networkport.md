---
title: NetworkPort
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> NetworkPort is the source or the receiver of a of a Net.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | net |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Connection Specification]({{< relref "../connectivity/connection-specification" >}})<br/> [Net Specification]({{< relref "../connectivity/net-specification" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the NetworkPort. The identification is guaranteed to be unique within the NetSpecification.      </p>    </body> </html>  | [NetworkPort]({{< relref "networkport.md" >}}) |
|signalDirection | [SignalDirection]({{< relref "signaldirection.md" >}}) | 0..1 | <html><body><p>Specifies the direction of the signal on this NetworkPort.  </p></body></html> | [NetworkPort]({{< relref "networkport.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html><body><p>Room for additional, human readable information about the NetworkPort. </p></body></html> | [NetworkPort]({{< relref "networkport.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [NetType]({{< relref "nettype.md" >}}) | netType | 0..1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ComponentPort]({{< relref "componentport.md" >}}) | 0..* | networkPort | 0..1 | References the NetworkPort that is realized by the ComponentPort.  |
| [Net]({{< relref "net.md" >}}) | 1 | networkPort | 1..* | References the NetworkPorts that are connected by the Net.   |
| [NetworkNode]({{< relref "networknode.md" >}}) | 1 | port | 0..* | Specifies the NetworkPorts of a NetworkNode.   |
