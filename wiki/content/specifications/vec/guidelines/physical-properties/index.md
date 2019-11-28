---
title: "Physical Properties"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: false
authors: [becker]
tags: ["numerical values", "reference system"]
categories: []
date: 2019-11-06
lastmod: 2019-11-28T16:20:01+01:00
draft: false

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    #parent: Example Topic
    weight: 2000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 2000
---
## Numerical Values 

{{< figure src="numerical_values.jpg" title="Numerical Values" numbered="true" lightbox="true">}} 

Since most *NumericalValues* in the VEC are definitions for technical properties, each {{< vec-class NumericalValue >}} can reference a {{< vec-class Tolerance >}}. In the example, the specified value of '105.23' has a tolerance of +/- 20.0. Units for *NumericalValues* are defined globally in the VEC and are reused for each {{< vec-class NumericalValue >}}. The example shows the definition of the {{< vec-class CompositeUnit >}} Ohm per Kilometre.

<br/>

## Reference Systems
{{< figure src="reference_systems.jpg" title="Reference Systems" numbered="true" lightbox="true">}} 

This tutorial demonstrates how values with reference systems shall be used. In many cases (e.g. Colors) there is no single way to express a certain literal, but many different ways.

In order to correctly express such values the VEC gives the possibility to define not only the value, but the reference system in which the value is valid, too. This means if I have three valid ways to express the Color "Red", then I can define and differentiate them. If the value is defined in some standard reference system I will use this (e.g. RGB or RAL for colors). If the value is defined in some company specific reference system, this can be defined, too (see ACME Inc.). For attributes like the "baseColor" of a wire insulation it is possible to define the single value in different reference systems (in the example the color in RGB, RAL and company specific ACME Inc.). However all given values shall refer to the same "real" value.