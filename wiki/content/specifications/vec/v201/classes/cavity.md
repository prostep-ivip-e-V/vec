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
|available | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Defines whether the cavity is available for contacting. If the cavity is not available, it means that it is completely closed.      </p> | [Cavity]({{< relref "cavity.md" >}}) |
|cavityNumber | [String]({{< relref "string.md" >}}) | 0..1 | <p> Provides an identifier for the cavity. The cavity number needs to be unique within a <i>Slot</i>.      </p> | [Cavity]({{< relref "cavity.md" >}}) |
|hasIntegratedTerminal | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p> Defines whether the cavity has an integrated terminal (for example an IDC cavity)&#160;or if an additional terminal is required.      </p>      <p> If this attribute is &quot;true&quot;, the cavity can reference a <i>TerminalSpecification</i> as <i>integratedTerminalSpecification</i> in order to specify the integrated terminal.       </p> | [Cavity]({{< relref "cavity.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CavitySpecification]({{< relref "cavityspecification.md" >}}) | cavitySpecification | 0..1 | 0..* | References the CavitySpecification that is satisfied by the cavity. |
| [TerminalSpecification]({{< relref "terminalspecification.md" >}}) | integratedTerminalSpecification | 0..1 |  | <p> Specifies the terminal, if the cavity has an integrated terminal (e.g. an IDC).      </p> |
| [CavityPositionDetail]({{< relref "cavitypositiondetail.md" >}}) | positionDetail | 0..1 | 1 | Optional details for geometric properties of the cavity in the connector. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Slot]({{< relref "slot.md" >}}) | 1 | cavity | 1..* | <p> Specifies the Cavities forming the Slot.      </p> |
| [CavityAddOn]({{< relref "cavityaddon.md" >}}) | 0..* | cavity | 1 |  |
| [OpenCavitiesAssignment]({{< relref "opencavitiesassignment.md" >}}) | 0..* | openCavities | 1..* | <p> Specifies the cavities that are open.      </p> |
| [SegmentConnectionPoint]({{< relref "segmentconnectionpoint.md" >}}) | 0..* | reachableCavities | 0..* | <p> Specifies the <i>Cavities</i> that are reachable with wires through this <i>SegmentConnectionPoint.</i>      </p> |
| [CavityReference]({{< relref "cavityreference.md" >}}) | 0..* | referencedCavity | 1 | Points to the cavity referenced by the cavity reference. |
| [PinComponent]({{< relref "pincomponent.md" >}}) | 0..* | referencedCavity | 0..1 | Defines the cavity in the corresponding ConnectorHousingSpecification of the HousingComponent where the PinComponent is located.  (see KBLFRM-300) |
| [SealedCavitiesAssignment]({{< relref "sealedcavitiesassignment.md" >}}) | 0..* | sealedCavities | 1..* | <p> Specifies the Cavities that are sealed.      </p> |
