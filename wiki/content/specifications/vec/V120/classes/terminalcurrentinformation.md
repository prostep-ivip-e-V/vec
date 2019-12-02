---
title: TerminalCurrentInformation
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>Allows the definition of valid current ranges for a terminal. A current range is always defined for a coreCrossSectionArea and a nominal voltage.  Attributes of the type CurrentRangeInformation normally have the multiplicity [0..*]. This means that such an attribute can have CurrentRangeInformation entries for different coreCrossSectionAreas and nominalVoltages. It must not have multiple entries for the same coreCrossSectionAreas and nominalVoltages.  </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Terminals]({{< relref "../description-of-components/terminals" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|currentRange | [ValueRange]({{< relref "valuerange.md" >}}) | 1 | <html><body><p>Specifies the valid current range for the terminal. It is defined as a value range, because there are terminals where minimum current is needed to avoid corrosion.   </p></body></html> | [TerminalCurrentInformation]({{< relref "terminalcurrentinformation.md" >}}) |
|nominalVoltage | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <html><body><p>Specifies the nominalVoltage for which the CurrentRangeInformation is valid.  </p></body></html> | [TerminalCurrentInformation]({{< relref "terminalcurrentinformation.md" >}}) |
|coreCrossSectionArea | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies the coreCrossSectionArea for which the CurrentRangeInformation is valid. The coreCrossSectionArea is a relevant information, because the thermal absorption of the core depends on the cross section area and thus is a influence factor for the valid current range.      </p>    </body> </html>  | [TerminalCurrentInformation]({{< relref "terminalcurrentinformation.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TerminalSpecification]({{< relref "terminalspecification.md" >}}) | 1 | currentInformation | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>TerminalCurrentInformation</i> that is applicable for the terminal.      </p>    </body> </html>  |
