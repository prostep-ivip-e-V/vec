---
title: VEC Implementation Guidelines
linktitle: Overview
toc: false
type: specs
date: "2024-01-08"
draft: false
outputs:
  - html
  - rss
  - printable
printable: true
math: true
specs:
  toc: true
  history: true
  reviewIndex: true

cascade:
  specification: VEC
  documentType: Guideline
menu:
  vec-guidelines:
    identifier: index
    weight: 1
links:
  - icon_pack: far
    icon: folder-open
    name: VEC Implementation Guidelines
  - icon_pack: fas
    icon: file-pdf
    name: VEC Implementation Guidelines (PDF-Version)
    url: https://ecad-wiki.prostep.org/specifications/vec/guidelines/vec-guidelines.pdf
  - icon_pack: fas
    icon: clipboard-check
    name: VEC Compliance Test Suite    
    url: "compliance-tests"

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1
---

The VDA recommendation 4968 / prostep ivip recommendation PSI21 “Vehicle Electric Container (VEC)” defines an information model, a data dictionary, a XML schema and a RDF onthology derived from and compliant to the model.The intention of the model was to cover a wide range of use cases and application scenarios. For this reason the specification had to be kept generic in some degree and in some aspects. However, for specific scenarios and / or use cases a more detailed description on "how the different pieces fit together" is possible.

<!--more-->

To avoid dialects in the different VEC implementations, further guidelines or recommendations are necessary. This collection of implementation guidelines contributes to the unambiguous interpretation of the VEC standard. For various wiring harness definition or electrical system aspects and scenarios the correct instantiation is shown and specific hints for correct usage are given.

## Contributing and Proposals

If you find any bugs in the implementation guidelines or if you have a request for a specific topic, or if you would like to contribute your own tutorials please drop us an issue on the [PROSTEP JIRA](https://prostep-ivip.atlassian.net/projects/KBLFRM/). If you don't have an account there yet, [see here]({{< relref "post/how-to-contribute" >}}) for the procedure to get one.
