---
title: SegmentLength
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> Specifies the length of a <i>TopologySegment</i>. The length of a <i>TopologySegment </i>is defined as the length of the centerline of the segment.      </p>      <p> Attributes of the type SegmentLength normally have the multiplicity [0..*]. This means that such an attribute can have SegmentLength-entries for different classifications. It must not have multiple entries with the same classification.      </p>  </body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|length | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <html><body><p>Specifies the length of the TopologySegment.  </p></body></html> | [SegmentLength]({{< relref "segmentlength.md" >}}) |
|classification | [LengthClassification]({{< relref "lengthclassification.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Specifies the classification of the segment length.      </p>    </body> </html>  | [SegmentLength]({{< relref "segmentlength.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TopologySegment]({{< relref "topologysegment.md" >}}) | 1 | lengthInformation | 0..* | Specifies the different SegmentLengths of the TopologySegment.   |
