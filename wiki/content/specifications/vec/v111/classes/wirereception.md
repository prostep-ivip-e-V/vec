---
title: WireReception
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - WireReception
menu_name: vec-1.1.1
---
<p> A WireReception is the area of a terminal where the contacting with a (e.g. by crimping) takes place. This class represents such an area on the terminal. Its description is done with a WireReceptionSpecification, which is independent from the TerminalSpecification. This allows the reuse of the specification of similar WireReception on different terminals.      </p>
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the WireReception. The identification is guaranteed to be unique within the TerminalSpecification (this might be for example a reception number).      </p> | [WireReception]({{< relref "wirereception.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PlacementPoint]({{< relref "placementpoint.md" >}}) | placementPoint | 0..1 | 0..* | <p> Specifies the <i>PlacementPoint</i> that represents this <i>WireReception</i> in a PlaceableElementSpecification.      </p> |
| [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) | wireReceptionSpecification | 0..1 | 0..* | References the WireReceptionSpecification that specifies the WireReception. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TerminalSpecification]({{< relref "terminalspecification.md" >}}) | 1 | wireReception | 0..* | Specifies the WireReceptions of the terminal described by the TerminalSpecification. |
| [WireReceptionReference]({{< relref "wirereceptionreference.md" >}}) | 0..* | wireReception | 1 | <p> References the <i>WireReception</i> that is instanced by this <i>WireReceptionReference.</i>      </p> |
| [InternalTerminalConnection]({{< relref "internalterminalconnection.md" >}}) | 0..1 | wireReception | 0..* | References the WireReceptions that participate in the InternalTerminalConnection. |
