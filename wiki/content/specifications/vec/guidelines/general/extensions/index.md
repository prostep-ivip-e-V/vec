---
title: Extension Mechanisms 
type: specs
toc: true
authors: [becker]
tags: []
categories: []
date: 2024-03-14T00:00:00.000Z
lastmod: 2024-03-14T00:00:00.000Z
draft: false
review: true
history: [{date: 2024-03-14T00:00:00.000Z, description: Extracted information from PSI recommendation and extended it where necesseray., issue: KBLFRM-1191}]
classes: null
menu: {vec-guidelines: {parent: general, weight: 200}}
weight: 5200
---
If the well-defined data structures and fields are not sufficient for the specific needs of a process or a tool, the VEC provides powerful extension mechanisms. Namely the extension mechanisms are custom properties and open enumerations (see the corresponding chapters in the model description).

However, it should be considered that information transported via these mechanisms is not standardized and is always subject to an individual agreement between interface partners. Therefore, these mechanisms shall be used with extreme caution.

It is strictly forbidden to use these mechanisms for the transfer of information that is already standardized within the VEC. In particular it is not permitted:

- To store information in custom properties where already well-defined concepts
exist in the VEC to store the same information, e.g. using a custom property
instead of an attribute or a more specific class in inheritance tree.
- To use self-defined OpenEnumeration-literals when well-defined literals with the
same semantics already exist.

VEC-Files that do not obey to these rules are noncompliant to this data format specification.

If the extension mechanisms are used, it shall always be considered if these extensions might be a valid feature request for the VEC Standard.