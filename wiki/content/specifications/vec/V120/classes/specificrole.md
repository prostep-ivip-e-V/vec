---
title: SpecificRole
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A SpecificRole is the possibility to define instance specific properties with custom properties (see ExtendableElement). This is necessary, if the part is described by custom properties of a PartOrUsageRelatedSpecification.      </p>    </body> </html> 
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Instances of undefined Components]({{< relref "../instances-of-components/instances-of-undefined-components" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies a unique identification of the Role. The identification is guaranteed to be unqiue within the OccurrenceOrUsage. </p></body></html> | [Role]({{< relref "role.md" >}}) |
|specificRoleType | [String]({{< relref "string.md" >}}) | 1 | <html><body><p>Specifies the type for role.  </p></body></html> | [SpecificRole]({{< relref "specificrole.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) | specification | 1 | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>PartOrUsageRelatedSpecification </i>that is instantiated by this <i>SpecificRole.</i>      </p>    </body> </html>  |
