---
title: VecContent
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - VecContent
menu_name: vec-1.2.0
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
|vecVersion | [VecVersion]({{< relref "vecversion.md" >}}) | 1 | <p> Specifies the version of the VEC used for the file.      </p> | [VecContent]({{< relref "veccontent.md" >}}) |
|generatingSystemName | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the name of the system that has generated the VEC-file.  </p> | [VecContent]({{< relref "veccontent.md" >}}) |
|dateOfCreation | [Date]({{< relref "date.md" >}}) | 0..1 | <p>Specifies the date of creation of the VEC-file.  </p> | [VecContent]({{< relref "veccontent.md" >}}) |
|generatingSystemVersion | [String]({{< relref "string.md" >}}) | 0..1 | <p>Specifies the version of the system that has generated the VEC-file. </p> | [VecContent]({{< relref "veccontent.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CopyrightInformation]({{< relref "copyrightinformation.md" >}}) | standardCopyrightInformation | 0..1 | 0..* | <p> References the <i>CopyrightInformation</i> that is in effect for the complete content of this <i>VecContent</i>. It is applied to all <i>ItemVersions</i> that do not references their own individual <i>CopyrightInformation.</i>      </p> |
| [CopyrightInformation]({{< relref "copyrightinformation.md" >}}) | copyrightInformation | 0..* | 1 | Specifies the CopyrightInformation used in the VEC-file. |
| [Project]({{< relref "project.md" >}}) | project | 0..* | 1 | Specifies the Projects used in the VEC-file. |
| [Contract]({{< relref "contract.md" >}}) | contract | 0..* | 1 | Specifies the contracts used in the VEC-file. |
| [PartVersion]({{< relref "partversion.md" >}}) | partVersion | 0..* | 1 | Specifies the PartVersions contained in the VEC-file. |
| [ItemHistoryEntry]({{< relref "itemhistoryentry.md" >}}) | itemHistoryEntry | 0..* | 1 | Specifies the ItemVersionHistoryEntries for ItemVersions contained in the VEC-file. |
| [Unit]({{< relref "unit.md" >}}) | unit | 0..* | 1 | Specifies the Units used in the VEC-file. |
| [DocumentVersion]({{< relref "documentversion.md" >}}) | documentVersion | 0..* | 1 | Specifies the DocumentVersions contained in the VEC-file. |
