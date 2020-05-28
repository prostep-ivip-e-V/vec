---
title: "Supplier Parts and Supplier Part Selection"
linktitle: Supplier Parts
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
tags: []
categories: []
date: 2020-05-26
lastmod: 2020-05-26
draft: false
math: true
diagram: true

classes:
  - Part
  - Alias_identification

menu:
  kbl-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    #parent: Example Topic
    weight: 3000
---
{{% alert warning %}}
**Disclaimer:** This page is currently under review by the community.  

The content of this page can be subject to change at any time. If you find any issues or if you have any review comments please drop us an issue on the [PROSTEP JIRA](https://track.prostep.com/projects/KBLFRM/). 

This page resolves [KBLFRM-801](https://track.prostep.com/browse/KBLFRM-801)
{{% /alert %}}

The {{< kbl-class "part" >}} in the KBL represents an identifier for the PDM information of a component in the context of a specific company. Therefore the {{< kbl-class "part" >}} has the mandatory key attributes *Part_number* and *Company_name*. The most common case in the KBL is, that the {{< kbl-class "part" >}} within a harness, represents an OEM component specification. 

There are cases where this specification can be satisfied by components from different suppliers. The harness manufacturer has a freedom of choice between these components (e.g. for reasons of local availability). However, in the end the choosen alternative shall be documented. This implementation guideline defines how this scenario shall be represented in the KBL.

Basically this scenario is covered by the {{< kbl-class Alias_identification >}} as it represents *"...an additional identifier that is used to identify the object of interest in a different context, either in another Organization, or in some other context."*. Therefore, the following applies:

* {{< kbl-class Alias_identification >}} in the context of a {{< kbl-class "part" >}} shall define the **possible** supplier part numbers.
* {{< kbl-class Alias_identification >}} in the context of a {{< kbl-class "connection_or_occurrence" >}} shall define the **selected** supplier part number.

The following attribute mapping shall be used:

| Attribute | Value - Definition |
|-----------|--------------------|
| Alias_id | The part number of the component in the "other" context (the supplier part number). |
| Scope | Defines the scope where the part number is defined (the company name of the supplier). |
| Description | The type of the alias id. Despite the misleading naming of the attribute, this is not a human readable description, but the actual type / role of the alias id. For the scenario defined by this implementation guideline, the following values shall be used: <ul><li>**supplier number** for possible supplier part numbers in the context of the part.</li><li>**selected supplier number** for selected supplier part numbers in the context of an occurrence.</li></ul>|



