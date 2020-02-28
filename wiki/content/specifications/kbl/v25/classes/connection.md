---
title: Connection
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Connection
menu_name: kbl-2.5
---
<p> A Connection is a mechanism to specify the electrical connectivity between two or more contact points. A connection describes the connectivity of a Wire_occurrence or a Core_occurrence. It shall not be confused with the connections defined in the electrical design (schematic or wiring).       </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 4_Connectivity |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Changed_element]({{< relref "changed_element.md" >}})<br/> [Connection_or_occurrence]({{< relref "connection_or_occurrence.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 0..1 | <p>The id specifies the identifier of the Connectivity. The values are company specific. They can depend also on wire parameters. Example:  electrical potential, start->destination</p> | [Connection]({{< relref "connection.md" >}}) |
|Description | [String]({{< relref "string.md" >}}) | 0..1 | <p>The description specifies additional information about the object.</p> | [Connection]({{< relref "connection.md" >}}) |
|Localized_description | [Localized_string]({{< relref "localized_string.md" >}}) | 0..* | <p> The description specifies additional information about the object. The Localized_description provides the possibility to define descriptions for different language codes.       </p> | [Connection]({{< relref "connection.md" >}}) |
|Signal_name | [String]({{< relref "string.md" >}}) | 0..1 | <p> The signal_name specifies logical information on a Connection. Example: packet on a bus, analogue voltage (high/low, waved) on a wire.      </p> | [Connection]({{< relref "connection.md" >}}) |
|Signal_type | [String]({{< relref "string.md" >}}) | 0..1 | <p> Defines the type of a signal like (BUS, ENERGY, GROUND, ...). Special values have to be negotiated between exchange partners.      </p> | [Connection]({{< relref "connection.md" >}}) |
|Nominal_voltage | [String]({{< relref "string.md" >}}) | 0..1 | <p> Defines the nominal voltage of a signal like (12V, 24V, 48V, HV, ...). Special values have to be negotiated between exchange partners.      </p> | [Connection]({{< relref "connection.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Installation_instruction]({{< relref "installation_instruction.md" >}}) | Installation_information | 0..* | 1 |  |
| [Wire_or_core_occurrence]({{< relref "wire_or_core_occurrence.md" >}}) | Wire | 1 | 0..1 |  |
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 1 |  |
| [Schematic_connection]({{< relref "schematic_connection.md" >}}) | Realized_schematic_connection | 0..1 | 0..* |  |
| [Extremity]({{< relref "extremity.md" >}}) | Extremities | 2..* | 1 |  |
| [External_reference]({{< relref "external_reference.md" >}}) | External_references | 0..* | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Routing]({{< relref "routing.md" >}}) | 0..* | Routed_wire | 1 |  |
