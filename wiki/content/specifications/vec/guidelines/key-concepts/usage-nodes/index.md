---
title: "Usage Nodes"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
authors: [becker,fehlmann]
tags: ["Core", "SubNode", "Usage Node"]
categories: []
date: 2019-11-06
lastmod: 2021-11-16T10:11:41+01:00
draft: false
review: false
classes:
  - UsageNode
  - UsageNodeSpecification

history:
- date: 2021-11-20T00:00:00Z
  description: "Added examples for the use of sub usage nodes"
  issue: "KBLFRM-790"

menu:
  vec-guidelines:
    parent: key-concepts
    weight: 1000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1000
---

{{< figure src="head_light_left.svg" title="Illustration of Usage Nodes" numbered="true" >}}

The example illustrates the use of *UsageNodes*. A {{<vec-class UsageNode>}} represents a position in an abstract vehicle. For example the Head Light Left. *UsageNodes* belong to the master data and they are defined on some company wide level. They can be used to enforce consistent naming over different projects and different development streams (e.g. between geometry and electrologic).


{{< figure src="usage_nodes.jpg" title="Usage Nodes" numbered="true" >}}

A {{<vec-class UsageNode>}} can be subdivided into more detailed *UsageNodes*. For example the Head Light can be split up into Main Beam, Low Beam and Direction Indicator.

The [diagram above]({{< relref "#usage-nodes" >}}) shows this usage of sub usage nodes. There is one main usage node "A20" with it's sub nodes "A20\*1",  "A20\*2" and "A20\*3". For simplification of the following code snippet only the XML representation of the definition of the parent usage node "A20" and its child node "A20*1" is shown.

```xml
<Specification xsi:type="vec:UsageNodeSpecification" id="id_usage_node_spec_1">
  <Identification>UsageNodeList</Identification>
  <UsageNodes id="id_usage_node_1">
    <Identification>A20</Identification>
    <Description xsi:type="vec:LocalizedString" id="id_1">
      <LanguageCode>En</LanguageCode>
      <Value>Head Ligth left</Value>
    </Description>
    <SubUsageNodes>id_usage_node_2</SubUsageNodes>
  </UsageNodes>
  <UsageNodes id="id_usage_node_2">
    <Identification>A20*1</Identification>
    <Description xsi:type="vec:LocalizedString" id="id_2">
      <LanguageCode>En</LanguageCode>
      <Value>Main Beam</Value>
    </Description>
  </UsageNodes>
[...]
</Specification>
```
