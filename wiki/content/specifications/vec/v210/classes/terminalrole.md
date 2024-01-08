---
title: TerminalRole
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalRole
menu_name: vec-2.1.0
---
<p>A TerminalRole defines the instance specific properties and relationships of a terminal.</p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [BoltTerminalRole]({{< relref "boltterminalrole.md" >}}), [BridgeTerminalRole]({{< relref "bridgeterminalrole.md" >}}), [HoleTerminalRole]({{< relref "holeterminalrole.md" >}}), [OpenWireEndTerminalRole]({{< relref "openwireendterminalrole.md" >}}), [PluggableTerminalRole]({{< relref "pluggableterminalrole.md" >}}), [RingTerminalRole]({{< relref "ringterminalrole.md" >}}), [SpliceTerminalRole]({{< relref "spliceterminalrole.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |
|sealState| [SealState]({{< relref "sealstate.md" >}}) | 0..1 | <p>Specifies if this instance of a terminal should be sealed (waterproof). This applies for example to SpliceTerminals.  </p> | [TerminalRole]({{< relref "terminalrole.md" >}}) |

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
        <td>componentPort</td>
        <td><a href="{{< relref "componentport.md" >}}">ComponentPort</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the ComponentPort that is realized by the referenced Terminal (OccurrenceOrUsage with TerminalRole). KBLFRM-341</td>
    </tr>
    <tr>
        <td>terminalSpecification</td>
        <td><a href="{{< relref "terminalspecification.md" >}}">TerminalSpecification</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> &#160;References the <i>TerminalSpecification</i> that is instanced by this <i>TerminalRole.</i>      </p></td>
    </tr>
    <tr>
        <td>wireReceptionReference</td>
        <td><a href="{{< relref "wirereceptionreference.md" >}}">WireReceptionReference</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Specifies the <i>WireReceptionReferences </i>of this <i>TerminalRole.</i>      </p></td>
    </tr>
    <tr>
        <td>terminalReceptionReference</td>
        <td><a href="{{< relref "terminalreceptionreference.md" >}}">TerminalReceptionReference</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Specifies the <i>TerminalReceptionReferences </i>of this <i>TerminalRole.</i>      </p></td>
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
        <td>firstTerminalRole</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "matingpoint.md" >}}">MatingPoint</a></td>
        <td>0..*</td>
        <td>References the first terminal that is mated.</td>
    </tr>
    <tr>
        <td>integratedTerminalRole</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cavityreference.md" >}}">CavityReference</a></td>
        <td>0..1</td>
        <td><p> Contains the terminal role if the cavity has an integrated terminal (e.g. an IDC).      </p></td>
    </tr>
    <tr>
        <td>mountedTerminal</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "contactpoint.md" >}}">ContactPoint</a></td>
        <td>0..*</td>
        <td>References the terminal that is used for contacting defined by the ContactPoint.</td>
    </tr>
    <tr>
        <td>secondTerminalRole</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "matingpoint.md" >}}">MatingPoint</a></td>
        <td>0..*</td>
        <td>References the second terminal that is mated.</td>
    </tr>
    <tr>
        <td>terminalRole</td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "pincomponentreference.md" >}}">PinComponentReference</a></td>
        <td>0..1</td>
        <td>References the TerminalRole of PinComponentReference. This is required to specify a Mating for EEComponents with other EEComponents or a Harness.  (KBLFRM-401)</td>
    </tr>
    </tbody>
</table>



