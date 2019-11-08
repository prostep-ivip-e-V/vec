---
title: TopologySpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specification for the definition of a topology. A topology consists of TopologyNodes, TopologySegments.      </p>  </body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** | [TopologyGroupSpecification]({{< relref "topologygroupspecification.md" >}}) |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies additional, human readable information about the specification.      </p>    </body> </html>  | [Specification]({{< relref "specification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [TopologyNode]({{< relref "topologynode.md" >}}) | topologyNode | 0..* | 1 | Specifies the TopologyNodes defined by the TopologySpecification.  |
| [TopologySegment]({{< relref "topologysegment.md" >}}) | topologySegment | 0..* | 1 | Specifies the TopologySegments defined by the TopologySpecification.  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TopologyMappingSpecification]({{< relref "topologymappingspecification.md" >}}) |  | innerTopolgy | 1 |  |
| [TopologyMappingSpecification]({{< relref "topologymappingspecification.md" >}}) |  | outerTopology | 1 |  |
| [TopologyGroupSpecification]({{< relref "topologygroupspecification.md" >}}) | 0..* | topologySpecification | 0..* |  |
