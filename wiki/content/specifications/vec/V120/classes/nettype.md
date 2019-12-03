---
title: NetType
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A <i>NetType</i> defines the different types of Nets used in the <i>NetSpecification</i>. The level of detail of the <i>NetTypes</i> for the can be process dependent.      </p>      <p> A NetType could be just used to differentiate between conventional (analog) communication and bus communication (digital), it can also already define the different types of digital communication (e.g. CAN, MOST, Ethernet).       </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | net |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Net Specification]({{< relref "../connectivity/net-specification" >}})<br/> [Signal Specification]({{< relref "../connectivity/signal-specification" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) |  | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the NetType. The identification is guaranteed to be unique within the NetSpecification.      </p>    </body> </html>  | [NetType]({{< relref "nettype.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Room for additional, human readable information about the <i>NetType</i>.      </p>    </body> </html>  | [NetType]({{< relref "nettype.md" >}}) |
|signalType | [SignalType]({{< relref "signaltype.md" >}}) | 0..1 |  | [NetType]({{< relref "nettype.md" >}}) |
|signalSubType | [SignalSubType]({{< relref "signalsubtype.md" >}}) | 0..1 |  | [NetType]({{< relref "nettype.md" >}}) |
|signalInformationType | [SignalInformationType]({{< relref "signalinformationtype.md" >}}) | 0..1 |  | [NetType]({{< relref "nettype.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [NetworkPort]({{< relref "networkport.md" >}}) | 0..* | netType | 0..1 |  |
| [Signal]({{< relref "signal.md" >}}) |  | netType | 0..1 |  |
| [NetSpecification]({{< relref "netspecification.md" >}}) | 1 | netType | 0..* |  |
| [Net]({{< relref "net.md" >}}) |  | netType | 0..1 |  |
