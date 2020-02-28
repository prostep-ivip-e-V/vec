---
title: Usage Constraints
toc: false
type: specs
layout: diagram
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - UsageConstraintType
  - PartVersion
  - UsageNode
  - Project
  - UsageConstraintSpecification
  - UsageConstraint
menu:
  VEC-1.2.0:    
    parent: key-concepts
    identifier: key-concepts/usage-constraints
    weight: 1001006 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1001006
---
{{< svgfigure src="usage-constraints.png" width="897" height="441" caption="Usage Constraints" numbered="true" >}}
  {{< svglink relref="../../classes/usageconstrainttype.md" x="15.0" y="301.0" width="127.0" height="82.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="687.0" y="0.0" width="196.0" height="127.0" >}}
  {{< svglink relref="../../classes/usagenode.md" x="162.0" y="301.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/project.md" x="470.0" y="294.0" width="217.0" height="118.0" >}}
  {{< svglink relref="../../classes/usageconstraintspecification.md" x="15.0" y="28.0" width="554.0" height="43.0" >}}
  {{< svglink relref="../../classes/usageconstraint.md" x="15.0" y="140.0" width="645.0" height="115.0" >}}
{{< / svgfigure >}}
<p> A <i>UsageConstraintSpecification</i> is intended to describe the allowed usage of the <i>constrainedParts</i>.      </p>      <p> A <i>UsageConstraintSpecification</i> is a container for various <i>UsageConstraints</i> each representing a single constraint. The sequencing of the <i>UsageConstraints</i> specifies the priority: a general denial may be relativized by a following <i>UsageConstraint</i> and vice-versa. In other words, the ordering of the <i>UsageConstraintSpecification.partUsageConstraints</i> collection has a semantic and is highly relevant. <i>UsageConstraints</i> further back in the collection have a higher priority than <i>UsageConstraints</i> further ahead. Successive <i>UsageConstraints</i> of the same type shall be interpreted as concatenation, whereas successive <i>UsageConstraints</i> of different types shall be interpreted as exceptions to the preceding statement.       </p>      <p> The relationships U<i>sageConstraint.usageNode</i> and <i>UsageConstraint.project</i> make it possible to specify at which <i>UsageNodes</i> respectively in which <i>Projects</i> the usage of the constrained <i>PartVersions</i> is allowed/denied.      </p>