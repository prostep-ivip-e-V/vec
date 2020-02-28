---
title: VecContent
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - VecContent
menu_name: vec-1.1.2
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
| [ConformanceClass]({{< relref "conformanceclass.md" >}}) | compliantConformanceClass | 0..* | 1 | Specifies references to the conformance classes that apply to the VEC-file. |
| [PartVersion]({{< relref "partversion.md" >}}) | partVersion | 0..* | 1 | Specifies the PartVersions contained in the VEC-file. |
| [ItemHistoryEntry]({{< relref "itemhistoryentry.md" >}}) | itemHistoryEntry | 0..* | 1 | Specifies the ItemVersionHistoryEntries for ItemVersions contained in the VEC-file. |
| [DocumentVersion]({{< relref "documentversion.md" >}}) | documentVersion | 0..* | 1 | Specifies the DocumentVersions contained in the VEC-file. |
| [CopyrightInformation]({{< relref "copyrightinformation.md" >}}) | copyrightInformation | 0..* | 1 | Specifies the CopyrightInformation used in the VEC-file. |
| [Project]({{< relref "project.md" >}}) | project | 0..* | 1 | Specifies the Projects used in the VEC-file. |
| [Contract]({{< relref "contract.md" >}}) | contract | 0..* | 1 | Specifies the contracts used in the VEC-file. |
| [Unit]({{< relref "unit.md" >}}) | unit | 0..* | 1 | Specifies the Units used in the VEC-file. |
