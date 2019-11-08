---
title: NetworkNode
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A NetworkNode is a representative for an actor in the electric system, e.g. an actuator, a sensor, an ECU      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | net |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the NetworkNode. The identification is guaranteed to be unique within the NetSpecification.      </p>    </body> </html>  | [NetworkNode]({{< relref "networknode.md" >}}) |
|abbreviation | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Room for a short name of the NetworkNode.      </p>    </body> </html>  | [NetworkNode]({{< relref "networknode.md" >}}) |
|networkNodeType | [NetworkNodeType]({{< relref "networknodetype.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the type of a NetworkNode. Common values are agreed as an <i>OpenEnumeration</i>.      </p>    </body> </html>  | [NetworkNode]({{< relref "networknode.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html><body><p>Room for additional, human readable information about the NetworkNode. </p></body></html> | [NetworkNode]({{< relref "networknode.md" >}}) |
|subType | [NetworkNodeSubType]({{< relref "networknodesubtype.md" >}}) | 0..1 | <html>   <head>     </head>   <body> Specifies the sub type of a NetworkNode. The sub type allows a differentiation within a specific type. E.g. an actuator can be differentiated into lamps, speakers, motors.</body> </html> | [NetworkNode]({{< relref "networknode.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [NetworkPort]({{< relref "networkport.md" >}}) | port | 0..* | 1 | Specifies the NetworkPorts of a NetworkNode.   |
| [UsageNode]({{< relref "usagenode.md" >}}) | realizedUsageNode | 0..1 | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>UsageNode</i> that is realized by this <i>NetworkNode</i>.      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [NetSpecification]({{< relref "netspecification.md" >}}) | 1 | networkNode | 0..* | Specifies the NetWorkNodes defined in the NetSpecification.  |
| [ComponentNode]({{< relref "componentnode.md" >}}) | 0..* | networkNode | 0..1 | References the NetworkNode that is realized by the ComponentNode.  |
