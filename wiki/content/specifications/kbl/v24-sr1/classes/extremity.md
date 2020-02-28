---
title: Extremity
toc: false
type: specs
date: "2015-03-20"
draft: false
specification: KBL
version: 2.4.sr1
documentType: "Recommendation"
elementType: Class
classes:
  - Extremity
menu_name: kbl-2.4.sr1
---
<p>The Extremity specifies the Contact_point which is connected by a spcific Connection.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 4_Connectivity |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Position_on_wire | [Double]({{< relref "double.md" >}}) | 1 | <p>The Position_on_wire describes the position where the contacting takes place. That is important for contacts like IDC, where the contacting is not at the beginning or end of the wire. Note: A value of 0.0 designates the beginning of the wire, a value of 1.0 the end. Intermediate contact_points are defined relative to the first one by a a value between 0.0 and 1.0. The position_on_wire defines the ordering of the Extremities within a Connection.</p> | [Extremity]({{< relref "extremity.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Processing_instruction]({{< relref "processing_instruction.md" >}}) | Processing_information | 0..* | 1 |  |
| [Contact_point]({{< relref "contact_point.md" >}}) | Contact_point | 1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Connection]({{< relref "connection.md" >}}) | 1 | Extremities | 2..* |  |
