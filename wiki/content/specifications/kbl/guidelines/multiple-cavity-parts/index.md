---
title: "Multiple Cavity Parts"
type: specs
summary: "The Contact_point in the KBL allows the referencing of an unspecified number of Part_usage_selects in the role Associated_parts. This implementation guideline clarifies the valid use cases of multiplicities > 1."
authors: [becker]
tags: ["Review"]
categories: []
date: 2020-06-16
lastmod: 2020-06-16
draft: false
math: true
diagram: true

classes:
  - Contact_point
  - General_terminal
  - Terminal_occurrence
  - Cavity_seal
  - Cavity_seal_occurrence
  - Accessory
  - Accessory_occurrence

menu:
  kbl-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    #parent: Example Topic
    weight: 5000
---

{{< review "KBLFRM-950" >}}
The {{< kbl-class Contact_point >}} in the KBL allows the referencing of an unspecified number of {{< kbl-class Part_usage_select >}}s in the role _Associated_parts_. This implementation guideline clarifies the valid use cases of multiplicities > 1.

For a standard contacting (the "90% case"), the _Associated_parts_ association references a single {{< kbl-class Terminal_occurrence >}} and an (optional) {{< kbl-class Cavity_seal_occurrence >}} for sealed contacting situations.

Chapter 2.2 of the KBL Recommendation Document (V2.5) already defines:

> The Contact_point specifies a single contacting variant. This means that the contacting is manufactured, as specified in the KBL. Either all
> participants (Cavities, Terminals, Seals, Wires) set into a relationship by the Contact_point exist in a specific harness or none. There is no
> requirement, to filter the participants of a contacting situation with information derived from Module_configurations in order to create a
> manufacturing variant.
>
> The Contact_point represents a single potential. As a consequence, all cavities and wires referencing / being referenced by a Contact_point
> are short-circuited and have the same potential (even if the signals on the wires are named differently.

In other words, using the _Associated_parts_ to represent a 150% contacting situation is not a valid approach in the KBL.
However, there are still remaining situations, where more components than one {{< kbl-class Terminal_occurrence >}} (and one {{< kbl-class Cavity_seal_occurrence >}})
participate in a specific contacting situation. The representation of those cases in the KBL depends on the role that the components have in the contacting sitation.

* Multiple {{< kbl-class Terminal_occurrence >}} and/or {{< kbl-class Cavity_seal_occurrence >}} are valid, if all the components of the respective class have a conducting (terminal) or sealing function.
* All other components (e.g. wire fixations, damping elements) have to be represented as an {{< kbl-class Accessory_occurrence >}} to the primary terminal component.

The representation is illustrated the following [figure]({{< relref "#figure-schematic-illustration-of-the-contact-point" >}}). Reasons for choosing this representation where:

1. It is aligned with the representation in the VEC, which defines individual classifications for those components ({{< vec-class "WireEndAccessorySpecification" >}} & {{< vec-class "CavityAccessorySpecification" >}})
2. Representing those "accessories" as *regular Associated_parts* would mislead existing established sanity checks (e.g. the existence of a {{< kbl-class Cavity_seal_occurrence >}} would raise the question why only one contact in the connector was sealed.)

{{< figure src="cavity-parts.svg" lightbox="true" numbered="true" title="Schematic illustration of the contact point" >}}
