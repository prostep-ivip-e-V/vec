---
title: ConnectionEnd
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - ConnectionEnd
menu_name: vec-1.1.1
---
<p> A connection end is the end of a Connection at a ComponentPort.      </p>

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the ConnectionEnd. The identification is guaranteed to be unique within the ConnectionSpecification.      </p> | [ConnectionEnd]({{< relref "connectionend.md" >}}) |
|isExternalEnd | [Boolean]({{< relref "boolean.md" >}}) | 1 | <p>Specifies if the ConnectionEnd is connected to the internal or the external side of the ComponentPort.  </p> | [ConnectionEnd]({{< relref "connectionend.md" >}}) |
|gender | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies if the ConnectionEnd is male or female. This may be e.g. important in case of an inliner. </p> | [ConnectionEnd]({{< relref "connectionend.md" >}}) |
|installationInstruction | [Instruction]({{< relref "instruction.md" >}}) | 0..* | Specifies installation instruction for the <i>ConnectionEnd</i>. | [ConnectionEnd]({{< relref "connectionend.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ComponentPort]({{< relref "componentport.md" >}}) | connectedComponentPort | 1 | 0..* | References the ComponentPort that is connected by the ConnectionEnd. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Connection]({{< relref "connection.md" >}}) | 1 | connectionEnd | 2..* | Specifies the ConnectionEnds of the Connection. The ConnectionEnds are required to be an ordered list, because it is possible to define Connections with more than two ConnectionEnds (bus systems). In these cases it is relevant which ConnectionEnds are in the end of connection and which ConnectionEnds are in between. KBLFRM-378 |
