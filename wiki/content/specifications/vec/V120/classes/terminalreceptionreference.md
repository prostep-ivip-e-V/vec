---
title: TerminalReceptionReference
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A <i>TerminalReceptionReference</i> is an instance of a <i>TerminalReception</i>.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies a unique <i>identification</i> of the <i>TerminalReceptionReference</i>. The <i>identification</i> is guaranteed to be unique within the <i>TerminalRole</i> (this might be for example a reception number).      </p>    </body> </html>  | [TerminalReceptionReference]({{< relref "terminalreceptionreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TerminalReception]({{< relref "terminalreception.md" >}}) | terminalReception | 1 | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>TerminalReception</i> that is instanced by this <i>TerminalReceptionReference.</i>      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [MatingDetail]({{< relref "matingdetail.md" >}}) | 0..* | firstTerminalReception | 1 | References the first terminal reception that is mated.  |
| [MatingDetail]({{< relref "matingdetail.md" >}}) | 0..* | secondTerminalReception | 1 | References the second terminal reception that is mated.  |
| [CavityMountingDetail]({{< relref "cavitymountingdetail.md" >}}) | 0..* | terminalReceptionReference | 1 | References the TerminalReception that is used for the detailed description of the cavity mounting.   |
| [TerminalRole]({{< relref "terminalrole.md" >}}) | 1 | terminalReceptionReference | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>TerminalReceptionReferences </i>of this <i>TerminalRole.</i>      </p>    </body> </html>  |
