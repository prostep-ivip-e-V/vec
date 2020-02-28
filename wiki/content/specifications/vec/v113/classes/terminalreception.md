---
title: TerminalReception
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalReception
menu_name: vec-1.1.3
---
<p> A TerminalReception is the area of a terminal where the contacting with another terminal (e.g. between a connector housing and a control unit) takes place. Normally the terminal reception is placed in a cavity of a connector housing.     </p>      <p> This class represents such an area on the terminal.      </p>
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the TerminalReception. The identification is guaranteed to be unique within the TerminalSpecification (this might be for example a reception number).      </p> | [TerminalReception]({{< relref "terminalreception.md" >}}) |
|gender | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the gender of the TerminalReception. This should be an enumeration of values defined in a conformance class (e.g. male, female). The gender is included in the TerminalReception class in order to be able to refer the same TerminalReceptionSpecification gender-independent. KBLFRM-360 </p> | [TerminalReception]({{< relref "terminalreception.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}) | terminalReceptionSpecification | 0..1 | 0..* | References the TerminalReceptionSpecification that specifies the TerminalReception. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TerminalSpecification]({{< relref "terminalspecification.md" >}}) | 1 | terminalReception | 0..* | Specifies the TerminalReceptions of the terminal described by the TerminalSpecification. |
| [InternalTerminalConnection]({{< relref "internalterminalconnection.md" >}}) | 0..1 | terminalReception | 0..* | References the TerminalReceptions that participate in the InternalTerminalConnection. |
| [TerminalReceptionReference]({{< relref "terminalreceptionreference.md" >}}) | 0..* | terminalReception | 1 | <p> References the <i>TerminalReception</i> that is instanced by this <i>TerminalReceptionReference.</i>      </p> |
