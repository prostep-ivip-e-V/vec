---
title: WireReception
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A WireReception is the area of a terminal where the contacting with a wire element (e.g. by crimping) takes place. This class represents such an area on the terminal. Its description is done with a WireReceptionSpecification, which is independent from the TerminalSpecification. This allows the reuse of the specification of similar WireReception on different terminals.      </p>    </body> </html> 
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the WireReception. The identification is guaranteed to be unique within the TerminalSpecification (this might be for example a reception number).      </p>    </body> </html>  | [WireReception]({{< relref "wirereception.md" >}}) |
|angle | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..2 | <html>   <head>     </head>   <body>     <p> Specifies the angles against two planes of the connector housing a wire reception can be buckled. The planes are defined in a way, that angles of &#160;[0.0, 0.0] specify a unbuckled (regular)&#160;terminal. The two planes are perpendicular to each other and parallel to the plugging direction of the terminal (the direction of the pin).      </p>      <p> The plane for the first angle is the plane in which the uncrimped wire reception would be, if the terminal has not been buckled. Since most terminals are cut or punched in some way out of a sheet of metal, this plane would be the same as metal sheet before further deformation.      </p>      <p> For ring terminals the first plane is perpendicular to the bolt direction.      </p>      <p> With a viewing direction from the wire reception to the terminal reception and the intended wire position above the terminal, buckling directions up and right are expressed by positive angles, down and left by negative angles.      </p>      <p> &#160;      </p>      <p> &#160;      </p>      <p> &#160;      </p>      <p> &#160;      </p>  </body> </html> | [WireReception]({{< relref "wirereception.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PlacementPoint]({{< relref "placementpoint.md" >}}) | placementPoint | 0..1 | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>PlacementPoint</i> that represents this <i>WireReception</i> in a PlaceableElementSpecification.      </p>    </body> </html>  |
| [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) | wireReceptionSpecification | 0..1 | 0..* | References the WireReceptionSpecification that specifies the WireReception.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TerminalSpecification]({{< relref "terminalspecification.md" >}}) | 1 | wireReception | 0..* | Specifies the WireReceptions of the terminal described by the TerminalSpecification.  |
| [WireReceptionReference]({{< relref "wirereceptionreference.md" >}}) | 0..* | wireReception | 1 | <html>   <head>     </head>   <body>     <p> References the <i>WireReception</i> that is instanced by this <i>WireReceptionReference.</i>      </p>    </body> </html>  |
| [InternalTerminalConnection]({{< relref "internalterminalconnection.md" >}}) | 0..1 | wireReception | 0..* | References the WireReceptions that participate in the InternalTerminalConnection.  |
