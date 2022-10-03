---
title: UsageConstraint
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - UsageConstraint
menu_name: vec-2.0.1
---
<p> Specifies a constraint of the possible usages for PartVersion or PartUsages. UsageConstraints are of part master data information. UsageConstraints specify general restrictions for the application of a PartVersion or PartUsage (e.g. a certain period of time in which the part is allowed to be used). (see KBLFRM-229)      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | usage_constraint |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|type | [UsageConstraintType]({{< relref "usageconstrainttype.md" >}}) | 1 | <p> Defines if the usage constraint is positive (allowance) or negative (denial).      </p> | [UsageConstraint]({{< relref "usageconstraint.md" >}}) |
|fromDate | [Date]({{< relref "date.md" >}}) | 0..1 | <p>Specifies the lower bound of the time period to which the usage constraint applies. </p> | [UsageConstraint]({{< relref "usageconstraint.md" >}}) |
|toDate | [Date]({{< relref "date.md" >}}) | 0..1 | <p>Specifies the upper bound of the time period to which the usage constraint applies. </p> | [UsageConstraint]({{< relref "usageconstraint.md" >}}) |
|fromSerialNumber | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the lower bound of a serial number range to which the usage constraint applies. </p> | [UsageConstraint]({{< relref "usageconstraint.md" >}}) |
|toSerialNumber | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the upper bound of a serial number range to which the usage constraint applies.      </p> | [UsageConstraint]({{< relref "usageconstraint.md" >}}) |
|projectPhase | [String]({{< relref "string.md" >}}) | 0..* | <p>Specifies the project phases to which the usage constraint applies. </p> | [UsageConstraint]({{< relref "usageconstraint.md" >}}) |
|fromEffectivityControlKey | [String]({{< relref "string.md" >}}) | 0..1 | <p> In the production logistics of complex products (like vehicles), the control of operation and cancellation dates of changes, features, components or the like is usually not carried out via concrete dates but via &quot;date keys&quot;. These keys are then mapped in planning systems with concrete time specifications for certain plants or production steps. In the VEC&#160;these keys are called <i>EffectivityControlKey.</i>      </p>      <p> With the <i>FromEffectivityControlKey</i> and <i>To</i><i>EffectivityControlKey </i>a validity interval can be defined. If one of the two values is defined and the other is omitted, the meaning shall be &quot;unbounded&quot;.      </p> | [UsageConstraint]({{< relref "usageconstraint.md" >}}) |
|toEffectivityControlKey | [String]({{< relref "string.md" >}}) | 0..1 | <p> See <i>FromEffectivityControlKey.</i>      </p> | [UsageConstraint]({{< relref "usageconstraint.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [UsageNode]({{< relref "usagenode.md" >}}) | usageNode | 0..* | 0..* | <p> References the <i>UsageNode</i> to which the <i>UsageConstraint</i> applies. This means the described <i>PartVersion</i> is allowed / denied in the referenced UsageNode.      </p> |
| [Project]({{< relref "project.md" >}}) | project | 0..* | 0..* | <p> References the <i>Projects</i> to which the <i>UsageConstraint</i> applies. This means the described PartVersion is allowed / denied in the referenced UsageConstraint.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [UsageConstraintSpecification]({{< relref "usageconstraintspecification.md" >}}) | 1 | partUsageConstraint | 1..* | <p> Specifies the UsageConstraints that apply to the PartVersion or PartUsages described by the UsageConstraintSpecification. The ordering of this association is relevant. The elements shall arranged in the order of ascending priority.&#160;That means, elements further back in the collection have a higher priority.      </p> |
