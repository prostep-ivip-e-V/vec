---
title: ModuleList
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - ModuleList
menu_name: vec-1.1.2
---
<p> A ModuleList is a mechanism to control additional / completition PartOccurrences. This means for a car configuration, if at least one of the modules in the list participates in the configuration, the &quot;completitionComponent&quot; participates, too.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | modules |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the ModuleList. The identification is guaranteed to be unique within the ModuleListSpecification. Over all VEC-documents a ModuleList-instance can be trusted to be the same if the ModuleListSpecification-instance is the same and the identification of the ModuleList is the same.      </p> | [ModuleList]({{< relref "modulelist.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p>Room for additional, human readable information about the ModuleList. </p> | [ModuleList]({{< relref "modulelist.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PartOccurrence]({{< relref "partoccurrence.md" >}}) | completionComponents | 1..* | 0..* | References the components that are used as completition, if any of the Modules in the ModuleList appears in a configuration. |
| [PartWithSubComponentsRole]({{< relref "partwithsubcomponentsrole.md" >}}) | moduleInList | 1..* | 0..* | References the Modules that belong to the ModuleList. If any of the referenced Modules participates in a configuration the completition components participate, too. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ModuleListSpecification]({{< relref "modulelistspecification.md" >}}) | 1 | moduleListConfiguration | 1..* | Specifies the ModuleLists defined in the ModuleListSpecification. |
