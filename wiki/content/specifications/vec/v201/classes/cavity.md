---
title: Cavity
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - Cavity
menu_name: vec-2.0.1
---
<p> A cavity is a defined space in a connector housing for location of an electrical terminal or cavity plug or seal. A cavity may also be empty.      </p>

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
|available| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Defines whether the cavity is available for contacting. If the cavity is not available, it means that it is completely closed.      </p> | [Cavity]({{< relref "cavity.md" >}}) |
|cavityNumber| [String]({{< relref "string.md" >}}) | 0..1 | <p> Provides an identifier for the cavity. The cavity number needs to be unique within a <i>Slot</i>.      </p> | [Cavity]({{< relref "cavity.md" >}}) |
|hasIntegratedTerminal| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Defines whether the cavity has an integrated terminal (for example an IDC cavity)&#160;or if an additional terminal is required.      </p>      <p> If this attribute is &quot;true&quot;, the cavity can reference a <i>TerminalSpecification</i> as <i>integratedTerminalSpecification</i> in order to specify the integrated terminal.       </p> | [Cavity]({{< relref "cavity.md" >}}) |

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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>cavitySpecification</td>
        <td><a href="{{< relref "cavityspecification.md" >}}">CavitySpecification</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the CavitySpecification that is satisfied by the cavity.</td>
    </tr>
    <tr>
        <td>integratedTerminalSpecification</td>
        <td><a href="{{< relref "terminalspecification.md" >}}">TerminalSpecification</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td><p> Specifies the terminal, if the cavity has an integrated terminal (e.g. an IDC).      </p></td>
    </tr>
    <tr>
        <td>positionDetail</td>
        <td><a href="{{< relref "cavitypositiondetail.md" >}}">CavityPositionDetail</a></td>
        <td>0..1</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Optional details for geometric properties of the cavity in the connector.</td>
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
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>cavity</td>
        <td>1..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "slot.md" >}}">Slot</a></td>
        <td>1</td>
        <td><p> Specifies the Cavities forming the Slot.      </p></td>
    </tr>
    <tr>
        <td>cavity</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cavityaddon.md" >}}">CavityAddOn</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>openCavities</td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "opencavitiesassignment.md" >}}">OpenCavitiesAssignment</a></td>
        <td>0..*</td>
        <td><p> Specifies the cavities that are open.      </p></td>
    </tr>
    <tr>
        <td>reachableCavities</td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "segmentconnectionpoint.md" >}}">SegmentConnectionPoint</a></td>
        <td>0..*</td>
        <td><p> Specifies the <i>Cavities</i> that are reachable with wires through this <i>SegmentConnectionPoint.</i>      </p></td>
    </tr>
    <tr>
        <td>referencedCavity</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "pincomponent.md" >}}">PinComponent</a></td>
        <td>0..*</td>
        <td>Defines the cavity in the corresponding ConnectorHousingSpecification of the HousingComponent where the PinComponent is located.  (see KBLFRM-300)</td>
    </tr>
    <tr>
        <td>referencedCavity</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "cavityreference.md" >}}">CavityReference</a></td>
        <td>0..*</td>
        <td>Points to the cavity referenced by the cavity reference.</td>
    </tr>
    <tr>
        <td>sealedCavities</td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "sealedcavitiesassignment.md" >}}">SealedCavitiesAssignment</a></td>
        <td>0..*</td>
        <td><p> Specifies the Cavities that are sealed.      </p></td>
    </tr>
    </tbody>
</table>



