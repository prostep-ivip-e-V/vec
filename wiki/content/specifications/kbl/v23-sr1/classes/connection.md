---
title: Connection
toc: false
type: specs
date: "2005-11-01"
draft: false
specification: KBL
version: 2.3.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Connection
menu_name: kbl-2.3.sr1
---
<p>Verbindung  A Connection is a mechanism to specify the electrical connectivity between two or more contact points.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 4_Connectivity |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Connection_or_occurrence]({{< relref "connection_or_occurrence.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 0..1 | <p>The id specifies the identifier of the Connectivity. The values are company specific. They can depend also on wire parameters. Example:  electrical potential, start->destination</p> | [Connection]({{< relref "connection.md" >}}) |
|Description | [String]({{< relref "string.md" >}}) | 0..1 | <p>The description specifies additional information about the object.</p> | [Connection]({{< relref "connection.md" >}}) |
|Signal_name | [String]({{< relref "string.md" >}}) | 0..1 | <p>The signal_name specifies logical information on a Connection. Example:  packet on a bus, analogue voltage(high/low, waved) on a wire.</p> | [Connection]({{< relref "connection.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Wire_or_core_occurrence]({{< relref "wire_or_core_occurrence.md" >}}) | Wire | 1 | 0..* |  |
| [Installation_instruction]({{< relref "installation_instruction.md" >}}) | Installation_information | 0..* | 1 |  |
| [Extremity]({{< relref "extremity.md" >}}) | Extremities | 2..* | 1 |  |
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 1 |  |
| [External_reference]({{< relref "external_reference.md" >}}) | External_references | 0..* | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Routing]({{< relref "routing.md" >}}) | 0..* | Routed_wire | 1 |  |
