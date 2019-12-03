---
title: Connection
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A Connection is an electrological connection between two or more ComponentPorts.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | schematic |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [RoutableElement]({{< relref "routableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Connection Specification]({{< relref "../connectivity/connection-specification" >}})<br/> [Routing]({{< relref "../topology-and-geometry/routing" >}})<br/> [Wiring Specification]({{< relref "../connectivity/wiring-specification" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the Connection. The identification is guaranteed to be unique within the ConnectionSpecification.      </p>    </body> </html>  | [Connection]({{< relref "connection.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the Connection.      </p>    </body> </html>  | [Connection]({{< relref "connection.md" >}}) |
|installationInstruction | [Instruction]({{< relref "instruction.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies installation instruction for the connection.      </p>    </body> </html>  | [Connection]({{< relref "connection.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Net]({{< relref "net.md" >}}) | net | 0..1 | 0..* | References the Net that is realized by the Connection.  |
| [Signal]({{< relref "signal.md" >}}) | signal | 0..1 | 0..* | References the signal that is transmitted by the connection.  |
| [ConnectionEnd]({{< relref "connectionend.md" >}}) | connectionEnd | 2..* | 1 | Specifies the ConnectionEnds of the Connection.  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ConnectionSpecification]({{< relref "connectionspecification.md" >}}) | 1 | connection | 0..* | Specifies the Connection defined by the ConnectionSpecification.  |
| [WireElementReference]({{< relref "wireelementreference.md" >}}) | 0..* | connection | 0..1 | References the Connection that is realized by the referenced WireElement (WireElementReference). KBLFRM-341  |
| [ConnectionGroup]({{< relref "connectiongroup.md" >}}) | 0..* | connection | 2..* | References the Connections that are grouped by the ConnectionGroup.   |
