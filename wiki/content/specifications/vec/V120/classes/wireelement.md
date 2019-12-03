---
title: WireElement
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A <i>WireElement </i>specifies a <i>WireElementSpecification</i> in the context of a <i>WireSpecification</i>. This is necessary to define a unique <i>identification</i> of a <i>WireElementSpecification </i>in the context of a <i>WireSpecification. </i>Additionally the <i>WireElement</i> serves as anchor for the instancing of a wire (<i>WireElementReference</i>) as the <i>WireElementSpecifications </i>are not uniquely related to a <i>WireSpecification</i> for reasons of reusability.      </p>  </body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Instances of Wires]({{< relref "../instances-of-components/instances-of-wires" >}})<br/> [Wire]({{< relref "../description-of-components/wire" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> The identification of the WireElement. The identification is guaranteed to be unique within a wire and immutable. The identification is guaranteed to be the same for the same WireElement over different VEC documents.      </p>    </body> </html>  | [WireElement]({{< relref "wireelement.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) | wireElementSpecification | 1 | 0..* | <html>   <head>     </head>   <body>     <p> Reference the <i>WireElementSpecification </i>that is represented by the <i>WireElement.</i>      </p>    </body> </html>  |
| [WireElement]({{< relref "wireelement.md" >}}) | subWireElement | 0..* | 0..1 | <html>   <head>     </head>   <body>     <p> Defines the <i>subWireElements </i>of this <i>WireElement</i>. The <i>subWireElements </i>shall be consistent with the <i>subWireElementSpecifications</i> of the <i>WireElementSpecification </i>referenced by this <i>WireElement </i>and shall resemble that hierarchy.      </p>  </body> </html> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireElementReference]({{< relref "wireelementreference.md" >}}) | 0..* | referencedWireElement | 1 | <html>   <head>     </head>   <body>     <p> References the WireElement that is represented by the WireElementReference.      </p>    </body> </html>  |
| [WireElement]({{< relref "wireelement.md" >}}) | 0..1 | subWireElement | 0..* | <html>   <head>     </head>   <body>     <p> Defines the <i>subWireElements </i>of this <i>WireElement</i>. The <i>subWireElements </i>shall be consistent with the <i>subWireElementSpecifications</i> of the <i>WireElementSpecification </i>referenced by this <i>WireElement </i>and shall resemble that hierarchy.      </p>  </body> </html> |
| [WireSpecification]({{< relref "wirespecification.md" >}}) | 0..1 | wireElement | 1 | <html>   <head>     </head>   <body>     <p> Specifies the <i>WireElement</i> that represents the root of the <i>WireSpecification</i>.      </p>  </body> </html> |
