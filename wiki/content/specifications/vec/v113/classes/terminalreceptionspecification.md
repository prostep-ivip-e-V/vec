﻿---
title: TerminalReceptionSpecification
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalReceptionSpecification
menu_name: vec-1.1.3
---
<p> Specification for the definition of terminal receptions. A TerminalReception is the area of a terminal where the contacting with another terminal (e.g. between a connector housing and a control unit) takes place. Normally the terminal reception is placed in a cavity of a connector housing.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|cavityDesign | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the structural shape of the cavity, e.g. round, flat, box that the terminal fits in.      </p> | [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}) |
|platingMaterial | [Material]({{< relref "material.md" >}}) | 0..* | <p>Specifies the plating material of the terminal reception. </p> | [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}) |
|primaryLockingType | [PrimaryLockingType]({{< relref "primarylockingtype.md" >}}) | 0..1 | <p>Specifies if the terminal reception has a primary locking and of what type it is. </p> | [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}) |
|pullOutForce | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>The force until the terminal is pulled out of the housing (normally a not intended case). KBLFRM-366 </p> | [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TerminalType]({{< relref "terminaltype.md" >}}) | terminalType | 0..1 | 0..1 | <p> Specifies the terminal type that is associated with the terminal reception.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TerminalReception]({{< relref "terminalreception.md" >}}) | 0..* | terminalReceptionSpecification | 0..1 | References the TerminalReceptionSpecification that specifies the TerminalReception. |
