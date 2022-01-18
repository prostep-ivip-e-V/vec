---
title: PartWithSubComponentsRole
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - PartWithSubComponentsRole
menu_name: vec-1.2.2
---
<p>A PartWithSubComponentsRole defines the instance specific properties and relationships of a part with subcomponents. A PartWithSubComponents is a composite part like an Assembly, a Module, Harness.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [OccurrenceOrUsage]({{< relref "occurrenceorusage.md" >}}) | subComponent | 0..* | 0..* | <p> References the subcomponents that belong to this instance of a PartWithSubComponents.      </p> |
| [PartStructureSpecification]({{< relref "partstructurespecification.md" >}}) | partStructureSpecification | 1 | 0..* | <p> References the <i>PartStructureSpecification </i>that is instantiated by this <i>PartWithSubComponentsRole</i>.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ModuleFamily]({{< relref "modulefamily.md" >}}) | 0..* | moduleInFamily | 1..* | References the Modules that belong to the ModuleFamily. |
| [ModuleList]({{< relref "modulelist.md" >}}) | 0..* | moduleInList | 1..* | References the Modules that belong to the ModuleList. If any of the referenced Modules participates in a configuration the completion components participate, too. |
