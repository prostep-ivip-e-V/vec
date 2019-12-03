---
title: UsageConstraint
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>Specifies a constraint of the possible usages for PartVersion or PartUsages. UsageContraints are of part master data information. UsageConstraints specify general restrictions for the application of a PartVersion or PartUsage (e.g. a certain period of time in which the part is allowed to be used).  (see KBLFRM-229) </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | usage_constraint |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Usage Constraints]({{< relref "../key-concepts/usage-constraints" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|type | [UsageConstraintType]({{< relref "usageconstrainttype.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Defines if the usage constraint is positive (allowance) or negative (denial).      </p>    </body> </html>  | [UsageConstraint]({{< relref "usageconstraint.md" >}}) |
|fromDate | [Date]({{< relref "date.md" >}}) | 0..1 | <html><body><p>Specifies the lower bound of the time period to which the usage constraint applies. </p></body></html> | [UsageConstraint]({{< relref "usageconstraint.md" >}}) |
|toDate | [Date]({{< relref "date.md" >}}) | 0..1 | <html><body><p>Specifies the upper bound of the time period to which the usage constraint applies. </p></body></html> | [UsageConstraint]({{< relref "usageconstraint.md" >}}) |
|fromSerialNumber | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies the lower bound of a serial number range to which the usage constraint applies. </p></body></html> | [UsageConstraint]({{< relref "usageconstraint.md" >}}) |
|toSerialNumber | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the upper bound of a serial number range to which the usage constraint applies.      </p>    </body> </html>  | [UsageConstraint]({{< relref "usageconstraint.md" >}}) |
|projectPhase | [String]({{< relref "string.md" >}}) | 0..* | <html><body><p>Specifies the project phases to which the usage constraint applies. </p></body></html> | [UsageConstraint]({{< relref "usageconstraint.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [UsageNode]({{< relref "usagenode.md" >}}) | usageNode | 0..* | 0..* | <html>   <head>     </head>   <body> References the <i>UsageNode</i> to which the <i>UsageConstraint</i> applies. This means the described <i>PartVersion</i> is allowed / denied in the referenced UsageNode.</body> </html> |
| [Project]({{< relref "project.md" >}}) | project | 0..* | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>Projects</i> to which the <i>UsageConstraint</i> applies. This means the described PartVersion is allowed / denied in the referenced UsageConstraint.      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [UsageConstraintSpecification]({{< relref "usageconstraintspecification.md" >}}) | 1 | partUsageConstraint | 1..* | Specifies the UsageConstraints that apply to the PartVersion or PartUsages described by the UsageConstraintSpecification.   |
