---
title: InternalComponentConnection
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> An <i>InternalComponentConnection</i> defines a conductive connection between a number of <i>PinComponents </i>within an <i>EEComponent</i>. Such a connection can be statically permanent or dynamically switch (e.g. by a relais). This behaviour can be defined with a <i>SwitchingState</i>.     </p>      <p> The electrical behaviour of an <i>InternalComponentConnection </i>can be further specified by a referenced <i>ConductorSpecification.</i>      </p>    </body> </html> 
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Identification of the <i>InternalComponentConnection</i>, which must be distinct for all <i>InternalComponentConnection</i> of an <i>EEComponent</i>.      </p>    </body> </html>  | [InternalComponentConnection]({{< relref "internalcomponentconnection.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ConductorSpecification]({{< relref "conductorspecification.md" >}}) | conductorSpecification | 0..1 | 0..* |  |
| [PinComponent]({{< relref "pincomponent.md" >}}) | pins | 2..* | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [EEComponentSpecification]({{< relref "eecomponentspecification.md" >}}) | 1 | connections | 0..* |  |
| [SwitchingState]({{< relref "switchingstate.md" >}}) | 0..* | switchedConnections | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>InternalComponentConnections</i> that are switched by this <i>SwitchingState.</i>      </p>    </body> </html>  |
