---
title: SealedCavitiesAssignment
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - SealedCavitiesAssignment
menu_name: vec-1.2.0
---
<p> A <i>SealedCavitiesAssignment</i> groups the cavities of ONE connector that are sealed by a MultiCavityPlug. If a MultiCavityPlug fits into more than one connector, than there are as many <i>SealedCavitiesAssignments</i>.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Cavity]({{< relref "cavity.md" >}}) | sealedCavities | 1..* | 0..* | <p> Specifies the Cavities that are sealed.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [MultiCavityPlugSpecification]({{< relref "multicavityplugspecification.md" >}}) | 1 | assignment | 0..* | <p> References the <i>SealedCavitiesAssignments</i> that are valid for this <i>MultiCavityPlug</i>. One individual <i>SealedCavitiesAssignment </i>is used for each connector housing that matches witch this <i>MultiCavityPlug.</i>      </p> |
