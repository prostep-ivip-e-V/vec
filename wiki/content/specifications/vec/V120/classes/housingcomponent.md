---
title: HousingComponent
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A HousingComponent describes the interface of an EEComponent with which it can be connected to another EEComponent or a harness. The characteristics of the interface can be described with a referenced ConnectorHousingSpecification. (see KBLFRM-300)      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/> [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [EE-Component subclasses]({{< relref "../description-of-components/ee-component-subclasses" >}})<br/> [EE-Components]({{< relref "../description-of-components/ee-components" >}})<br/> [Instances of EE-Components]({{< relref "../instances-of-components/instances-of-ee-components" >}})<br/> [Multi Fuse]({{< relref "../description-of-components/multi-fuse" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>Identification of the HousingComponent, which must be distinct for all HousingComponents of an EEComponent.  </p></body></html> | [HousingComponent]({{< relref "housingcomponent.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the <i>HousingComponent</i>.      </p>    </body> </html>  | [HousingComponent]({{< relref "housingcomponent.md" >}}) |
|compatibleTypes | [HousingComponentType]({{< relref "housingcomponenttype.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> The values of this attribute define the <i>HousingComponentTypes</i> that are valid to be associated with this <i>HousingComponent.</i> In other word, if this <i>HousingComponent </i>can<i> </i>be associated with a relay, a fuse, a connector housing of a harness. The values are matching the <i>PrimaryPartType</i> of the <i>PartVersion</i> of the component that should be associated (plugged) into this housing component.      </p>    </body> </html>  | [HousingComponent]({{< relref "housingcomponent.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) | housingSpecification | 0..1 | 0..* | References the ConnectorHousingSpecification that is describing the connector interface of the HousingComponent (e.g. Slots, Cavities, Design, Coding).  |
| [PinComponent]({{< relref "pincomponent.md" >}}) | pinComponent | 0..* | 1 | Specifies the PinComponents of HousingComponent.   (see KBLFRM-300)  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) | 1 | housingComponent | 0..* | Specifies the available connector interfaces of the EEComponent.   |
| [HousingComponentReference]({{< relref "housingcomponentreference.md" >}}) | 0..* | housingComponent | 1 | Points to the HousingComponent referenced by the HousingComponent reference.  (KBLFRM-401)  |
