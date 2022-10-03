---
title: ApplicationConstraint
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - ApplicationConstraint
menu_name: vec-2.0.1
---
<p> An <i>ApplicationConstraint</i> defines a condition with which it is possible to express the inclusion or exclusion of ConfigurableElements in different variants of a product. The <i>ApplicationConstraint </i>is focused to express validity rules based on time periods or elements of the product hierarchy in a concise way (attributes and relationships). It is complementary to the <i>VariantConfiguration</i> which expresses validity rules based on control strings.      </p>      <p> An <i>ApplicationConstraint </i>can reference another <i>ApplicationConstraint</i> as <i>baseInclusion</i>. In this case, an <i>ApplicationConstraint</i> can only be satisfied if its <i>baseInclusion </i>is also satisfied.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | variants |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|type | [ApplicationConstraintType]({{< relref "applicationconstrainttype.md" >}}) | 1 | <p> Defines if the application constraint is positive (allowance) or negative (denial). If the <i>ApplicationConstraint </i>has a <i>baseInclusion</i> that <i>baseInclusion</i> shall define the same type.      </p> | [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) |
|fromDate | [Date]({{< relref "date.md" >}}) | 0..1 | <p> Specifies the lower bound of the time period to which the application constraint applies.      </p> | [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) |
|toDate | [Date]({{< relref "date.md" >}}) | 0..1 | <p> Specifies the upper bound of the time period to which the application constraint applies.      </p> | [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) |
|fromSerialNumber | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the lower bound of a serial number range to which the application constraint applies.      </p> | [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) |
|toSerialNumber | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the upper bound of a serial number range to which the application constraint applies.      </p> | [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) |
|projectPhase | [String]({{< relref "string.md" >}}) | 0..* | <p> Specifies the project phases to which the application constraint applies.      </p> | [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) |
|fromEffectivityControlKey | [String]({{< relref "string.md" >}}) | 0..1 | <p> In the production logistics of complex products (like vehicles), the control of operation and cancellation dates of changes, features, components or the like is usually not carried out via concrete dates but via &quot;date keys&quot;. These keys are then mapped in planning systems with concrete time specifications for certain plants or production steps. In the VEC&#160;these keys are called <i>EffectivityControlKey.</i>      </p>      <p> With the <i>FromEffectivityControlKey</i> and <i>To</i><i>EffectivityControlKey </i>a validity interval can be defined. If one of the two values is defined and the other is omitted, the meaning shall be &quot;unbounded&quot;.      </p> | [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) |
|toEffectivityControlKey | [String]({{< relref "string.md" >}}) | 0..1 | <p> See <i>FromEffectivityControlKey.</i>      </p> | [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Project]({{< relref "project.md" >}}) | project | 0..* |  | <p> &#160;Defines the projects for which the application constraint applies.      </p> |
| [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) | baseInclusion | 0..1 | 0..* | <p> An <i>ApplicationConstraint </i>can only be satisfied if its <i>baseInclusion </i>is satisfied as well.&#160;      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ApplicationConstraintSpecification]({{< relref "applicationconstraintspecification.md" >}}) | 1 | applicationConstraint | 1..* | Specifies the UsageConstraints that apply to the PartVersion or PartUsages described by the UsageConstraintSpecification. |
| [ConfigurableElement]({{< relref "configurableelement.md" >}}) |  | applicationConstraint | 0..* | <p> <i>Deprecated since VEC&#160;V2.0.0. Use ConfigurationConstraints instead.</i>      </p>      <p> References the application constraints that apply to the ConfigurableElement.      </p> |
| [ConfigurationConstraint]({{< relref "configurationconstraint.md" >}}) |  | applicationConstraint | 0..* | <p> References the application constraint that applies to the ConfigurationConstraint.      </p> |
| [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) | 0..* | baseInclusion | 0..1 | <p> An <i>ApplicationConstraint </i>can only be satisfied if its <i>baseInclusion </i>is satisfied as well.&#160;      </p> |
