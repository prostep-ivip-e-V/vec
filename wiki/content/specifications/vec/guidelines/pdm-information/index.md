---
title: "PDM Information"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
tags: ["PDM"]
categories: []
date: 2019-03-07
lastmod: 2019-11-29T10:09:12+01:00
draft: false

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    weight: 3000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 3000
---
## Document Meta-information

{{< figure src="document_meta-information.jpg" title="Document Meta Information" numbered="true" lightbox="true">}}

All information actually defined in a VEC file is contained in a {{< vec-class DocumentVersion >}}. Additionally this DocumentVersion carries all the meta-information about the underlying document (e.g. for a system schematic), This information is normally shown in drawings as a title block.

The {{< vec-class DocumentVersion >}} contains the information about the unique naming, a multilingual description, the DocumentNumber and so on. It has subelements to define the change history ({{< vec-class ChangeDescription >}}), the creation and the different approvals.

### Information from the Title Block in VEC - according to ISO 7200

The title block in drawings contains information which identifies the shown construction and documents the authorship and the responsibility. In addition to that,  further information can be shown in this title block e.g. for used IT systems. General requirements for data fields in the title block are regulated in the standard ISO 7200. Due to the fact that the VEC supports the modelling of drawing contents, these requirements can also be stored in the VEC.

The ISO requirements are shown in the tables below and in the last column the mapping to the VEC model can be found.

#### Identifying data fields in the title block

Field name (from ISO 7200)  | Obligation | Description | Mapping to VEC
------------- | ------------ | ------------ | ------------
|Legal owner | M | The name of the legal owner of the document, e.g. firm, company, enterprise. It could be the official owner’s name, an abridged trade name or a logotype for the presentation. | DocumentVersion.CompanyName |
|Identification number | M | The document identification number is used as the reference to the document. The identification number shall be unique — at least within the organization of the legal owner. | DocumentVersion.DocumentNumber |
|Revision index	| O | The revision index identifies the revision status of the document. Different versions are numbered in consecutive order by means of, e.g. a letter or letter combination A to Z, then AA, AB, AC ... or Figures 1, 2,3 ... The letters I and O should be avoided because they are easily confused with the digits 1 and 0. Alternatively, the date of issue field only may be used. | DocumentVersion.DocumentVersion |
|Date of issue | M | The date of issue is the date on which the document is officially released for the first time, and that of every subsequent released version. It is when the document is made available for its intended use. The date of issue is important for legal reasons, e.g. patent rights, traceability. | DocumentVersion.Creation.CreationDate |
|Segment/sheet number | M | The segment/sheet number identifies the segment or sheet. | DocumentVersion.SheetOrChapter.SheetNumber |
|Number of segments/sheets | O | This is the total number of segments or sheets of which the document consists. | DocumentVersion.NumberOfSheets |
|Language code |O |The language code is used to indicate the language in which the language-dependent parts of the document are presented. | Not needed – each field value will be represented by a ‘LocalizedString’ or ‘LocalizedTypedString’ |


#### Descriptive data fields in the title block 

Field name (from ISO 7200)  | Obligation | Description | Mapping to VEC
------------- | ------------ | ------------ | ------------
Title | M | The title refers to the content of the document. | LocalizedTypedString with the type ‚Title‘ in DocumentVersion.Description (see below) 
Supplementary title | O | The supplementary title field may be used to give further information on the object, when needed | LocalizedTypedString with the type ‚SupplementaryTitle ‘ in DocumentVersion.Description (see below)


All Attributes in the VEC with the type {{<vec-class AbstractLocalizedString>}} can be realized either with an instance from the class {{<vec-class LocalizedString>}} or {{<vec-class LocalizedTypedString>}}. While the LocalizedString must be used just once for each attribute and language code the LocalizedTypedString must be used once for each attribute and language code AND each type. The OpenEnumertation {{<vec-class LocalizedTypedStringType>}} enables the possibility to place e.g. the title and the supplementary title for e.g. 'En' in the description mapping.

{{< figure src="typed_string_type.png" title="LocalizedTypedStringType" numbered="true" lightbox="true" >}}

{{< highlight xml "linenos=table, linenostart=1" >}}
<Description xsi:type="vec:LocalizedTypedString" id="id_1">
   <LanguageCode>En</LanguageCode>
   <Type>Title</Type>
   <Value>Main Title goes here</Value>
</Description>
<Description xsi:type="vec:LocalizedTypedString" id="id_2">
   <LanguageCode>En</LanguageCode>
   <Type>Sublementary Title</Type>
   <Value>This is for the Sublementary Title</Value>
</Description>
{{< / highlight >}}

#### Administrative data fields in the title block 

Field name (from ISO 7200)  | Obligation | Description | Mapping to VEC
------------- | ------------ | ------------ | ------------
| Responsible department | O | The name or code for the organizational unit responsible for the contents and maintenance of the document at the date of release. | DocumentVersion.Creation --> ResponsibleDesigner.Department |
| Technical reference | O | The name of the person having sufficient knowledge of the technical contents of the document to be named as the contact person and who will answer, coordinate and act on queries. | DocumentVersion.Creation --> ResponsibleDesigner.Lastname |
| Approval person | M | The name of the person who approved the document. The document might have been checked by a number of different specialists in accordance with the local rules for that type of document, specific project etc. The names of such specialists may be indicated in the title block or in a separate document part. | DocumentVersion.Approval --> Permission.Permitter.LastName \\ \\ If a different number of different specialists have checked the document, an instance of Approval each can be used and the attribute levelOfApproval names the effective scope |
| Creator | M | The creator or person who has prepared or revised the document. | DocumentVersion.Creation.Creator.LastName |
| Document type | M | The document type field indicates the role of the document with respect to its content of information and representation format. | DocumentVersion.DocumentType |
| Classification/key words | O | The text or code to categorize the contents of the document used for retrieval. 
| Document status | O | The document status indicates where the document is in its life cycle. The status is indicated by means of terms such as “In preparation”, “Under approval”, “Released” and “Withdrawn”. | DocumentVersion.Approval.Status |
| Page number | O | The page number is usually generated by the presentation system. | DocumentVersion.SheetOrChapter.SheetNumber |
| Number of pages | O | The number of pages is dependent on the presentation format used, e.g. text font, paper size and character size. | DocumentVersion.NumberOfSheets |
| Paper size | O | The size of the form for the original document, e.g. A4. | DocumentVersion.SheetOrChapter.SheetFormat


## Item History 

{{< figure src="item_history.jpg" title="Item History" numbered="true" lightbox="true">}}

This example demonstrates how chronological relationships between {{< vec-class PartVersion >}} can be established. The VEC offers two types of relationships:

  1. **Derivation:** Derivation means that the successor of the relationship is a newly developed part (variant) based on an existing part.
  2. **Sequence:** Sequence means that the successor is a replacement for the predecessor.