---
title: WireReceptionReference
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A <i>WireReceptionReference</i> is an instance of a <i>WireReception</i>.      </p>    </body> </html> 
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
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies a unique <i>identification</i> of the <i>WireReceptionReference</i>. The <i>identification</i> is guaranteed to be unique within the <i>TerminalRole</i> (this might be for example a reception number).      </p>    </body> </html>  | [WireReceptionReference]({{< relref "wirereceptionreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [WireReception]({{< relref "wirereception.md" >}}) | wireReception | 1 | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>WireReception</i> that is instanced by this <i>WireReceptionReference.</i>      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireMountingDetail]({{< relref "wiremountingdetail.md" >}}) | 0..* | contactedWireReception | 1 | References the WireReception that is used for the WireMounting.   |
| [TerminalRole]({{< relref "terminalrole.md" >}}) | 1 | wireReceptionReference | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the <i>WireReceptionReferences </i>of this <i>TerminalRole.</i>      </p>    </body> </html>  |
