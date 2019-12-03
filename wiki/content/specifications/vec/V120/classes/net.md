---
title: Net
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A Net is an undirected link between a number of <i>NetworkPorts</i>.&#160;It defines that the <i>NetworkPorts</i> are related to each other with the <i>Net</i>.      </p>      <p> A <i>Net</i> is normally an instance of a <i>NetType.</i>&#160;E.g. if &quot;CAN-BUS&quot; is defined as a a <i>NetType</i> typical <i>Nets</i> would be &quot;BODY-CAN&quot;, &quot;AUDIO-CAN&quot;.      </p>    </body> </html> 
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the Net. The identification is guaranteed to be unique within the NetSpecification.      </p>    </body> </html>  | [Net]({{< relref "net.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html><body><p>Room for additional, human readable information about the Net. </p></body></html> | [Net]({{< relref "net.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [NetworkPort]({{< relref "networkport.md" >}}) | networkPort | 1..* | 1 | References the NetworkPorts that are connected by the Net.   |
| [NetType]({{< relref "nettype.md" >}}) | netType | 0..1 |  |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [NetSpecification]({{< relref "netspecification.md" >}}) | 1 | net | 0..* | Specifies the Nets defined in the NetSpecification.  |
| [Connection]({{< relref "connection.md" >}}) | 0..* | net | 0..1 | References the Net that is realized by the Connection.  |
| [NetGroup]({{< relref "netgroup.md" >}}) | 0..1 | net | 2..* | References the Nets that are grouped by the NetGroup.   |
