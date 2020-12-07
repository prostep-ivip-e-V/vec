---
title: "Tailoring Mechanisms"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
authors: ["steinbuechler", "becker"]
tags: ["Review"]
categories: []
date: 2020-10-21
lastmod: 2020-10-21T15:11:41+01:00
draft: false
toc: true

classes:
  - OpenEnumeration

menu:
  vec-guidelines:
    parent: key-concepts
    weight: 3000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1000
---

{{< review "KBLFRM-989" >}}

There are two ways to tailor the VEC schema according to your own needs in a
compatible way to create your own process, tool or company specific VEC schema
(which is still a valid VEC):

1. New literals can be added to open enumerations (see
   {{<vec-diagram "basic-datatypes/open-and-closed-enumerations">}})
2. With "Schema Filtering" the schema can be made more restrictive (Less allowed
   classes, attributes etc.).

In order to remain compatible with the VEC, both approaches require that the
changes are in a way, so that a file that is validated against the custom Schema
must also be valid against the regular XML Schema of the Standard.

This Implementation Guideline explains how these modifications can be achieved
in an efficient way and is based on XSLT. XSLT is a useful technology, when:

- you want to modify XML data,
- you can define the modification based on rules,
- the general structure of your result is close to the input,
- and performance is not critical.

Therefore it is the perfect solution for this case, where we want to modify the
XML Schema of the VEC at very specific locations while keeping the rest
unchanged.

## Open Enumerations

Open Enumerations are a concept in the VEC to have predefined values for
attributes, whilst being open for extension (for details see the corresponding
recommendation chapter
{{<vec-diagram "basic-datatypes/open-and-closed-enumerations">}}). Two schema
variants are provided officially for the VEC: the _regular_ and the _strict_
schema. The _regular_ schema can be used for pure syntax validation of VEC
files. However, it makes **no** restrictions for the use of values in attributes
with an open enumeration type. The _strict_ schema restricts these attributes to
have only values that are defined literals from the VEC standardization board in
the corresponding open enumeration. The advantage of using the _strict_ schema
is that you are able to validate that only defined literals of open enumerations
have been used.

However, if you extend[^1] an open enumeration with new literals for your
process specific requirements, or new wiring harness technologies, then the
_strict_ schema validation will break. In this case it is not possible anymore
to check if only defined values, either by the standard or the process, have
been used. Nevertheless, it would be highly appreciable to still have such a
mechanism in place. To achieve this, you need an _extended strict_ schema, that
includes the values from the standardization board **and** the process specific
values. This implementation guideline is about creating such an _extended
strict_ schema.

{{% alert note %}} **Note:** With a little bit more XSLT foo, this concept to
can also be used to define process specific restrictions for attributes where
VEC defines no restrictions (e.g. RegEx-Patterns for part numbers).
{{% /alert %}}

[^1]:
    Extension of open enumerations is perfectly valid as long as you adhere to
    the rules mentioned in the recommendation.

#### 1. Prerequisites

