---
title: Cavity
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A cavity is a defined space in a connector housing for location of an electrical terminal or cavity plug or seal. A cavity may also be empty.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Cavity Seals and Cavity Plugs]({{< relref "../description-of-components/cavity-seals-and-cavity-plugs" >}})<br/> [Connector Housings]({{< relref "../description-of-components/connector-housings" >}})<br/> [EE-Components]({{< relref "../description-of-components/ee-components" >}})<br/> [Instances of Connector Housings]({{< relref "../instances-of-components/instances-of-connector-housings" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|available | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Defines whether the cavity is available for contacting. If the cavity is not available, it means that it is completely closed.      </p>    </body> </html>  | [Cavity]({{< relref "cavity.md" >}}) |
|cavityNumber | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Provides an identifier for the cavity. The cavity number needs to be unique within a <i>Slot</i>.      </p>    </body> </html>  | [Cavity]({{< relref "cavity.md" >}}) |
|hasIntegratedTerminal | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Defines whether the cavity has an integrated terminal (for example an IDC cavity)&#160;or if an additional terminal is required.      </p>      <p> If this attribute is &quot;true&quot;, the cavity can reference a <i>TerminalSpecification</i> as <i>integratedTerminalSpecification</i> in order to specify the integrated terminal.       </p>    </body> </html>  | [Cavity]({{< relref "cavity.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CavitySpecification]({{< relref "cavityspecification.md" >}}) | cavitySpecification | 0..1 | 0..* | References the CavitySpecification that is satisfied by the cavity.  |
| [TerminalSpecification]({{< relref "terminalspecification.md" >}}) | integratedTerminalSpecification | 0..1 |  | <html>   <head>     </head>   <body>     <p> Specifies the terminal, if the cavity has an integrated terminal (e.g. an IDC).      </p>  </body> </html> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CavityAddOn]({{< relref "cavityaddon.md" >}}) | 0..* | cavity | 1 |  |
| [Slot]({{< relref "slot.md" >}}) | 1 | cavity | 1..* | <html>   <head>     </head>   <body>     <p> Specifies the Cavities forming the Slot.      </p>    </body> </html>  |
| [OpenCavitiesAssignment]({{< relref "opencavitiesassignment.md" >}}) | 0..* | openCavities | 1..* | <html>   <head>     </head>   <body>     <p> Specifies the cavities that are open.      </p>    </body> </html>  |
| [SegmentConnectionPoint]({{< relref "segmentconnectionpoint.md" >}}) | 0..* | reachableCavities | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>Cavities</i> that are reachable with wires through this <i>SegmentConnectionPoint.</i>      </p>    </body> </html>  |
| [PinComponent]({{< relref "pincomponent.md" >}}) | 0..* | referencedCavity | 0..1 | Defines the cavity in the corresponding ConnectorHousingSpecification of the HousingComponent where the PinComponent is located.  (see KBLFRM-300)  |
| [CavityReference]({{< relref "cavityreference.md" >}}) | 0..* | referencedCavity | 1 | Points to the cavity referenced by the cavity reference.   |
| [SealedCavitiesAssignment]({{< relref "sealedcavitiesassignment.md" >}}) | 0..* | sealedCavities | 1..* | <html>   <head>     </head>   <body>     <p> Specifies the Cavities that are sealed.      </p>    </body> </html>  |
