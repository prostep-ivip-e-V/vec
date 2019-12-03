---
title: ApplicationConstraint
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> An <i>ApplicationConstraint</i> defines a condition with which it is possible to express the inclusion or exclusion of ConfigurableElements in different variants of a product. The <i>ApplicationConstraint </i>is focused to express validity rules based on time periods or elements of the product hierarchy in a concise way (attributes and relationships). It is complementary to the <i>VariantConfiguration</i> which expresses validity rules based on control strings.      </p>      <p> A <i>ApplicationConstraint </i>can reference another <i>ApplicationConstraint</i> as <i>baseInclusion</i>. In this case, a <i>ApplicationConstraint</i> can only be satisfied if its <i>baseInclusion </i>is also satisfied.      </p>  </body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | variants |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Variants]({{< relref "../key-concepts/variants" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|type | [ApplicationConstraintType]({{< relref "applicationconstrainttype.md" >}}) | 1 | <html>   <head>     </head>   <body>     <p> Defines if the application constraint is positive (allowance) or negative (denial). If the <i>ApplicationConstraint </i>has a <i>baseInclusion</i> that <i>baseInclusion</i> shall define the same type.      </p>  </body> </html> | [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) |
|fromDate | [Date]({{< relref "date.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the lower bound of the time period to which the application constraint applies.      </p>  </body> </html> | [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) |
|toDate | [Date]({{< relref "date.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the upper bound of the time period to which the application constraint applies.      </p>  </body> </html> | [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) |
|fromSerialNumber | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the lower bound of a serial number range to which the application constraint applies.      </p>  </body> </html> | [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) |
|toSerialNumber | [String]({{< relref "string.md" >}}) | 0..1 | <html>   <head>     </head>   <body>     <p> Specifies the upper bound of a serial number range to which the application constraint applies.      </p>  </body> </html> | [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) |
|projectPhase | [String]({{< relref "string.md" >}}) | 0..* | <html>   <head>     </head>   <body>     <p> Specifies the project phases to which the application constraint applies.      </p>  </body> </html> | [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Project]({{< relref "project.md" >}}) | project | 0..* |  | <html>   <head>     </head>   <body>     <p> &#160;Defines the projects for which the application constraint applies.      </p>  </body> </html> |
| [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) | baseInclusion | 0..1 | 0..* | <html>   <head>     </head>   <body>     <p> A <i>ApplicationConstraint </i>can only be satisfied if its <i>baseInclusion </i>is satisfied as well.&#160;      </p>  </body> </html> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ConfigurableElement]({{< relref "configurableelement.md" >}}) |  | applicationConstraint | 0..* | <html>   <head>     </head>   <body>     <p> References the application constraints that apply to the ConfigurableElement.      </p>  </body> </html> |
| [ApplicationConstraintSpecification]({{< relref "applicationconstraintspecification.md" >}}) | 1 | applicationConstraint | 1..* | Specifies the UsageConstraints that apply to the PartVersion or PartUsages described by the UsageConstraintSpecification.   |
| [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}) | 0..* | baseInclusion | 0..1 | <html>   <head>     </head>   <body>     <p> A <i>ApplicationConstraint </i>can only be satisfied if its <i>baseInclusion </i>is satisfied as well.&#160;      </p>  </body> </html> |
