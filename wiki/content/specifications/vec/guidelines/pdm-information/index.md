---
title: "Pdm Information"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: [becker]
tags: ["PDM"]
categories: []
date: 2019-11-06
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

## Item History 

{{< figure src="item_history.jpg" title="Item History" numbered="true" lightbox="true">}}

This example demonstrates how chronological relationships between {{< vec-class PartVersion >}} can be established. The VEC offers two types of relationships:

  1. **Derivation:** Derivation means that the successor of the relationship is a newly developed part (variant) based on an existing part.
  2. **Sequence:** Sequence means that the successor is a replacement for the predecessor.