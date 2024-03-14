---
title: "General Guidelines"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
authors: ["becker"]
categories: []
date: 2024-03-14
draft: false
review: true

history:
  - date: 2024-03-14
    description: "Extracted information from PSI recommendation and extended it where necesseray."
    issue: "KBLFRM-1191"

menu:
  vec-guidelines:
    identifier: general
    weight: 500

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 500
---
{{% callout note %}}
Until V1.2 this section was part of the [PSI21 - prostep ivip Recommendation - VEC](https://www.prostep.org/shop/detail?ai%5Baction%5D=detail&ai%5Bcontroller%5D=Catalog&ai%5Bd_name%5D=psi_21&ai%5Bd_pos%5D=). 
This section contains important guidelines for handling VEC data and was previously only available in the actual recommendation document, in contrast to the model specification, which can also be viewed online here. In order to achieve better availability of the information and to avoid it being overlooked if only the online documentation is consulted, it was decided to move this chapter to the Implementation Guideline. This approach also makes it easier and quicker to expand and supplement the content if necessary.
{{% /callout %}}

This section contains guidlines and explanations for general concepts that apply universally to the VEC and which are not limited to specific model elements or use cases. Therefore they not contained in the model specification, or in more specific implementation guidelines. These guidelines shall be followed for all VEC implementations.