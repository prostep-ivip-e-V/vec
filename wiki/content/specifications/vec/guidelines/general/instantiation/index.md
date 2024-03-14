---
title: Instantiation of Model Structures
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
menu: {vec-guidelines: {parent: general, weight: 500}}
weight: 5500
---
There are various locations in the VEC model where structures / patterns are defined
and used / instantiated somewhere else (e.g. a connector with its slots and cavities).
In most cases, the elements in the definition of a structure have corresponding
elements in the instancing (e.g. {{< vec-class ConnectorHousingSpecification >}} →
 {{< vec-class ConnectorHousingRole >}},  {{< vec-class Slot >}} →  {{< vec-class SlotReference >}} &  {{< vec-class Cavity >}} →  {{< vec-class CavityReference >}}).

In cases where defined structures are instantiated, these structures shall be
instantiated completely. That means, for every element in the structural definition a
corresponding element in the instancing shall exist, regardless if it is used in the
respective VEC or not (e.g. for each  {{< vec-class Cavity >}} of a  {{< vec-class ConnectorHousingSpecification >}}, a
{{< vec-class CavityReference >}} in the corresponding  {{< vec-class ConnectorHousingRole >}} shall exist). This applies
to the following list of structures, which is here for reasons of clarification and which is
not exhaustive:

- Connectors
- Wires
- EEComponents
- CompositeParts (e.g. Assemblies or Modules)