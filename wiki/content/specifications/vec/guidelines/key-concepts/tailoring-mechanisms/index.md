---
title: "Tailoring Mechanisms"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
authors: ["steinbuechler"]
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
resources:
- src: 'resources/enum-literals.xml'
  title: Custom enumerations example file
  params:
    download: true

- src: 'resources/VEC.EXTEND-OPEN-ENUMS.xsl'
  title: Extension xslt file
  params:
    download: true

- src: 'resources/filter-literals.xml'
  title: Custom filter example file
  params:
    download: true

- src: 'resources/VEC.FILTER-OPEN-ENUMS.xsl'
  title: Extension xslt file
  params:
    download: true
---

{{< review "KBLFRM-989" >}}

There are two ways to modify the VEC strict scheme. With "Open Enumerations" new literals can be added to the scheme and with "XSL Filtering" classes and attributes can be removed.

## Open Enumerations

Open Enumerations enable users to create company specific schemes by adding custom enumeration to the VEC, while still giving the possibility to do schematic checks.

### Prerequisites
- XSLT2 processor e.g. Saxon HE (External link: <http://saxon.sourceforge.net/>)
- <a href="documents/VEC.EXTEND-OPEN-ENUMS.xsl" download >VEC.EXTEND-OPEN-ENUMS.xsl</a>
- <a href="documents/enum-literals.xml" download >enum-literals.xml</a>
- [VEC strict scheme](<https://ecad-wiki.prostep.org/specifications/vec/>)

### 1. Define new literals in enum-literals.xsl

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

This example adds a literal with the name "MyExampleLiteral" to "WireReceptionType" with a description (Note that its possible to include html tags) and an literal without a description named "MyExampleLiteral2". It also adds "MyExampleLiteral3" to "WireLengthType". 

If a new VEC version is released this file can be used again to create an updated company specific scheme.

### 2. Run conversion

{{< figure src="xslt_illustration.svg" >}}

With XSLT2 processing its possible to merge the **enum-literals.xsl** file with the **vec-strict** file by using the logic defined in **VEC.EXTEND-OPEN-ENUMS.xsl**. NOTE: **enum-literals.xsl** and **VEC.EXTEND-OPEN-ENUMS.xsl** must be placed in the same directory. 

**EXAMPLE:**

Command when saxon and java are used.

```console
java -cp C:\path\to\saxon.jar net.sf.saxon.Transform -xsl:C:\path\to\VEC.EXTEND-OPEN-ENUMS.xsl -s:C:\path\to\vec_1.2.0-strict.xsd -o:C:\path\to\result.xml
```

This command is structured as follows:
- **java** : invokes java
- **-cp C:\path\to\saxon.jar** : path to saxon jar file
- **net.sf.saxon.Transform** : tells saxon to use transformation
- **-xsl:C:\path\to\VEC.EXTEND-OPEN-ENUMS.xsl** : path to VEC.EXTEND-OPEN-ENUMS.xsl
- **-s:C:\path\to\vec_1.2.0-strict.xsd** : path to strict vec file
- **-o:C:\path\to\result.xml** : directory and name of the output file

## Filtered scheme

With XSLT its possible to filter specific classes and properties from the strict VEC scheme. However, this is a tedious process. If a class should be removed from the VEC, then the class itself, all occurrences of this class and all IdRefs pointing to this class must be removed.

### Prerequisites
- XSLT2 processor e.g. Saxon HE (External link: <http://saxon.sourceforge.net/>)
- <a href="documents/VEC.FILTER-OPEN-ENUMS.xsl" download >VEC.FILTER-OPEN-ENUMS.xsl</a>
- [VEC strict scheme](<https://ecad-wiki.prostep.org/specifications/vec/>)

### Define literals to remove

The file "VEC.FILTER-OPEN-ENUMS.xsl" contains an example on how to remove "Transformation2D" from the strict VEC scheme. Its definition as well as every occurrence is filtered (Note: Only occurrences where *minOccurs* equals 0 can be removed, as otherwise the resulting scheme would not be valid).

To run the conversion see step "2. Run Conversion" from above. 
