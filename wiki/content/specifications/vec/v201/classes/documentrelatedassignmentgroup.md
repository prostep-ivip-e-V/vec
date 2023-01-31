---
title: DocumentRelatedAssignmentGroup
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - DocumentRelatedAssignmentGroup
menu_name: vec-2.0.1
---
<p> A DocumentRelatedAssignmentGroup allows the creation of traceability links to elements in a <i>DocumentVersion</i> for a set of VEC&#160;objects. The semantic of the traceability link is defined by the <i>DocumentRelationType.</i>      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | assignment_groups |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [AssignmentGroup]({{< relref "assignmentgroup.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the AssignmentGroup. The identification is guaranteed to be unique within the specification.      </p> | [AssignmentGroup]({{< relref "assignmentgroup.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the <i>AssignmentGroup</i>.      </p> | [AssignmentGroup]({{< relref "assignmentgroup.md" >}}) |
|type| [DocumentRelationType]({{< relref "documentrelationtype.md" >}}) | 0..1 |  | [DocumentRelatedAssignmentGroup]({{< relref "documentrelatedassignmentgroup.md" >}}) |
|relatedIdentification| [String]({{< relref "string.md" >}}) | 0..1 | <p> If this group relates to a specific element in the <i>relatedDocumentVersion</i> the identifier of the element is defined in this attribute (e.g. a requirements number).      </p> | [DocumentRelatedAssignmentGroup]({{< relref "documentrelatedassignmentgroup.md" >}}) |

## Outgoing Relations
<table>
    <thead>
        <tr>
           <th colspan="6">Other End</th>
           <th colspan="1">This End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Agg.</th>
           <th>Unique</th>
           <th>Ordered</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>relatedDocumentVersion</td>
        <td><a href="{{< relref "documentversion.md" >}}">DocumentVersion</a></td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>DocumentVersion</i> to which this group relates.      </p></td>
    </tr>
    <tr>
        <td>relatedSheetOrChapter</td>
        <td><a href="{{< relref "sheetorchapter.md" >}}">SheetOrChapter</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> Allows a more specific relationship to a <i>SheetOrChapter</i> within the <i>relatedDocumentVersion.</i>      </p>      <p> <i>&#160;</i>      </p></td>
    </tr>
    </tbody>
</table>




