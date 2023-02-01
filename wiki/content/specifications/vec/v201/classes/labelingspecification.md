---
title: LabelingSpecification
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - LabelingSpecification
menu_name: vec-2.0.1
---
A component (of any type) can labeled in many ways either during the manufacturing process, for example a label that is imprinted on the component during the general manufacturing process&#160;(e.g. the part number), or in its concrete use (e.g. with wire number or a usage node id). The <i>LabelingSpecification</i> defines general labeling properties of the component. Labeling properties in its concrete use are defined with the correspoding role.

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType| [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|labelType| [LabelType]({{< relref "labeltype.md" >}}) | 0..1 | <p> Specifies the type of a label printed, stamped or integrated on or in component (e.g. alpha numerical, bar code).      </p> | [LabelingSpecification]({{< relref "labelingspecification.md" >}}) |
|labelValue| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies the value of a label printed on the component. This value applies to all components that satisfy this specification, so all instances share the same label value (e.g. a part number).      </p>      <p> If instances of a component require individual labeling it has to be defined on the LabelingRole.      </p> | [LabelingSpecification]({{< relref "labelingspecification.md" >}}) |
|labelingTechnology| [LabelingTechnology]({{< relref "labelingtechnology.md" >}}) | 0..1 | Specifies the used labeling technology if the label is already defined in this specification. | [LabelingSpecification]({{< relref "labelingspecification.md" >}}) |
|allowedLabelingTechnology| [LabelingTechnology]({{< relref "labelingtechnology.md" >}}) | 0..* | Specifies the allowed labeling technologies if the component is not yet labeled, but support labeling in its usage. | [LabelingSpecification]({{< relref "labelingspecification.md" >}}) |


##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>labelingSpecification</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "labelingrole.md" >}}">LabelingRole</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    </tbody>
</table>



