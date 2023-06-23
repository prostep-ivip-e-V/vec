---
title: WireReception
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - WireReception
menu_name: vec-2.0.2
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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the WireReception. The identification is guaranteed to be unique within the TerminalSpecification (this might be for example a reception number).      </p> | [WireReception]({{< relref "wirereception.md" >}}) |
|angle| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..2 | <p> Specifies the angles against two planes of the connector housing a wire reception can be buckled. The planes are defined in a way, that angles of &#160;[0.0, 0.0] specify an unbuckled (regular)&#160;terminal. The two planes are perpendicular to each other and parallel to the plugging direction of the terminal (the direction of the pin).      </p>      <p> The plane for the first angle is the plane in which the uncrimped wire reception would be, if the terminal has not been buckled. Since most terminals are cut or punched in some way out of a sheet of metal, this plane would be the same as metal sheet before further deformation.      </p>      <p> For ring terminals the first plane is perpendicular to the bolt direction.      </p>      <p> With a viewing direction from the wire reception to the terminal reception and the intended wire position above the terminal, buckling directions up and right are expressed by positive angles, down and left by negative angles.      </p> | [WireReception]({{< relref "wirereception.md" >}}) |

## Outgoing Relations
<table>
    <thead>
        <tr>
           <th colspan="6">Other End</th>
           <th colspan="1">This End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>wireReceptionSpecification</td>
        <td><a href="{{< relref "wirereceptionspecification.md" >}}">WireReceptionSpecification</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the WireReceptionSpecification that specifies the WireReception.</td>
    </tr>
    <tr>
        <td>placementPoint</td>
        <td><a href="{{< relref "placementpoint.md" >}}">PlacementPoint</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> Specifies the <i>PlacementPoint</i> that represents this <i>WireReception</i> in a PlaceableElementSpecification.      </p></td>
    </tr>
    </tbody>
</table>

##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>wireReception</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "internalterminalconnection.md" >}}">InternalTerminalConnection</a></td>
        <td>0..1</td>
        <td>References the WireReceptions that participate in the InternalTerminalConnection.</td>
    </tr>
    <tr>
        <td>wireReception</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wirereceptionreference.md" >}}">WireReceptionReference</a></td>
        <td>0..*</td>
        <td><p> References the <i>WireReception</i> that is instanced by this <i>WireReceptionReference.</i>      </p></td>
    </tr>
    <tr>
        <td>wireReception</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "terminalspecification.md" >}}">TerminalSpecification</a></td>
        <td>1</td>
        <td>Specifies the WireReceptions of the terminal described by the TerminalSpecification.</td>
    </tr>
    </tbody>
</table>



