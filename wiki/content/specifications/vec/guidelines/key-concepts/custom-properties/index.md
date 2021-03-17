---
title: "Custom Properties"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
authors: ["becker", "steinbuechler"]
tags: ["Review"]
categories: []
date: 2020-07-07
lastmod: 2019-11-28T15:11:41+01:00
draft: false
toc: true
review: false

history:
  - date: 2020-10-11
    description: " Improved implementation guideline for custom properties (e.g. ComplexProperty)"
    issue: "KBLFRM-960"


classes:
  - CustomProperty
  - ComplexProperty

menu:
  vec-guidelines:
    parent: key-concepts
    weight: 2500

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1000
---
This implementation guideline gives more details and examples on the usage and the correct interpretation of the VEC concept: {{<vec-diagram "basic-datatypes/extensibility-with-custom-properties" >}}.

{{<vec-class CustomProperty>}} is available in all subclasses of {{<vec-class ExtendableElement>}}. In the following examples the class {{<vec-class Person>}} is used, which intentionally is not a subclass of {{<vec-class ExtendableElement>}}, but for a clear and easy to understand example of custom properties it is well suited.

{{< figure src="person_example.png" >}}

The left side shows the {{<vec-class Person>}} class as defined in the VEC. The right hand side shows an excerpt from the domain of an arbitrary Tool. As you can see in the UML model, the class on the right side contains the attributes `employeeNumber` and different usages of the class `Address`, which are both not represented in the VEC. Despite the lack of explicit modelling concepts with this specific semantic, the extension mechanisms of the VEC still allow the exchange of this information within the VEC. The VEC supports extensions of the following type:

- Additional properties (attributes), either single or multi-valued (All subclasses of {{<vec-class CustomProperty>}}, e.g. {{<vec-class SimpleValueProperty >}} or {{<vec-class BooleanValueProperty >}}).
- Contained structures, either single or multi-valued (the {{<vec-class ComplexProperty>}}, e.g. simple objects like the address).

These concepts **do not** support the extension of elements with additional relationships (_IDREF_ in XML).

## XML Examples / Snippets

The following XML snippets illustrate the correct usage of the concepts to support the business model shown in the UML diagram above. 

### Simple Property

The snippet shows the extension of a Person object by the property `EmployeeNumber` (String). The VEC supports a wide range of primitive property types (e.g. _Boolean_, _Date_, _Numerical_, see the subclasses of {{<vec-class CustomProperty>}} for a complete list), so keep in mind to choose the correct type for the corresponding value.

```xml
<vec:VecContent ...>
    [...]
    <Person id = "id_01">
      <CustomProperty id="id_01_1" xsi:type="vec:SimpleValueProperty">
          <PropertyType>EmployeeNumber</PropertyType>
          <Value>ABC123</Value>
      </CustomProperty>
      <Department>IT</department>
      <FirstName>John</firstName>
      <LastName>Doe</lastName>
    </Person>
    [...]
</vec:VecContent>
```

### Complex Property

If a VEC object is to be extended by an attribute of a structured data type, the approach is analogous to the simple property. Only a {{<vec-class ComplexProperty>}} is used instead. The `PropertyType` defines the role of the structured data in the context of the parent object (in other words the "attribute name", e.g. _HomeAddress_). The individual attributes of the structured data type in turn are then mapped as simple properties within the {{<vec-class ComplexProperty>}}. For deeper structured data it is perfectly valid to define {{<vec-class ComplexProperty>}}s that contain {{<vec-class ComplexProperty>}}s again.

If the same data structure (**not** the same data) should appear in different roles (e.g. _HomeAddress_, _WorkAddress_) another ComplexProperty with a different `PropertyType` is defined. A concept for sharing / reusing the data defined in such structures is not part of the VEC extension concepts.

```xml
<vec:VecContent ...>
    [...]
    <Person id = "id_01">
        <CustomProperty id="id_01_1" xsi:type="vec:ComplexProperty">
            <PropertyType>HomeAddress</PropertyType>
            <CustomProperty id ="id_01_1_1" xsi:type="vec:SimpleValueProperty">
                <PropertyType>Street</PropertyType>
                <Value>Central Street 1</Value>
            </CustomProperty>
            <CustomProperty id ="id_01_1_2" xsi:type="vec:SimpleValueProperty">
                <PropertyType>City</PropertyType>
                <Value>Anytown</Value>
            </CustomProperty>
            <CustomProperty id ="id_01_1_3" xsi:type="vec:IntegerValueProperty">
                <PropertyType>PostalCode</PropertyType>
                <Value>04325</Value>
            </CustomProperty>
        </CustomProperty>
        <CustomProperty id="id_01_2" xsi:type="vec:ComplexProperty">
            <PropertyType>WorkAddress</PropertyType>
            [...]
        </CustomProperty>
        [...]
    </Person>
    [...]
</vec:VecContent>
```

### Multi-Valued Custom Properties

If an object shall be extended by a multi-valued property (e.g. _AdditionalAddresses_) multiple custom properties (either simple or complex) with the same `PropertyType` are defined. 

```xml
<vec:VecContent ...>
    [...]
    <Person id = "id_01">
        <CustomProperty id="id_01_1" xsi:type="vec:ComplexProperty">
            <PropertyType>AdditionalAddresses</PropertyType>
            <CustomProperty id ="id_01_1_1" xsi:type="vec:SimpleValueProperty">
                <PropertyType>Street</PropertyType>
                <Value>Central Street 1</Value>
            </CustomProperty>
            <CustomProperty id ="id_01_1_2" xsi:type="vec:SimpleValueProperty">
                <PropertyType>City</PropertyType>
                <Value>Anytown</Value>
            </CustomProperty>
            <CustomProperty id ="id_01_1_3" xsi:type="vec:IntegerValueProperty">
                <PropertyType>PostalCode</PropertyType>
                <Value>04325</Value>
            </CustomProperty>
        </CustomProperty>
        <CustomProperty id="id_01_4" xsi:type="vec:ComplexProperty">
            <PropertyType>AdditionalAddresses</PropertyType>
            [...]
        </CustomProperty>
        [...]
    </Person>
    [...]
</vec:VecContent>
```