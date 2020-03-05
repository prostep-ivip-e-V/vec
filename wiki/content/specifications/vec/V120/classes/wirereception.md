---
title: WireReception
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - WireReception
menu_name: vec-1.2.0
---
<p> A WireReception is the area of a terminal where the contacting with a wire element (e.g. by crimping) takes place. This class represents such an area on the terminal. Its description is done with a WireReceptionSpecification, which is independent from the TerminalSpecification. This allows the reuse of the specification of similar WireReception on different terminals.      </p>

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
|angle | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..2 | <p> Specifies the angles against two planes of the connector housing a wire reception can be buckled. The planes are defined in a way, that angles of &#160;[0.0, 0.0] specify an unbuckled (regular)&#160;terminal. The two planes are perpendicular to each other and parallel to the plugging direction of the terminal (the direction of the pin).      </p>      <p> The plane for the first angle is the plane in which the uncrimped wire reception would be, if the terminal has not been buckled. Since most terminals are cut or punched in some way out of a sheet of metal, this plane would be the same as metal sheet before further deformation.      </p>      <p> For ring terminals the first plane is perpendicular to the bolt direction.      </p>      <p> With a viewing direction from the wire reception to the terminal reception and the intended wire position above the terminal, buckling directions up and right are expressed by positive angles, down and left by negative angles.      </p> | [WireReception]({{< relref "wirereception.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) | wireReceptionSpecification | 0..1 | 0..* | References the WireReceptionSpecification that specifies the WireReception. |
| [PlacementPoint]({{< relref "placementpoint.md" >}}) | placementPoint | 0..1 | 0..* | <p> Specifies the <i>PlacementPoint</i> that represents this <i>WireReception</i> in a PlaceableElementSpecification.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireReceptionReference]({{< relref "wirereceptionreference.md" >}}) | 0..* | wireReception | 1 | <p> References the <i>WireReception</i> that is instanced by this <i>WireReceptionReference.</i>      </p> |
| [InternalTerminalConnection]({{< relref "internalterminalconnection.md" >}}) | 0..1 | wireReception | 0..* | References the WireReceptions that participate in the InternalTerminalConnection. |
| [TerminalSpecification]({{< relref "terminalspecification.md" >}}) | 1 | wireReception | 0..* | Specifies the WireReceptions of the terminal described by the TerminalSpecification. |
