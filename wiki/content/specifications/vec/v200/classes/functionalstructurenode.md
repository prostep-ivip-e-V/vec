---
title: FunctionalStructureNode
toc: false
type: specs
date: "2021-11-30"
draft: false
specification: VEC
version: 2.0.0-rc1
documentType: "Recommendation"
elementType: Class
classes:
  - FunctionalStructureNode
menu_name: vec-2.0.0-rc1
---
<p> <i>FunctionalStructureNodes</i> can be used to define a hierarchical structure on <i>FunctionalAssignmentGroups</i>. Every <i>FunctionalStructureNode</i> can reference <i>FunctionalAssignmentGroups</i> and <i>FunctionalStructureNodes</i> as children.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | assignment_groups |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the <i>FunctionalStructureNode.</i>      </p> | [FunctionalStructureNode]({{< relref "functionalstructurenode.md" >}}) |
|aliasId | [AliasIdentification]({{< relref "aliasidentification.md" >}}) | 0..* | <p> Room to specify additional identifiers for the <i>FunctionalStructureNode</i>.      </p> | [FunctionalStructureNode]({{< relref "functionalstructurenode.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> On optional human readable description of the <i>FunctionalStructureNode</i>.      </p> | [FunctionalStructureNode]({{< relref "functionalstructurenode.md" >}}) |
|abbreviation | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..1 | <p> Room for a human readable short name, title etc. of the <i>FunctionalStructureNode</i>.      </p> | [FunctionalStructureNode]({{< relref "functionalstructurenode.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [FunctionalStructureNode]({{< relref "functionalstructurenode.md" >}}) | childNodes | 0..* | 0..1 |  |
| [FunctionalAssignmentGroup]({{< relref "functionalassignmentgroup.md" >}}) | containedGroups | 0..* | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [FunctionalStructureNode]({{< relref "functionalstructurenode.md" >}}) | 0..1 | childNodes | 0..* |  |
| [FunctionalStructureSpecification]({{< relref "functionalstructurespecification.md" >}}) | 0..1 | rootNode | 1 |  |
