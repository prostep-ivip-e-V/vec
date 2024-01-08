---
title: SheetOrChapter
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - SheetOrChapter
menu_name: vec-2.1.0
---
<p> Documents can be structured into sheets or chapters. Since it is possible, that one document describes a couple of parts it is necessary to be able to specify which sheet or chapter contains the description of which part. (see KBLFRM-308)      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p>The identification of the sheet or chapter within the document. This value must be distinct within the context of a document.  </p> | [SheetOrChapter]({{< relref "sheetorchapter.md" >}}) |
|sheetNumber| [String]({{< relref "string.md" >}}) | 0..1 | <p> The sheetNumber is the major identifier of a SheetOrChapter. The format is user defined and respectively company specific. This field has to be used if a SheetOrChapter has its own &quot;DocumentNumber&quot;.      </p> | [SheetOrChapter]({{< relref "sheetorchapter.md" >}}) |
|sheetVersion| [String]({{< relref "string.md" >}}) | 0..1 | <p> The sheetVersion specifies the version index of a sheet (see also sheetNumber)      </p> | [SheetOrChapter]({{< relref "sheetorchapter.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Room for additional, human readable information about the SheetOrChapter.      </p> | [SheetOrChapter]({{< relref "sheetorchapter.md" >}}) |
|sheetFormat| [String]({{< relref "string.md" >}}) | 0..1 | <p> Defines the format&#160;of the SheetOrChapter. This is an alias for a specific sheet /&#160;paper size (e.g. DINA4). If both attributes are defined the <i>SheetSize</i> takes precedence.      </p> | [SheetOrChapter]({{< relref "sheetorchapter.md" >}}) |
|sheetSize| [Size]({{< relref "size.md" >}}) | 0..1 | Defines the size of the sheet with numerical values. This is the size of the &quot;paper&quot;, the actual drawing area might be smaller for example due to drawing frames. | [SheetOrChapter]({{< relref "sheetorchapter.md" >}}) |

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
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>specification</td>
        <td><a href="{{< relref "specification.md" >}}">Specification</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>Specifies the Specifications contained in the SheetOrChapter. All structured, technical information in the VEC is described by such Specifications.</td>
    </tr>
    <tr>
        <td>changeDescription</td>
        <td><a href="{{< relref "changedescription.md" >}}">ChangeDescription</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>0..1</td>
        <td>Specifies the change history of the SheetOrChapter.</td>
    </tr>
    <tr>
        <td>referencedPart</td>
        <td><a href="{{< relref "partversion.md" >}}">PartVersion</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>The association is an informative link which PartVersions are described by the SheetOrChapter.</td>
    </tr>
    </tbody>
</table>

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
        <td>referencedSheetOrChapter</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "documentbasedinstruction.md" >}}">DocumentBasedInstruction</a></td>
        <td>0..*</td>
        <td>References the SheetOrChapter that is used as an Instruction.</td>
    </tr>
    <tr>
        <td>relatedSheetOrChapter</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "documentrelatedassignmentgroup.md" >}}">DocumentRelatedAssignmentGroup</a></td>
        <td>0..*</td>
        <td><p> Allows a more specific relationship to a <i>SheetOrChapter</i> within the <i>relatedDocumentVersion.</i>      </p>      <p> <i>&#160;</i>      </p></td>
    </tr>
    <tr>
        <td>sheetOrChapter</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "documentversion.md" >}}">DocumentVersion</a></td>
        <td>1</td>
        <td>Specifies SheetOrChapters defined in this DocumentVersion. These are especially useful if the DocumentVersion represents an external reference.</td>
    </tr>
    </tbody>
</table>



