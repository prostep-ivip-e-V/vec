---
title: PartWithSubComponentsRole
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html><body><p>A PartWithSubComponentsRole defines the instance specific properties and relationships of a part with subcomponents. A PartWithSubComponents is a composite part like an Assembly, a Module, Harness.  </p></body></html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Assemblies, Modules and Harness (Configurations)]({{< relref "../composite-part-descriptions/assemblies-modules-and-harness-configurations" >}})<br/> [Harness and Variants]({{< relref "../composite-part-descriptions/harness-and-variants" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <html><body><p>Specifies a unique identification of the Role. The identification is guaranteed to be unqiue within the OccurrenceOrUsage. </p></body></html> | [Role]({{< relref "role.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartStructureSpecification]({{< relref "partstructurespecification.md" >}}) | partStructureSpecification | 1 | 0..* | <html>   <head>     </head>   <body>     <p> References the <i>PartStructureSpecification </i>that is instantiated by this <i>PartWithSubComponentsRole</i>.      </p>    </body> </html>  |
| [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) | subComponent | 0..* | 0..* | <html>   <head>     </head>   <body>     <p> References the subcomponents that belong to this instance of a PartWithSubComponents.      </p>    </body> </html>  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ModuleFamily]({{< relref "modulefamily.md" >}}) | 0..* | moduleInFamily | 1..* | References the Modules that belong to the ModuleFamily.   |
| [ModuleList]({{< relref "modulelist.md" >}}) | 0..* | moduleInList | 1..* | References the Modules that belong to the ModuleList. If any of the referenced Modules participates in a configuration the completition components participate, too.  |
