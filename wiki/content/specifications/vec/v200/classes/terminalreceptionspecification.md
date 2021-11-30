---
title: TerminalReceptionSpecification
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalReceptionSpecification
menu_name: vec-2.0.0-rc1
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|cavityDesign | [String]({{< relref "string.md" >}}) | 0..1 | <p> Deprecated (since Version 1.1.4): This attribute has been marked as deprecated, as it has been replaced by the more meaningful mechanism with <i>TerminalTypes.</i>      </p> | [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}) |
|platingMaterial | [Material]({{< relref "material.md" >}}) | 0..* | <p>Specifies the plating material of the terminal reception. </p> | [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}) |
|primaryLockingType | [PrimaryLockingType]({{< relref "primarylockingtype.md" >}}) | 0..1 | <p>Specifies if the terminal reception has a primary locking and of what type it is. </p> | [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}) |
|pullOutForce | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>The force until the terminal is pulled out of the housing (normally a not intended case). KBLFRM-366 </p> | [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}) |
|contactRangeLength | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the contact area (see diagram &quot;Terminal Dimensions&quot;).      </p> | [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TerminalType]({{< relref "terminaltype.md" >}}) | terminalType | 0..1 | 0..1 | <p> Specifies the terminal type that is associated with the terminal reception.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TerminalReception]({{< relref "terminalreception.md" >}}) | 0..* | terminalReceptionSpecification | 0..1 | References the TerminalReceptionSpecification that specifies the TerminalReception. |
