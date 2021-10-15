---
title: InternalComponentConnection
toc: false
type: specs
date: "2021-10-18"
draft: false
specification: VEC
version: 1.2.1
documentType: "Recommendation"
elementType: Class
classes:
  - InternalComponentConnection
menu_name: vec-1.2.1
---
<p> An <i>InternalComponentConnection</i> defines a conductive connection between <i>PinComponents </i>within an <i>EEComponent</i>. Such a connection can be statically permanent or dynamically switch (e.g. by a relais). This behaviour can be defined with a <i>SwitchingState</i>.      </p>      <p> The electrical behaviour of an <i>InternalComponentConnection </i>can be further specified by a referenced <i>ConductorSpecification.</i>      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Identification of the <i>InternalComponentConnection</i>, which must be distinct for all <i>InternalComponentConnection</i> of an <i>EEComponent</i>.      </p> | [InternalComponentConnection]({{< relref "internalcomponentconnection.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PinComponent]({{< relref "pincomponent.md" >}}) | pins | 2..* | 0..* |  |
| [ConductorSpecification]({{< relref "conductorspecification.md" >}}) | conductorSpecification | 0..1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) | 1 | connections | 0..* |  |
| [SwitchingState]({{< relref "switchingstate.md" >}}) | 0..* | switchedConnections | 0..* | <p> Specifies the <i>InternalComponentConnections</i> that are switched by this <i>SwitchingState.</i>      </p> |
