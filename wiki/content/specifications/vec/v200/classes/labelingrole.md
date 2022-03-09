---
title: LabelingRole
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - LabelingRole
menu_name: vec-2.0.0
---
If a component is labeled in its concrete usage, label informations are defined with the <i>LabelingRole.</i>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |
|labelType | [LabelType]({{< relref "labeltype.md" >}}) | 0..1 | <p> Specifies the type of a label printed, stamped or integrated on or in component (e.g. alpha numerical, bar code).      </p> | [LabelingRole]({{< relref "labelingrole.md" >}}) |
|labelValue | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the value of a label printed on the component.       </p> | [LabelingRole]({{< relref "labelingrole.md" >}}) |
|labelingTechnology | [LabelingTechnology]({{< relref "labelingtechnology.md" >}}) | 0..1 | Specifies the used labeling technology. | [LabelingRole]({{< relref "labelingrole.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [LabelingSpecification]({{< relref "labelingspecification.md" >}}) | labelingSpecification | 1 | 0..* |  |
