---
title: DocumentClassification
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - DocumentClassification
menu_name: vec-2.1.0
---
A <i>DocumentClassification</i> is used to categorize and classify a document in the context of a document management system. It helps to maintain consistency and compliance by ensuring that documents are appropriately handled according to their classification. Classifications can be used for example to define retention periods or disposal dates. A classification is defined by a <i>Key</i> in a corresponding <i>ReferenceSystem</i>.

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|key| [String]({{< relref "string.md" >}}) | 1 | <p> The <i>Key</i> of the <i>DocumentClassification</i> in the corresponding classification reference system.      </p> | [DocumentClassification]({{< relref "documentclassification.md" >}}) |
|referenceSystem| [String]({{< relref "string.md" >}}) | 1 | <p> The identification of the classification reference system, which is defining possible values and the semantic of <i>DocumentClassification</i> keys.      </p> | [DocumentClassification]({{< relref "documentclassification.md" >}}) |
|description| [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> On optional human readable description of the classification (e.g. the name or clear text, for example &quot;max. 99 Years&quot;).      </p> | [DocumentClassification]({{< relref "documentclassification.md" >}}) |





