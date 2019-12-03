---
title: SpliceTerminalRole
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>A SpliceTerminalRole defines the instance specific properties and relationships of a splice terminal. </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [TerminalRole]({{< relref "terminalrole.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Instances of Terminals]({{< relref "../instances-of-components/instances-of-terminals" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies a unique identification of the Role. The identification is guaranteed to be unqiue within the OccurrenceOrUsage. </p></body></html> | [Role]({{< relref "role.md" >}}) |
|sealState | [SealState]({{< relref "sealstate.md" >}}) | 0..1 | <html><body><p>Specifies if this instance of a terminal should be sealed (waterproof). This applies for example to SpliceTerminals.  </p></body></html> | [TerminalRole]({{< relref "terminalrole.md" >}}) |
|spliceType | [SpliceType]({{< relref "splicetype.md" >}}) | 0..1 | <html><body><p>Specifies the type of splice (inline, end).  </p></body></html> | [SpliceTerminalRole]({{< relref "spliceterminalrole.md" >}}) |
|insulationState | [InsulationState]({{< relref "insulationstate.md" >}}) | 0..1 | <html><body><p>Specifies the insulation state of the splice, in other words is electrically insulated or not.  </p></body></html> | [SpliceTerminalRole]({{< relref "spliceterminalrole.md" >}}) |

