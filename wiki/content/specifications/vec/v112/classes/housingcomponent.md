---
title: HousingComponent
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - HousingComponent
menu_name: vec-1.1.2
---
<p> A HousingComponent describes the interface of an EEComponent with which it can be connected to another EEComponent or a harness. The characteristics of the interface can be described with a referenced ConnectorHousingSpecification. (see KBLFRM-300)      </p>
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p>Identification of the HousingComponent, which must be distinct for all HousingComponents of an EEComponent.  </p> | [HousingComponent]({{< relref "housingcomponent.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the <i>HousingComponent</i>.      </p> | [HousingComponent]({{< relref "housingcomponent.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) | housingSpecification | 0..1 | 0..* | References the ConnectorHousingSpecification that is describing the connector interface of the HousingComponent (e.g. Slots, Cavities, Design, Coding). |
| [PinComponent]({{< relref "pincomponent.md" >}}) | pinComponent | 0..* | 1 | Specifies the PinComponents of HousingComponent.   (see KBLFRM-300) |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) | 1 | housingComponent | 0..* | Specifies the available connector interfaces of the EEComponent. |
| [HousingComponentReference]({{< relref "housingcomponentreference.md" >}}) | 0..* | housingComponent | 1 | Points to the HousingComponent referenced by the HousingComponent reference.  (KBLFRM-401) |
