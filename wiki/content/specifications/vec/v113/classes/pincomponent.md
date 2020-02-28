---
title: PinComponent
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - PinComponent
menu_name: vec-1.1.3
---
<p> A PinComponent describes a pin of an EEComponent. A PinComponent is part of a HousingComponent and is defined by tree aspects.      </p>      <ol>       <li> Its geometric position in the <i>HousingComponent</i>, which is defined by the <i>referencedCavity.</i>       </li>       <li> Its physical electrical properties, which are defined by the referenced <i>TerminalSpecification.</i>       </li>       <li> Its electrical behaviour, which is defined configuration dependent by its <i>PinComponentBehaviour.</i>       </li>     </ol>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/> [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p>Identification of the PinComponent, which must be distinct for all PinComponent of a HousingComponents.  </p> | [PinComponent]({{< relref "pincomponent.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the <i>PinComponent</i>.      </p> | [PinComponent]({{< relref "pincomponent.md" >}}) |
|pinComponentType | [PinComponentType]({{< relref "pincomponenttype.md" >}}) | 0..1 | <p> Specifies the type of a <i>PinComponent</i>.      </p> | [PinComponent]({{< relref "pincomponent.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PinComponentBehavior]({{< relref "pincomponentbehavior.md" >}}) | behaviour | 0..* | 1 | <p> Specifies the configuration dependent electrical behavior of the<i> PinComponent.</i>      </p> |
| [TerminalSpecification]({{< relref "terminalspecification.md" >}}) | pinSpecification | 0..1 | 0..* | References the TerminalSpecification describing the electrical connectivity aspect of the PinComponent.  (see KBLFRM-300) |
| [Cavity]({{< relref "cavity.md" >}}) | referencedCavity | 0..1 | 0..* | Defines the cavity in the corresponding ConnectorHousingSpecification of the HousingComponent where the PinComponent is located.  (see KBLFRM-300) |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [FuseComponent]({{< relref "fusecomponent.md" >}}) | 0..* | connectedPins | 0..2 |  |
| [HousingComponent]({{< relref "housingcomponent.md" >}}) | 1 | pinComponent | 0..* | Specifies the PinComponents of HousingComponent.   (see KBLFRM-300) |
| [PinComponentReference]({{< relref "pincomponentreference.md" >}}) | 0..* | pinComponent | 1 | Points to the PinComponent referenced by the PinComponent reference.  (KBLFRM-401) |
| [InternalComponentConnection]({{< relref "internalcomponentconnection.md" >}}) | 0..* | pins | 1..* |  |
