---
title: ConnectionGroup
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A ConnectionGroup references two or more Connections expressing that the physical realization of the referenced Connection shall be somehow grouped e.g. twisted. For complex structures a ConnectionGroup can specify subgroups.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | schematic |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Connection Specification]({{< relref "../connectivity/connection-specification" >}})<br/> [Wiring Specification]({{< relref "../connectivity/wiring-specification" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the ConnectionGroup. The identification is guaranteed to be unique within the ConnectionSpecification.      </p>    </body> </html>  | [ConnectionGroup]({{< relref "connectiongroup.md" >}}) |
|connectionGroupType | [ConnectionGroupType]({{< relref "connectiongrouptype.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies the type of the connectionGroup, valid literals are defined in the open enumeration <i>ConnectionGroupType</i>.      </p>  </body> </html> | [ConnectionGroup]({{< relref "connectiongroup.md" >}}) |
|installationInstruction | [Instruction]({{< relref "instruction.md" >}}) | 0..* | <html><body><p>Specifies additional InstallationInstructions for the ConnectionGroup.  </p></body></html> | [ConnectionGroup]({{< relref "connectiongroup.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html><body><p>Room for additional, human readable information about the ConnectionGroup. </p></body></html> | [ConnectionGroup]({{< relref "connectiongroup.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ConnectionGroup]({{< relref "connectiongroup.md" >}}) | subGroup | 0..* | 0..1 | Specifies the ConnectionGroups that are a subgroup of this ConnectionGroup.  |
| [Connection]({{< relref "connection.md" >}}) | connection | 2..* | 0..* | References the Connections that are grouped by the ConnectionGroup.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ConnectionSpecification]({{< relref "connectionspecification.md" >}}) | 0..1 | connectionGroup | 0..* | Specifies the ConnectionGroup defined by the ConnectionSpecification.  |
| [WireGrouping]({{< relref "wiregrouping.md" >}}) |  | connectionGroup | 0..1 | <html>   <head>     </head>   <body> References the <i>ConnectionGroup</i> that is realized by this <i>WireGrouping.</i> </body> </html> |
| [WireElementReference]({{< relref "wireelementreference.md" >}}) |  | connectionGroup | 0..1 | <html>   <head>     </head>   <body> References the <i>ConnectionGroup</i> that is realized by this <i>WireElementReference.</i> This applies normally to <i>WireElementReference </i>that have <i>subWireElements</i>.</body> </html> |
| [ConnectionGroup]({{< relref "connectiongroup.md" >}}) | 0..1 | subGroup | 0..* | Specifies the ConnectionGroups that are a subgroup of this ConnectionGroup.  |
