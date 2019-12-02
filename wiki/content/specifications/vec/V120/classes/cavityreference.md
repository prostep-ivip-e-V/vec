---
title: CavityReference
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A CavityReference represents the usage of a Cavity in the context of PartUsage or PartOccurrence.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Contacting Specification]({{< relref "../connectivity/contacting-specification" >}})<br/> [Coupling Specification]({{< relref "../connectivity/coupling-specification" >}})<br/> [Instances of Cavity Seals and Cavity Plugs]({{< relref "../instances-of-components/instances-of-cavity-seals-and-cavity-plugs" >}})<br/> [Instances of Connector Housings]({{< relref "../instances-of-components/instances-of-connector-housings" >}})<br/> [Wiring Specification]({{< relref "../connectivity/wiring-specification" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the CavityReference. The identification is guaranteed to be unique within the ConnectorHousingRole. The cavity &amp; slot number is defined by the associated cavity and slot.      </p>    </body> </html>  | [CavityReference]({{< relref "cavityreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TerminalRole]({{< relref "terminalrole.md" >}}) | integratedTerminalRole | 0..1 | 0..1 | <html>   <head>     </head>   <body>     <p> Contains the terminal role if the cavity has an integrated terminal (e.g. an IDC).      </p>  </body> </html> |
| [Cavity]({{< relref "cavity.md" >}}) | referencedCavity | 1 | 0..* | Points to the cavity referenced by the cavity reference.   |
| [ComponentPort]({{< relref "componentport.md" >}}) | componentPort | 0..1 | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>ComponentPort</i> that is implemented by this <i>CavityReference</i>.      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [SlotReference]({{< relref "slotreference.md" >}}) | 1 | cavityReference | 0..* | Specifies the CavityReferences used in the SlotReference.  |
| [CavityMountingDetail]({{< relref "cavitymountingdetail.md" >}}) | 0..* | equippedCavityRef | 1 | References the cavity that is used for the detailed description of the cavity mounting.   |
| [CavityMounting]({{< relref "cavitymounting.md" >}}) | 0..* | equippedCavityRef | 1..* | References the cavities that are used for the cavity mounting.   |
| [CavityCoupling]({{< relref "cavitycoupling.md" >}}) | 0..* | firstCavity | 1 |  |
| [CavityPlugRole]({{< relref "cavityplugrole.md" >}}) | 0..* | pluggedCavityRef | 0..* | Defines which cavity / cavities in a connector instance is sealed by the plug.   |
| [CavityCoupling]({{< relref "cavitycoupling.md" >}}) | 0..* | secondCavity | 1 |  |
