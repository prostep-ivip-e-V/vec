---
title: Type Inheritance
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
menu: {vec-guidelines: {parent: general, weight: 300}}
weight: 5300
---
The VEC uses an object-oriented class and inheritance concept. The following
clarifications apply to its use:

- Only non-abstract classes can be instantiated.
- In an inheritance hierarchy, the choice of the used type represents a semantic
information itself. For example, the usage of a {{< vec-class PluggableTerminalSpecification >}} 
is a more specific information than the usage of a {{< vec-class TerminalSpecification >}}. It is
not required to use the more specific class if the information is not available or
it should not be transmitted. However, it is not permitted to use the more general
class and transfer the information of the more specific class in a custom
property, or similar (e.g. use the {{< vec-class TerminalSpecification >}} with a {{< vec-class CustomProperty >}} `type=pluggable`).