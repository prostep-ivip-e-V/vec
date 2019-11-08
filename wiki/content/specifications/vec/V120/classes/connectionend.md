---
title: ConnectionEnd
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A connection end is the end of a Connection at a ComponentPort.      </p>    </body> </html> 
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the ConnectionEnd. The identification is guaranteed to be unique within the ConnectionSpecification.      </p>    </body> </html>  | [ConnectionEnd]({{< relref "connectionend.md" >}}) |
|isExternalEnd | [Boolean]({{< relref "boolean.md" >}}) | 1 | <html><body><p>Specifies if the ConnectionEnd is connected to the internal or the external side of the ComponentPort.  </p></body></html> | [ConnectionEnd]({{< relref "connectionend.md" >}}) |
|gender | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies if the ConnectionEnd is male or female. This may be e.g. important in case of an inliner. </p></body></html> | [ConnectionEnd]({{< relref "connectionend.md" >}}) |
|installationInstruction | [Instruction]({{< relref "instruction.md" >}}) | 0..* | <html>   <head>     </head>   <body> Specifies installation instruction for the <i>ConnectionEnd</i>.   </body> </html>  | [ConnectionEnd]({{< relref "connectionend.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ComponentPort]({{< relref "componentport.md" >}}) | connectedComponentPort | 1 | 0..* | References the ComponentPort that is connected by the ConnectionEnd.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireEnd]({{< relref "wireend.md" >}}) | 0..* | connectionEnd | 0..1 |  |
| [Connection]({{< relref "connection.md" >}}) | 1 | connectionEnd | 2..* | Specifies the ConnectionEnds of the Connection.  |
