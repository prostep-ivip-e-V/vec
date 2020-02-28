---
title: WireReceptionReference
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - WireReceptionReference
menu_name: vec-1.1.2
---
<p> A <i>WireReceptionReference</i> is an instance of a <i>WireReception</i>.      </p>
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
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique <i>identification</i> of the <i>WireReceptionReference</i>. The <i>identification</i> is guaranteed to be unique within the <i>TerminalRole</i> (this might be for example a reception number).      </p> | [WireReceptionReference]({{< relref "wirereceptionreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [WireReception]({{< relref "wirereception.md" >}}) | wireReception | 1 | 0..* | <p> References the <i>WireReception</i> that is instanced by this <i>WireReceptionReference.</i>      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireMountingDetail]({{< relref "wiremountingdetail.md" >}}) | 0..* | contactedWireReception | 1 | References the WireReception that is used for the WireMounting. |
| [TerminalRole]({{< relref "terminalrole.md" >}}) | 1 | wireReceptionReference | 0..* | <p> Specifies the <i>WireReceptionReferences </i>of this <i>TerminalRole.</i>      </p> |
