---
title: "Specification of Splices"
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
tags: ["Review"]
categories: []
date: 2021-05-19
lastmod: 2021-05-19
draft: false
math: true
diagram: true
review: true

classes:
  - Connector_occurrence
  - Connector_housing
  - Installation_instruction
history:
  - date: 2021-05-19
    description: "Added guideline for the distinction of parallel and end splices."
    issue: "KBLFRM-1026"

menu:
  kbl-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    #parent: Example Topic
    weight: 6000
---
{{< review "KBLFRM-1026" >}}

For historical reasons, the representation of splices in the KBL is quite implicit. A splice is represented as a regular {{< kbl-class "Connector_housing" >}} respectively a {{< kbl-class "Connector_occurrence" >}}. It can be identified with the _Connector_occurrence.Usage_ and/or _Connector_housing.Housing_type_ (see {{< issue KBLFRM-1025 >}}). Due to these generic approach the splice is currently missing some splice specific information on the occurrence level in the KBL model:

* **Type:** Defines if the splice is a parallel splice or an end splice. An end splice is a splice where all wires are inserted from the same side of the splice, a parallel splice has wires from both sides.
* **Seal State:** Defines if the splice should be sealed or not.

To overcome this limitation the following {{< kbl-class Installation_instruction >}}s shall be used on the {{< kbl-class Connector_occurrence >}}


| Instruction_type | Definition | Instruction_value (one of) |
| ---------------- | ---------- | ----------------- |
| _splice_type_ | Defines whether there are requirements for the implementation of the splice, and if so, what they are.  | _[end_splice, inline_splice, unspec_splice]_          |
| _seal_state_ | Defines requirements for the implementation of the sealing of the splice | _[sealed, unsealed]_ |
