---
title: UsageNode
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - UsageNode
menu_name: vec-1.2.0
---
<p> A <i>UsageNode</i> represents a position in an abstract vehicle. For example, the &quot;Head Light Left&quot;. <i>UsageNodes</i> belong to the master data and they are defined on some companywide level. They can be used to enforce consistent naming over different projects and different development streams (e.g. between Geometry and Electrologic).      </p>      <p> A <i>UsageNode</i> can be realized by different elements in the VEC (e.g. <i>NetworkNode, OccurrenceOrUsage, TopologyNode, ComponentNode</i>).      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | usage_node |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|abbreviation | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> Specifies an abbreviation of the <i>UsageNode</i>. Normally this a human readable short name.      </p> | [UsageNode]({{< relref "usagenode.md" >}}) |
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique <i>identification</i> of the <i>UsageNode</i>. The <i>identification</i> is guaranteed to be unique within the context. For all VEC-documents a <i>UsageNode-instance</i> can be trusted to be the same if the context-instance is the same and the <i>identification</i> of the <i>UsageNode</i> is the same.      </p> | [UsageNode]({{< relref "usagenode.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the <i>UsageNode</i>.      </p> | [UsageNode]({{< relref "usagenode.md" >}}) |
|usageNodeType | [UsageNodeType]({{< relref "usagenodetype.md" >}}) | 0..1 | <p>Defines the type of the UsageNode. The type determines how the UsageNode is handled in the latter processes. </p> | [UsageNode]({{< relref "usagenode.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [UsageNode]({{< relref "usagenode.md" >}}) | subUsageNodes | 0..* | 0..1 |  |
| [Project]({{< relref "project.md" >}}) | usedInProject | 0..* | 0..* | <p> Specifies the <i>Projects</i> in which the <i>UsageNode</i> can be used.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ComponentNode]({{< relref "componentnode.md" >}}) | 0..* | realizedUsageNode | 0..1 | <p> References the <i>UsageNode</i> that is realized by this <i>ComponentNode</i>.      </p> |
| [TopologyNode]({{< relref "topologynode.md" >}}) | 0..* | realizedUsageNode | 0..1 | <p> References the <i>UsageNode</i> that is realized by this <i>TopologyNode</i>.      </p> |
| [NetworkNode]({{< relref "networknode.md" >}}) | 0..* | realizedUsageNode | 0..1 | <p> References the <i>UsageNode</i> that is realized by this <i>NetworkNode</i>.      </p> |
| [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) | 0..* | realizedUsageNode | 0..1 | <p> References the <i>UsageNode</i> that is realized by this <i>OccurrenceOrUsage</i>.      </p> |
| [UsageNode]({{< relref "usagenode.md" >}}) | 0..1 | subUsageNodes | 0..* |  |
| [UsageConstraint]({{< relref "usageconstraint.md" >}}) | 0..* | usageNode | 0..* | <p> References the <i>UsageNode</i> to which the <i>UsageConstraint</i> applies. This means the described <i>PartVersion</i> is allowed / denied in the referenced UsageNode.      </p> |
| [UsageNodeSpecification]({{< relref "usagenodespecification.md" >}}) | 0..1 | usageNodes | 0..* | <p> Specifies the <i>UsageNodes</i> defined by this <i>UsageNodeSpecification.</i>      </p> |
