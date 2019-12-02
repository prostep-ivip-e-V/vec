---
title: GrommetSpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>Specification for the definition of grommets. </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Fixings, Grommets and CableDucts]({{< relref "../description-of-components/fixings-grommets-and-cableducts" >}})<br/> [Instances of Fixings, Grommets and Cable Ducts]({{< relref "../instances-of-components/instances-of-fixings-grommets-and-cable-ducts" >}})<br/> [Placeable Elements]({{< relref "../description-of-components/placeable-elements" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p></body></html> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|hardness | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>Specifies the hardness of the grommet.  </p></body></html> | [GrommetSpecification]({{< relref "grommetspecification.md" >}}) |
|holeDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <html><body><p>Specifies the valid diameter of a hole into which the grommet fits.  </p></body></html> | [GrommetSpecification]({{< relref "grommetspecification.md" >}}) |
|plateThickness | [ValueRange]({{< relref "valuerange.md" >}}) | 0..1 | <html><body><p>Specifies valid the plate thickness at the hole into which the grommet fits.  </p></body></html> | [GrommetSpecification]({{< relref "grommetspecification.md" >}}) |
|grommetType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies the type of the grommet. Appropriate values should be defined in a conformance class.  </p></body></html> | [GrommetSpecification]({{< relref "grommetspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CableLeadThrough]({{< relref "cableleadthrough.md" >}}) | cableLeadThrough | 0..* | 1 | Specifies the CableLeadThroughs of the Grommet.   |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [GrommetRole]({{< relref "grommetrole.md" >}}) | 0..* | grommetSpecification | 1 | <html>   <head>     </head>   <body>     <p> References the <i>GrommetSpecification</i> that is instanced by this <i>GrommetRole.</i>      </p>    </body> </html>  |
