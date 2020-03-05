---
title: Schematic_connection
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Schematic_connection
menu_name: kbl-2.5
---
The Schematic_connection represents a logical connection. It can be referenced by the physical connections (Connection) and be used to transfer the information of the logical connection, if it is realized by multiple Connections (e.g. different routings, different wire types).

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 4_Connectivity |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Changed_element]({{< relref "changed_element.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Id | [String]({{< relref "string.md" >}}) | 1 | <p> The Id specifies the identifier of the Schematic_connection. The values are company specific.       </p> | [Schematic_connection]({{< relref "schematic_connection.md" >}}) |
|Description | [String]({{< relref "string.md" >}}) | 0..1 | <p> The description specifies additional information about the object.      </p> | [Schematic_connection]({{< relref "schematic_connection.md" >}}) |
|Localized_description | [Localized_string]({{< relref "localized_string.md" >}}) | 0..* | <p> The description specifies additional information about the object. The Localized_description provides the possibility to define descriptions for different language codes.      </p> | [Schematic_connection]({{< relref "schematic_connection.md" >}}) |
|Signal_name | [String]({{< relref "string.md" >}}) | 0..1 | <p>The signal_name specifies logical information on a Connection. Example:  packet on a bus, analogue voltage(high/low, waved) on a wire.</p> | [Schematic_connection]({{< relref "schematic_connection.md" >}}) |
|Signal_type | [String]({{< relref "string.md" >}}) | 0..1 | <p> Defines the type of a signal like (BUS, ENERGY, GROUND, ...). Special values have to be negotiated between exchange partners.      </p> | [Schematic_connection]({{< relref "schematic_connection.md" >}}) |
|Nominal_voltage | [String]({{< relref "string.md" >}}) | 0..1 | <p> Defines the nominal voltage of a signal like (12V, 24V, 48V, HV, ...). Special values have to be negotiated between exchange partners.      </p> | [Schematic_connection]({{< relref "schematic_connection.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Cavity_occurrence]({{< relref "cavity_occurrence.md" >}}) | Cavities | 2..* | 0..* |  |
| [External_reference]({{< relref "external_reference.md" >}}) | External_references | 0..* | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Harness]({{< relref "harness.md" >}}) | 1 |  | 0..* |  |
| [Connection]({{< relref "connection.md" >}}) | 0..* | Realized_schematic_connection | 0..1 |  |
