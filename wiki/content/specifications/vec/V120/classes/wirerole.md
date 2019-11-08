---
title: WireRole
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A WireRole defines the instance specific properties and relationships of a wire.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies a unique identification of the Role. The identification is guaranteed to be unqiue within the OccurrenceOrUsage. </p></body></html> | [Role]({{< relref "role.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [WireElementReference]({{< relref "wireelementreference.md" >}}) | wireElementReference | 0..* | 1 | Specifies the WireElementReferences used in the WireRole. For multi core wires more than one WireElementReference is needed.   |
| [WireSpecification]({{< relref "wirespecification.md" >}}) | wireSpecification | 1 | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>WireSpecification</i> that is instanced by this <i>WireRole.</i>      </p>    </body> </html>  |
