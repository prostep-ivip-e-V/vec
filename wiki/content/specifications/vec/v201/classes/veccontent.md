---
title: VecContent
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - VecContent
menu_name: vec-2.0.1
---
<p> The VecContent is the XML-Root node for any VEC-Document.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  | [xml-root]({{< relref "xml-root.md" >}})<br/>  |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|vecVersion| [VecVersion]({{< relref "vecversion.md" >}}) | 1 | <p> Specifies the version of the VEC used for the file.      </p> | [VecContent]({{< relref "veccontent.md" >}}) |
|generatingSystemName| [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the name of the system that has generated the VEC-file.  </p> | [VecContent]({{< relref "veccontent.md" >}}) |
|dateOfCreation| [Date]({{< relref "date.md" >}}) | 0..1 | <p>Specifies the date of creation of the VEC-file.  </p> | [VecContent]({{< relref "veccontent.md" >}}) |
|generatingSystemVersion| [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the version of the system that has generated the VEC-file. </p> | [VecContent]({{< relref "veccontent.md" >}}) |

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
        <td>copyrightInformation</td>
        <td><a href="{{< relref "copyrightinformation.md" >}}">CopyrightInformation</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the CopyrightInformation used in the VEC-file.</td>
    </tr>
    <tr>
        <td>standardCopyrightInformation</td>
        <td><a href="{{< relref "copyrightinformation.md" >}}">CopyrightInformation</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> References the <i>CopyrightInformation</i> that is in effect for the complete content of this <i>VecContent</i>. It is applied to all <i>ItemVersions</i> that do not references their own individual <i>CopyrightInformation.</i>      </p></td>
    </tr>
    <tr>
        <td>itemHistoryEntry</td>
        <td><a href="{{< relref "itemhistoryentry.md" >}}">ItemHistoryEntry</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the ItemVersionHistoryEntries for ItemVersions contained in the VEC-file.</td>
    </tr>
    <tr>
        <td>project</td>
        <td><a href="{{< relref "project.md" >}}">Project</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the Projects used in the VEC-file.</td>
    </tr>
    <tr>
        <td>contract</td>
        <td><a href="{{< relref "contract.md" >}}">Contract</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the contracts used in the VEC-file.</td>
    </tr>
    <tr>
        <td>unit</td>
        <td><a href="{{< relref "unit.md" >}}">Unit</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the Units used in the VEC-file.</td>
    </tr>
    <tr>
        <td>documentVersion</td>
        <td><a href="{{< relref "documentversion.md" >}}">DocumentVersion</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the DocumentVersions contained in the VEC-file.</td>
    </tr>
    <tr>
        <td>partVersion</td>
        <td><a href="{{< relref "partversion.md" >}}">PartVersion</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the PartVersions contained in the VEC-file.</td>
    </tr>
    </tbody>
</table>




