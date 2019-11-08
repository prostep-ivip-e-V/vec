---
title: WireEndAccessorySpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> <i>WireEndAccessorySpecifications </i>are describing parts that are used for a treatment of a wire end before the actual terminal is attached to the <i>WireEnd</i> (e.g. a ferrule).     </p>      <p> The actual specification is done by the referenced <i>WireReceptionSpecification</i> since a <i>WireEndAccessory </i>is basically just a single <i>WireReception</i>.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p></body></html> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) | wireReceptionSpecification | 0..1 |  | <html>   <head>     </head>   <body>     <p> References the single <i>WireReceptionSpecification</i> that is specifying the properties of the <i>WireEndAccessory</i> that are related to wire.      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireEndAccessoryRole]({{< relref "wireendaccessoryrole.md" >}}) |  | wireEndAccessorySpecification | 1 | <html>   <head>     </head>   <body>     <p> References the <i>WireEndAccessorySpecification</i> that is instanced by this <i>WireEndAccessoryRole.</i>      </p>    </body> </html>  |
