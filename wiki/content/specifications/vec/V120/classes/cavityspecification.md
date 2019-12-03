---
title: CavitySpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specification for the definition of cavities.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Cavity Seals and Cavity Plugs]({{< relref "../description-of-components/cavity-seals-and-cavity-plugs" >}})<br/> [Connector Housings]({{< relref "../description-of-components/connector-housings" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|angle | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..2 | <html>   <head>     </head>   <body>     <p> Specifies the angle against two planes of the connector housing a terminal used in this cavity can be buckled.      </p>    </body> </html>  | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|cavityDesign | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Deprecated (since Version 1.1.4): This attribute has been marked as deprecated, as it has been replaced by the more meaningful mechanism with <i>TerminalTypes.</i>      </p>    </body> </html>  | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|geometry | [CavityGeometry]({{< relref "cavitygeometry.md" >}}) | 0..1 | <html>   <head>     </head>   <body> Defines the geometry of a cavity in the sealing area (crimp end).</body> </html> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|cavityDimension | [Size]({{< relref "size.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the dimension of the cavity in the sealing area of the cavity (crimp end), not in the contacting area (box end).      </p>  </body> </html> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|minWireElementOutsideDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the minimum diameter a wire is allowed to have to fit into the cavity. This definition is necessary, since wires that are two small might cause movements and in acceptable torsion forces on terminals.      </p>    </body> </html>  | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|maxWireElementOutsideDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>Specifies the maximum diameter a wire is allowed to have to fit into the cavity.  </p></body></html> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|primaryLockingType | [PrimaryLockingType]({{< relref "primarylockingtype.md" >}}) | 0..1 | <html><body><p>Specifies if the cavity has a primary locking and of what type it is. </p></body></html> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|sealable | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <html><body><p>Specifies if the cavity is sealable.  </p></body></html> | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |
|compatibleTerminalType | [TerminalType]({{< relref "terminaltype.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Defines a list of terminal types that are compatible to this CavitySpecification.      </p>    </body> </html>  | [CavitySpecification]({{< relref "cavityspecification.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Cavity]({{< relref "cavity.md" >}}) | 0..* | cavitySpecification | 0..1 | References the CavitySpecification that is satisfied by the cavity.  |
