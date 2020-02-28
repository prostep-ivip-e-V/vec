---
title: TerminalType
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalType
menu_name: vec-1.1.1
---
<p>Defines the type of a terminal. The type is specified by a combination of a name for and an optional nominalSize.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|name | [String]({{< relref "string.md" >}}) | 1 | <p>Specifies the type of the cavity (e.g. MQS, DFK, ...). </p> | [TerminalType]({{< relref "terminaltype.md" >}}) |
|nominalSize | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the nominal size of terminals that fit into the cavity. (e.g. 2x4).  </p> | [TerminalType]({{< relref "terminaltype.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}) | 0..1 | terminalType | 0..1 | <p> Specifies the terminal type that is associated with the terminal reception.      </p> |
