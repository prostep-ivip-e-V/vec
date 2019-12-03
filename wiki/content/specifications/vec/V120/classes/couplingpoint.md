---
title: CouplingPoint
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A <i>CouplingPoint</i> defines a single coupling. If a coupling takes place, all sub elements are connected. If the coupling is disconnected, all subelements are disconnected.     </p>      <p> If a coupling occurs between two connectors, and not just between two terminals, the <i>CouplingPoint</i> references the respective <i>ConnectorHousingRoles</i>.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | mating |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Coupling Specification]({{< relref "../connectivity/coupling-specification" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 |  | [CouplingPoint]({{< relref "couplingpoint.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ConnectorHousingRole]({{< relref "connectorhousingrole.md" >}}) | firstConnector | 0..1 | 0..* |  |
| [ConnectorHousingRole]({{< relref "connectorhousingrole.md" >}}) | secondConnector | 0..1 | 0..* |  |
| [MatingPoint]({{< relref "matingpoint.md" >}}) | matingPoint | 0..* | 1 | Specifies the MatingPoints defined by the MatingSpecification.  |
| [SlotCoupling]({{< relref "slotcoupling.md" >}}) | slotCoupling | 0..* | 1 |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CouplingSpecification]({{< relref "couplingspecification.md" >}}) | 1 |  | 0..* |  |
