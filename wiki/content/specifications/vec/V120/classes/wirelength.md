---
title: WireLength
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Defines the length of a WireElementReference. A WireElementReference can have multiple lengths of different types, but must not have more than one length of the same type.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Instances of Wires]({{< relref "../instances-of-components/instances-of-wires" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|lengthType | [WireLengthType]({{< relref "wirelengthtype.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> The type of the length.&#160;Possible values are defined in an open enumeration (see WireLengthType).      </p>  </body> </html> | [WireLength]({{< relref "wirelength.md" >}}) |
|lengthValue | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <html><body><p>The length value for the type.  </p></body></html> | [WireLength]({{< relref "wirelength.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireElementReference]({{< relref "wireelementreference.md" >}}) | 1 | wireLength | 0..* | Specifies the different length of a wire.   |
