---
title: "Physical Properties"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
tags: ["numerical values", "reference system"]
categories: []
date: 2019-11-06
lastmod: 2019-11-28T16:20:01+01:00
draft: false
math: true

classes:
  - NumericalValue
  - Unit
  - SiUnit
  - CompositeUnit
  - Color

menu:
  vec-guidelines:
    parent: key-concepts
    weight: 2000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 2000
---
## Numerical Values 

Many technical properties are defined as {{< vec-class NumericalValue >}}. Those consist of a numerical value in a defined  {{< vec-class unit >}} and an optional {{< vec-class Tolerance >}}.

{{< figure src="numerical_values.jpg" title="Numerical Values" numbered="true" lightbox="true">}} 

The object diagram above illustrates the VEC representation of the following value: 

$$105.23 \ \Omega /km \pm 20.0$$ 

### Units
{{< vec-class Unit >}}s that are used within a VEC are defined globally within the VEC file (under the {{< vec-class VecContent >}}) and reused / referenced by each {{< vec-class NumericalValue >}}. The VEC allows a wide variety of different {{< vec-class Unit >}}s from different systems of units. The following XML snippet contains some concrete examples for {{< vec-class Unit >}}s. The first three units (*id_unit_1, id_unit_2 & id_unit_3*) in the snippet are the XML representation of the example above.

```xml
<vec:VecContent ...>
    [...]
    <Unit xsi:type="vec:SIUnit" id="id_unit_1">
        <SiUnitName>Ohm</SiUnitName>
    </Unit>
    <Unit xsi:type="vec:SIUnit" id="id_unit_2">
        <Exponent>-1</Exponent>
        <SiUnitName>Metre</SiUnitName>
        <SiPrefix>Kilo</SiPrefix>
    </Unit>
    <Unit xsi:type="vec:CompositeUnit" id="id_unit_3">
        <Factors>id_unit_1 id_unit_2</Factors>
    </Unit>
    <Unit xsi:type="vec:SIUnit" id="id_unit_6000">
        <Exponent>2</Exponent>
        <SiUnitName>Metre</SiUnitName>
        <SiPrefix>Milli</SiPrefix>
    </Unit>
    <Unit xsi:type="vec:SIUnit" id="id_unit_170">
        <SiUnitName>Gram</SiUnitName>
    </Unit>
    <Unit xsi:type="vec:SIUnit" id="id_unit_442">
        <SiUnitName>DegreeCelsius</SiUnitName>
    </Unit>
    <Unit xsi:type="vec:SIUnit" id="id_unit_189">
        <SiUnitName>Ampere</SiUnitName>
    </Unit>
    <Unit xsi:type="vec:SIUnit" id="id_unit_445">
        <SiUnitName>Volt</SiUnitName>
    </Unit>
    <Unit xsi:type="vec:SIUnit" id="id_unit_196">
        <SiUnitName>Second</SiUnitName>
    </Unit>
     [...]
</vec:VecContent>
```

## Reference Systems
{{< figure src="reference_systems.jpg" title="Reference Systems" numbered="true" lightbox="true">}} 

This tutorial demonstrates how values with reference systems shall be used. In many cases (e.g. Colors) there is no single correct way to express a certain literal, but many different ways.

In order to correctly express such values, the VEC gives the possibility to define not only the value, but also the reference system in which the value is defined. This means if there have three valid ways to express the Color "Red", the VEC allows to define and differentiate all of them. If the value is defined in some standard reference system this ca be used (e.g. RGB or RAL for colors). If the value is defined in some company specific reference system, this can be defined, too (see ACME Inc.). For attributes like the "baseColor" of a wire insulation it is possible to define the single value in the representation different reference systems (in the example the color RED in RGB, RAL and a company specific "ACME Inc." system). However all given representations shall refer to the same "real" value.

The example shown in the figure [Reference Systems](#figure-reference-systems) has the following XML representation:
```xml
<vec:VecContent ...>
    [...]
    <DocumentVersion id="id_1">
        [...]
        <Specification xsi:type="vec:InsulationSpecification" id="id_2">
            <Identification>...</Identification>
            <BaseColor id="id_3">
                <Key>#CC0605</Key>
                <ReferenceSystem>RGB</ReferenceSystem>
            </BaseColor>
            <BaseColor id="id_4">
                <Key>3020</Key>
                <ReferenceSystem>RAL</ReferenceSystem>
            </BaseColor>
            <BaseColor id="id_5">
                <Key>RD</Key>
                <ReferenceSystem>ACME Inc.</ReferenceSystem>
            </BaseColor>
        </Specification>
    </DocumentVersion>
    [...]
</vec:VecContent>
```