---
title: SwitchingState
toc: false
type: specs
date: "2021-10-18"
draft: false
specification: VEC
version: 1.2.1
documentType: "Recommendation"
elementType: Class
classes:
  - SwitchingState
menu_name: vec-1.2.1
---
<p> A <i>SwitchingState</i> defines a certain static state of an <i>EEComponent</i>. Under which conditions or when such a state applies, should be described in an external description model.     </p>      <p> A <i>SwitchingState</i> references a collection of <i>InternalComponentConnections</i>, with the semantic that these connections exist (and only these connections) when the switching state is active.      </p>

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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Identification of the SwitchingState, which must be distinct for all SwitchingStates of an EEComponent.      </p> | [SwitchingState]({{< relref "switchingstate.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [InternalComponentConnection]({{< relref "internalcomponentconnection.md" >}}) | switchedConnections | 0..* | 0..* | <p> Specifies the <i>InternalComponentConnections</i> that are switched by this <i>SwitchingState.</i>      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) | 1 | states | 0..* | <p> Specifies the available <i>SwitchingStates</i> of the EEComponent.      </p> |
