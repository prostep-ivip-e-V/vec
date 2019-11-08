---
title: TerminalType
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Defines the type (system) of a terminal. The type is specified by a combination of a name for the system and an optional nominalSize.     </p>      <p> In some processes the terminal type is referred as cavity system, because the system of cavities, terminals, seals, plugs and other cavity accessories must match&#160;/&#160;be compatible.     </p>      <p> However, since a terminal has only one since type and a cavity can be compatible to more than one it is named <i>TerminalType</i> in the VEC.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|name | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>Specifies the type of the cavity (e.g. MQS, DFK, ...). </p></body></html> | [TerminalType]({{< relref "terminaltype.md" >}}) |
|nominalSize | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies the nominal size of terminals that fit into the cavity. (e.g. 2x4).  </p></body></html> | [TerminalType]({{< relref "terminaltype.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}) | 0..1 | terminalType | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the terminal type that is associated with the terminal reception.      </p>    </body> </html>  |
