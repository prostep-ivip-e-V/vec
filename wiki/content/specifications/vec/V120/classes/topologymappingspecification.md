---
title: TopologyMappingSpecification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | KBLFRM-884 |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |


## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [NodeMapping]({{< relref "nodemapping.md" >}}) |  | 0..* | 1 |  |
| [TopologySpecification]({{< relref "topologyspecification.md" >}}) | innerTopolgy | 1 |  |  |
| [TopologySpecification]({{< relref "topologyspecification.md" >}}) | outerTopology | 1 |  |  |
| [SegmentMapping]({{< relref "segmentmapping.md" >}}) |  | 0..* |  |  |
