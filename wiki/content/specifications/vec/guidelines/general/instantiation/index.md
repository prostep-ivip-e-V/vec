---
title: Instantiation of Model Structures
type: specs
toc: true
authors: [becker]
tags: []
categories: []
date: 2024-03-14T00:00:00.000Z
lastmod: 2026-09-28T00:00:00.000Z
draft: false
review: true
history:
  - date: 2024-03-14T00:00:00.000Z
    description: Extracted information from PSI recommendation and extended it where necesseray.
    issue: KBLFRM-1191
  - date: 2026-09-28
    description: Replaced the completeness requirement by the instantiation of context relevant elements
    ghIssue: "1078"
classes:
  - ConnectorHousingSpecification
  - ConnectorHousingRole
  - Slot
  - SlotReference
  - Cavity
  - CavityReference
  - WireElementReference
  - HousingComponentReference
  - PartWithSubComponentsRole
menu: {vec-guidelines: {parent: general, weight: 500}}
weight: 5500
---
There are various locations in the VEC model where structures / patterns are defined
and used / instantiated somewhere else (e.g. a connector with its slots and cavities).
In most cases, the elements in the definition of a structure have corresponding
elements in the instancing (e.g. {{< vec-class ConnectorHousingSpecification >}} →
 {{< vec-class ConnectorHousingRole >}},  {{< vec-class Slot >}} →  {{< vec-class SlotReference >}} &  {{< vec-class Cavity >}} →  {{< vec-class CavityReference >}}).

## Scope of Instantiation

Following the principle of optionality in the VEC, a defined structure does not have to be
instantiated completely. Only the elements that are required for the definition of the
respective context need to be instantiated. An element is required if the context makes a
statement about it, for example a context specific identifier or description, a redefined
technical property, a placement, a routing or a contacting. For example, a
{{< vec-class CavityReference >}} is required for a {{< vec-class Cavity >}} that is contacted
in the harness, but not for a cavity about which the harness does not state anything.

Where an instantiation element exists, it shall reference the element of the structural
definition it instantiates (e.g. `referencedCavity` of a {{< vec-class CavityReference >}},
`referencedWireElement` of a {{< vec-class WireElementReference >}} or
`partStructureSpecification` of a {{< vec-class PartWithSubComponentsRole >}}). For the
instantiation of library parts (e.g. assemblies), each instantiated occurrence shall
additionally reference its origin in the part master definition (`instanciatedOccurrence` /
`instanciatedUsage`, see [Composite Parts]({{< relref "../../product-definition/composite-parts#usage-of-an-assembly" >}})).

This applies to all instantiated structures, for example connectors, wires, E/E components and
composite parts (assemblies, modules). The same principle applies to the creation of
{{< vec-class Role >}}s (see [Instantiation with Roles]({{< relref "../../product-definition/component-instances#instantiation-with-roles" >}}))
and to the description of parts with specifications (see
[Content Requirements]({{< relref "../../product-definition/component-description#content-requirements" >}})).

### Absence of Instantiation Elements

As a consequence, the absence of an instantiation element has no meaning of its own. A missing
{{< vec-class CavityReference >}} means "no statement about this cavity in this context", and
**not** "this cavity is unused". The same applies to {{< vec-class SlotReference >}},
{{< vec-class WireElementReference >}}, {{< vec-class HousingComponentReference >}} and all
other instantiation elements. A reading system shall not interpret the absence of an
instantiation element as a statement about the product.

{{% callout note %}}
Processes that require a complete instantiation, for example to distinguish "unused" from "not
modelled", can define this as a process specific restriction, e.g. with XSD 1.1 assertions,
schema filtering or Schematron rules (see [XML / XSD Representation]({{< relref "../xml-xsd#motivation-and-objective" >}})).
{{% /callout %}}
