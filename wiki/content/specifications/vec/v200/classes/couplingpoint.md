---
title: CouplingPoint
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - CouplingPoint
menu_name: vec-2.0.0
---
<p> A <i>CouplingPoint</i> defines a single coupling. If a coupling takes place, all sub elements are connected. If the coupling is disconnected, all subelements are disconnected.     </p>      <p> If a coupling occurs between two connectors, and not just between two terminals, the <i>CouplingPoint</i> references the respective <i>ConnectorHousingRoles</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | coupling |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 |  | [CouplingPoint]({{< relref "couplingpoint.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ConnectorHousingRole]({{< relref "connectorhousingrole.md" >}}) | secondConnector | 0..1 | 0..* |  |
| [SlotCoupling]({{< relref "slotcoupling.md" >}}) | slotCoupling | 0..* | 1 |  |
| [ConnectorHousingRole]({{< relref "connectorhousingrole.md" >}}) | firstConnector | 0..1 | 0..* |  |
| [MatingPoint]({{< relref "matingpoint.md" >}}) | matingPoint | 0..* | 1 | <p> Specifies the <i>MatingPoints</i> defined within the <i>CouplingPoint</i>.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CouplingSpecification]({{< relref "couplingspecification.md" >}}) | 1 |  | 0..* |  |
