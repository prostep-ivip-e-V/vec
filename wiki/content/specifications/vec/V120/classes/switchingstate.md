---
title: SwitchingState
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A <i>SwitchingState</i> defines a certain static state of an <i>EEComponent</i>. Under which conditions or when such a state applies, should be described in an external description model.     </p>      <p> A <i>SwitchingState</i> references a collection of <i>InternalComponentConnections</i>, with the semantic that these connections exist (and only these connections) when the switching state is active.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [EE-Components]({{< relref "../description-of-components/ee-components" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Identification of the SwitchingState, which must be distinct for all SwitchingStates of an EEComponent.      </p>    </body> </html>  | [SwitchingState]({{< relref "switchingstate.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [InternalComponentConnection]({{< relref "internalcomponentconnection.md" >}}) | switchedConnections | 0..* | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>InternalComponentConnections</i> that are switched by this <i>SwitchingState.</i>      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) | 1 | states | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the available <i>SwitchingStates</i> of the EEComponent.      </p>    </body> </html>  |
