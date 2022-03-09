---
title: TopologyBendingRestriction
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - TopologyBendingRestriction
menu_name: vec-2.0.0
---
<p> As the name implies, a <i>TopologyBendingRestriction</i> defines restrictions on the bendability a path in the <i>Topology.</i> There are multiple reasons, why such restrictions exist, for example:      </p>      <ul>       <li> There is a bending restriction for a wire in the segment.        </li>       <li> The number of wires and the segment diameter is such, that excessive bending causes intolerable torsion forces on wires in the segment.        </li>       <li> Other technical reasons        </li>     </ul>     <p> Since these restrictions can be determined using a variety of methods the VEC provides a concept to store this information for later use. This makes the information available in the downstream processes, without detailed knowledge of the determination procedure (e.g. during form board design, packaging or installation).      </p>      <p> The restriction applies to a path of segments as this can cover different case:      </p>      <ul>       <li> a single segment        </li>       <li> two adjacent segments at a node        </li>       <li> the complete path of a wire        </li>     </ul>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | topology |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|minBendRadiusDynamic | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the minimum bend radius for the restricted path, if it is used in a dynamic environment, where it is bended repeatedly (e.g. in the grommet of the back door).      </p> | [TopologyBendingRestriction]({{< relref "topologybendingrestriction.md" >}}) |
|minBendRadiusStatic | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the minimum bend radius for the restricted path, if it is used in a static environment, where it is bended once during installation. After that it remains unchanged in its bended position during usage.      </p> | [TopologyBendingRestriction]({{< relref "topologybendingrestriction.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Path]({{< relref "path.md" >}}) | restrictedPath | 1 | 0..1 | <p> The path that defines the restricted way in the topology.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [TopologyBendingRestrictionSpecification]({{< relref "topologybendingrestrictionspecification.md" >}}) | 1 |  | 0..* |  |
