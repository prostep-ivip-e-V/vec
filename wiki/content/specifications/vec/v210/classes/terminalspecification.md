---
title: TerminalSpecification
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalSpecification
menu_name: vec-2.1.0
---
<p>Specification for the definition of terminals. A terminal can own multiple WireReceptions &amp; TerminalReceptions. </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [BoltTerminalSpecification]({{< relref "boltterminalspecification.md" >}}), [BridgeTerminalSpecification]({{< relref "bridgeterminalspecification.md" >}}), [HoleTerminalSpecification]({{< relref "holeterminalspecification.md" >}}), [OpenWireEndTerminalSpecification]({{< relref "openwireendterminalspecification.md" >}}), [PluggableTerminalSpecification]({{< relref "pluggableterminalspecification.md" >}}), [RingTerminalSpecification]({{< relref "ringterminalspecification.md" >}}), [SpliceTerminalSpecification]({{< relref "spliceterminalspecification.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType| [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|voltageRange| [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <p> Specifies the allowed voltage range for the connector housing.      </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|sealingType| [TerminalSealingType]({{< relref "terminalsealingtype.md" >}}) | 0..1 | <p> Defines the <i>SealingType</i> of the Terminal. This type always refers to the sealing of the terminal itself. However, even a terminal which is not sealable can be used in sealed locations with additional measures (e.g. on the slot).        </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|connectionALength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the length of the terminal between the contact area (terminal reception) and the crimp are (wire reception, see diagram &quot;Terminal Dimensions&quot;).      </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |
|overallLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the overall length the terminal (see diagram &quot;Terminal Dimensions&quot;).      </p> | [TerminalSpecification]({{< relref "terminalspecification.md" >}}) |

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
        <td>currentInformation</td>
        <td><a href="{{< relref "terminalcurrentinformation.md" >}}">TerminalCurrentInformation</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Specifies the <i>TerminalCurrentInformation</i> that is applicable for the terminal.      </p></td>
    </tr>
    <tr>
        <td>internalTerminalConnection</td>
        <td><a href="{{< relref "internalterminalconnection.md" >}}">InternalTerminalConnection</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the InternalTerminalConnections of the terminal.</td>
    </tr>
    <tr>
        <td>terminalReception</td>
        <td><a href="{{< relref "terminalreception.md" >}}">TerminalReception</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the TerminalReceptions of the terminal described by the TerminalSpecification.</td>
    </tr>
    <tr>
        <td>wireReception</td>
        <td><a href="{{< relref "wirereception.md" >}}">WireReception</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the WireReceptions of the terminal described by the TerminalSpecification.</td>
    </tr>
    <tr>
        <td>minimumDistance</td>
        <td><a href="{{< relref "terminaldistanceinformation.md" >}}">TerminalDistanceInformation</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>A terminal can have minimum distance requirements to other elements in the harness. Theses are defined with the <i>TerminalDistanceInformation.</i></td>
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
        <td>integratedTerminalSpecification</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cavity.md" >}}">Cavity</a></td>
        <td></td>
        <td><p> Specifies the terminal, if the cavity has an integrated terminal (e.g. an IDC).      </p></td>
    </tr>
    <tr>
        <td>pinSpecification</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "pincomponent.md" >}}">PinComponent</a></td>
        <td>0..*</td>
        <td>References the TerminalSpecification describing the electrical connectivity aspect of the PinComponent.  (see KBLFRM-300)</td>
    </tr>
    <tr>
        <td>terminalSpecification</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "terminalrole.md" >}}">TerminalRole</a></td>
        <td>0..*</td>
        <td><p> &#160;References the <i>TerminalSpecification</i> that is instanced by this <i>TerminalRole.</i>      </p></td>
    </tr>
    </tbody>
</table>



