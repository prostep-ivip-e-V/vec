﻿---
title: ComponentNode
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - ComponentNode
menu_name: vec-1.1.2
---
<p> A ComponentNode is a node where an electrological component is located. It is a representative for an element in the electric system, e.g. an actuator, a sensor, an ECU. In this way it is quite similar to a NetworkNode and may even reference the corresponding NetworkNode in this case. However, a ComponentNode is more likely to be used as a representative of an inliner or a splice. Moreover, a ComponentNode can define childNodes in order to describe its internal structure.      </p>

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the ComponentNode. The identification is guaranteed to be unique within the ConnectionSpecification.      </p> | [ComponentNode]({{< relref "componentnode.md" >}}) |
|abbreviation | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Room for a short name of the ComponentNode.      </p> | [ComponentNode]({{< relref "componentnode.md" >}}) |
|componentNodeType | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the type of the ComponentNode.      </p> | [ComponentNode]({{< relref "componentnode.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the ComponentNode. </p> | [ComponentNode]({{< relref "componentnode.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ComponentNode]({{< relref "componentnode.md" >}}) | childNode | 0..* | 0..1 | Specifies the ComponentNodes that are a child of this ComponentNode. |
| [ComponentPort]({{< relref "componentport.md" >}}) | componentPort | 0..* | 1 | Specifies the ComponentPorts of the ComponentNode. |
| [NetworkNode]({{< relref "networknode.md" >}}) | networkNode | 0..1 | 0..* | References the NetworkNode that is realized by the ComponentNode. |
| [UsageNode]({{< relref "usagenode.md" >}}) | realizedUsageNode | 0..1 | 0..* | <p> References the <i>UsageNode</i> that is realized by this <i>ComponentNode</i>.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ComponentNode]({{< relref "componentnode.md" >}}) | 0..1 | childNode | 0..* | Specifies the ComponentNodes that are a child of this ComponentNode. |
| [ConnectionSpecification]({{< relref "connectionspecification.md" >}}) | 0..1 | componentNode | 0..* | Specifies the ComponentNodes defined by the ConnectionSpecification. |
| [EEComponentRole]({{< relref "eecomponentrole.md" >}}) | 0..* | componentNode | 0..1 | References the ComponentNode that is realized by the referenced EEComponent (OccurrenceOrUsage with EEComponentRole). KBLFRM-341 |
| [ConnectorHousingRole]({{< relref "connectorhousingrole.md" >}}) | 0..* | componentNode | 0..1 | <p> References the ComponentNode that is realized by the referenced ConnectorHousing (OccurrenceOrUsage with ConnectorHousingRole). This can especially be relevant for inliners. KBLFRM-341.      </p> |
