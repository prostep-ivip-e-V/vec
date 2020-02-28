---
title: TerminalCurrentInformation
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalCurrentInformation
menu_name: vec-1.1.2
---
<p>Allows the definition of valid current ranges for a terminal. A current range is always defined for a coreCrossSectionArea and a nominal voltage.  Attributes of the type CurrentRangeInformation normally have the multiplicity [0..*]. This means that such an attribute can have CurrentRangeInformation entries for different coreCrossSectionAreas and nominalVoltages. It must not have multiple entries for the same coreCrossSectionAreas and nominalVoltages.  </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|currentRange | [ValueRange]({{< relref "valuerange.md" >}}) | 1 | <p>Specifies the valid current range for the terminal. It is defined as a value range, because there are terminals where minimum current is needed to avoid corrosion.   </p> | [TerminalCurrentInformation]({{< relref "terminalcurrentinformation.md" >}}) |
|nominalVoltage | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p>Specifies the nominalVoltage for which the CurrentRangeInformation is valid.  </p> | [TerminalCurrentInformation]({{< relref "terminalcurrentinformation.md" >}}) |
|coreCrossSectionArea | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p> Specifies the coreCrossSectionArea for which the CurrentRangeInformation is valid. The coreCrossSectionArea is a relevant information, because the thermal absorption of the core depends on the cross section area and thus is a influence factor for the valid current range.      </p> | [TerminalCurrentInformation]({{< relref "terminalcurrentinformation.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TerminalSpecification]({{< relref "terminalspecification.md" >}}) | 1 | currentInformation | 0..* | <p> Specifies the <i>TerminalCurrentInformation</i> that is applicable for the terminal.      </p> |
