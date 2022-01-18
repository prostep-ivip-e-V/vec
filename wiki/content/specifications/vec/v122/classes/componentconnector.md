---
title: ComponentConnector
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - ComponentConnector
menu_name: vec-1.2.2
---
<p> A <i>ComponentConnector</i> is a grouping of <i>ComponentPorts</i> and represents a logical abstraction of a connector of an <i>EEComponent</i>. When the <i>ComponentNode</i> is realized by an <i>EEComponentRole</i> the <i>ComponentConnector</i> will result in a <i>HousingComponent.</i>      </p>      <p> It is permitted that a <i>ComponentConnector</i> is a 150% definition of connector.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | schematic |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | Specifies a unique identification of the ComponentConnector. The identification is guaranteed to be unique within the ComponentNode. | [ComponentConnector]({{< relref "componentconnector.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* |  | [ComponentConnector]({{< relref "componentconnector.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ComponentPort]({{< relref "componentport.md" >}}) | componentPort | 0..* | 1 | Specifies the ComponentPorts of the ComponentConnector. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ComponentNode]({{< relref "componentnode.md" >}}) | 1 | componentConnector | 0..* | Specifies the ComponentConnectors of a ComponentNode. |
| [HousingComponentReference]({{< relref "housingcomponentreference.md" >}}) | 0..* | componentConnector | 0..1 | References the ComponentConnector that is realized by the referenced HousingComponentReference. |