- XSLT2 processor e.g. Saxon HE
- <a href="vec-open-enum-compiler.xsl" download >vec-open-enum-compiler.xsl</a>
- <a href="enum-literals.xml" download >enum-literals.xml</a>
- [VEC strict schema](https://ecad-wiki.prostep.org/specifications/vec/)

#### 2. Define new literals in enum-literals.xsl

The enum-literals.xml file contains examples on how to add custom enumerations.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<enum-profile>
    <enum type="WireReceptionType">
        <literal name="MyExampleLiteral">
             My example description with html elements <br/>
        </literal>
        <literal name="MyExampleLiteral2" />
    </enum>
    <enum type="WireLengthType">
        <literal name="MyExampleLiteral3">
             My second example description
        </literal>
    </enum>
</enum-profile>
```

This example adds a literal with the name "MyExampleLiteral" to
"WireReceptionType" with a description (Note that its possible to include html
tags) and a literal without a description named "MyExampleLiteral2". It also
adds "MyExampleLiteral3" to "WireLengthType".

If a new VEC version is released, this file can be used recreate an updated
company specific scheme (without having to repeat many manual changes).

#### 3. Run Generation

{{< figure src="xslt-illustration.svg"  title="Generation Process Overview" numbered="true" lightbox="true">}}

With XSLT2 processing its possible to merge the `enum-literals.xsl` file with
the `vec-strict` file by using the logic defined in
`vec-open-enum-compiler.xsl`. NOTE: `enum-literals.xml` and
`vec-open-enum-compiler.xsl` must be placed in the same directory.

Run the transformation with Saxon HE for Java:

```console
java -cp /path/to/saxon.jar net.sf.saxon.Transform \
    -xsl:/path/to/vec-open-enum-compiler.xsl \
    -s:/path/to/vec_1.2.0-strict.xsd \
    -o:/path/to/result.xml
```

## Schema Filtering

The VEC is a comprehensive model with a variety of classes and attributes. In
very few cases all of them are needed at the same time. For this reason it may
be desirable to restrict the number of valid schema elements for specific
interfaces. _Schema Filtering_ can be useful in these cases.

For example, an interface for the exchange of {{<vec-class UsageNode>}}s would
only require a handful of VEC core classes. Another scenario might be that you
want to prohibit the use of {{<vec-class CustomProperty >}} in your own process.
Many scenarios are conceivable, in the core it always burns down to limiting the
power of the VEC purposefully to achieve a better controllability for certain
use cases and interfaces.

Since the scenario of _Schema Filtering_ is more complex and less straight
forward, than the _Open Enumerations_ scenario, the following section just
provides an idea for a possible approach and not a "ready-to-use" solution.

The basic idea here is, that an XSLT script simply removes all unnecessary
elements and leaves the rest unchanged. You can use either a positive or
negative filter approach. In our example, we use a negative filter list (all
elements on the list are removed). When removing a class it is not sufficient to
only remove the class itself. All usages of the class must be removed as well. A
class that has mandatory usages by other classes, can not be removed unless all
usages are removed recursively till an optional point is reached.

The file <a href="vec-tailoring-schema.xsl" download >vec-tailor-schema.xsl</a>
contains an example on how to remove the `Transformation2D` from the VEC scheme.
The following snippet shows the relevant parts only. The rest of the XSLT script
is known known as
[identity transformation](https://en.wikipedia.org/wiki/Identity_transform)
(copy of the source into the destination without changes).

The first line removes the class itself. The second line removes all optional
attributes with the type `Transformation2D`. If you validate the resulting
schema you can easily check if the `Transformation2D` has any mandatory usage
that have been overlooked (it has not).

```xml
    ...
    <xsl:template match="xs:complexType[@name='Transformation2D']" />

    <xsl:template match="xs:element[@type='vec:Transformation2D' and @minOccurs=0]" />
    ...
```

{{< figure src="model-snippet.png" class="float-right" width="400" title="Illustrating Model Snippet" numbered="true" lightbox="true">}}

Unfortunately `IDREF` attributes cannot be handled in this fashion
automatically, but have to be checked manually. The figure on the right side
displays the `occurrenceOrUsage` association between
{{<vec-class OccurrenceOrUsageViewItem2D>}} and
{{<vec-class OccurrenceOrUsage>}}. Associations are translated into `IDREF` or
`IDREFS` in the XML Schema, in contrast to aggregations that are translated into
contained `xs:element` (compare
{{<vec-diagram "xml-representation-of-the-model/mapping-of-the-vec-model-to-xml-schema-definition-xsd">}}).
The XML Schema representation of the association is the following:

```xml
<xs:complexType name="OccurrenceOrUsageViewItem2D">
    <xs:complexContent>
        <xs:extension base="vec:ExtendableElement">
        <xs:sequence>
            ...
            <xs:element name="OccurrenceOrUsage" type="xs:IDREFS" minOccurs="0"/>
            ...
        </xs:sequence>
        </xs:extension>
    </xs:complexContent>
</xs:complexType>
```

That means a filtering rule cannot be formulated based on the target type of the
association, as this type unknown in the XSD (in contrast to contained
elements). Therefore a filtering rule must be more specific by explicitly
addressing each relevant association, like this:

```xml
    ...
    <xsl:template match="xs:element[@name='OccurrenceOrUsage' and
        ancestor::xs:complexType[@name='OccurrenceOrUsageViewItem2D']]" />
    ...
```

{{% alert note %}} **Note:** Make sure that the resulting schema remains
compatible with the standard (XML Schema **and** Model Specification):

- Do not remove elements that are mandatory!
- Take extra care of usages via `IDREF` associations. These have to be checked
  in the model since the XML Schema is typeless for those associations.
  {{% /alert %}}
