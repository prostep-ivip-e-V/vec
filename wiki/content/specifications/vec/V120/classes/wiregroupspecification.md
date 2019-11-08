---
title: WireGroupSpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specification for the definition of WireGroups. Wire groups are for example used for the representation of twisted pairs.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|groupType | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>Specifies the type of the group. This should be an enumeration of values defined in a conformance class (e.g. twisted pair, ...).  </p></body></html> | [WireGroupSpecification]({{< relref "wiregroupspecification.md" >}}) |
|lengthOfTwist | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>Specifies the length of twist if the wire group is representing a twisted pair.  </p></body></html> | [WireGroupSpecification]({{< relref "wiregroupspecification.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireGrouping]({{< relref "wiregrouping.md" >}}) | 0..* | wireGroupSpecification | 1 | References the WireGroupSpecification that applies to the WireGrouping.   |
| [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) | 0..* | wireGroupSpecification | 0..1 | <html>   <head>     </head>   <body>     <p> If the <i>WireElementSpecification</i> is representing a wire group, then the specification of the wire group is referenced here. That means as well, that the <i>WireElementSpecification</i> shall have <i>subWireElementSpecifications</i>.      </p>  </body> </html> |
