---
title: "Model Meta Information embedded in the XML Schema"
subtitle: ""
authors: [becker]
tags: []
toc: true
categories: []
date: 2023-02-15
date: 2023-02-15
featured: false
draft: false
profile: false
weight: 60

links:
  - icon_pack: fas
    icon: file-code
    name: model-meta-1.0.0.xsd
    url: 'model-meta-1.0.0.xsd'
    
---

{{% callout info %}}
The information described here applies to all future publications of the VEC Schema (Version > 2.0.1).
{{% /callout %}}

Due to the nature of XML Schema and XML files it is not possible to express all specifications, restrictions and additional information of the VEC model (defined as UML model) directly in XML Schema. In particular, these are:

* Target types for `IDREF` / `IDREFS` associations,
* Uniqueness of collections (bag vs. set semantics),
* Ordering of collections,
* Assignment of model elements to packages / namespaces in the model, and
* Deprecation of model elements.

To overcome this gap, additional meta information, embedded in the XML Schema will be provided for future versions (Version > 2.0.1). The extension is done with the annotation concept n provided by XSD (`xs:annotation` / `xs:appinfo` see [W3C XML Schema Definition Language (XSD) 1.1 Part 1: Structures / 3.15.1 The Annotation Schema Component](https://www.w3.org/TR/xmlschema11-1/#Annotation_details)).

The XSD schema for the content of the `xs:appinfo` can be downloaded here: {{% staticref "specifications/vec/meta-information/model-meta-1.0.0.xsd" "newtab" %}}model-meta-1.0.0.xsd{{% /staticref %}}. The XML target namespace of the meta information is: `http://www.prostep.org/ecad-if/2022/model-meta` .

## Package

All types defined in the VEC are associated with a namespace, e.g. `core`, `electrical_parts`, `schematic`. This meta information is defined as follows:

```xml
    <xs:element name="package" type="meta:Package"/>

    <xs:complexType name="Package">
        <xs:attribute name="name" type="xs:string"/>
    </xs:complexType>        
```

## Deprecation

In case a model element (class, attribute, association, enumeration, literal  etc.) gets deprecated, it will be annotated with `deprecated` along with further information about the reason for deprecation and the VEC version since when the deprecation is in place. **Normally deprecated elements will be removed with the next major release.**

```xml
    <xs:element name="deprecated" type="meta:Deprecation"/>

    <xs:complexType name="Deprecation">
        <xs:attribute name="reason" type="xs:string"/>
        <xs:attribute name="since" type="xs:string"/>
    </xs:complexType>
```

## Collections

Meta information for associations / collections is defined as follows:

```xml
    ...
    <xs:element name="relationship" type="meta:Relationship" />
    
    <xs:simpleType name="RelationshipType">
        <xs:restriction base="xs:string">
            <xs:enumeration value="Attribute" />
            <xs:enumeration value="Association" />
            <xs:enumeration value="Composition" />
        </xs:restriction>
    </xs:simpleType>


    <xs:complexType name="Relationship">
        <xs:attribute name="element-type" type="xs:QName"/>
        <xs:attribute name="relationship-type" type="meta:RelationshipType" use="required"/>
        <xs:attribute name="unique" type="xs:boolean" default="true"/>
        <xs:attribute name="ordered" type="xs:boolean" default="false"/>
    </xs:complexType>
    ...
```
All elements in the model that are defined as an association, with or without composition, and all attributes receive a `relationship` annotation. Regarding the XML Schema alone, attributes and composite associations have a similar XSD definition. However, the modelling approach in VEC was chosen intentionally and there are subtle differences in semantics in the context of the specification. 

The attribute representation is used for primitive types and structured value types (e.g. {{< vec-class NumericalValue >}}, {{< vec-class Material >}} or {{< vec-class Color >}}). Those elements do not have complex substructures and do not have incoming associations. On the other hand, composite associations are used for more complex substructures and elements that are relevant in a larger context (e.g. {{< vec-class Slot >}}, {{< vec-class Cavity >}} or {{< vec-class WireElement >}}).

* `element-type`: The schema type of elements referenced by the association as defined in the UML model, to preserve type info for `IDREF(S)`, which will be lost otherwise in native XML schema. Only allowed on `IDREF(S)` elements.
*  `relationship-type`: The type of the relationship as defined in the UML model. 
* `unique`: Defines the collection semantics for elements referencing more than one element. `unique=false` means that the model allows duplication for this reference. In other words, the same object can be referenced multiple times (bag semantics). `unique=true` applies when an element should only be referenced once (set semantics). Composite associations can only be `unique=true`
* `ordered`: Defines that the order of the collection has a semantic meaning and is not just given, because XML is an ordered format by definition.

The attributes of the `relationship` element are only present if the attribute has a reasonable, non-redundant meaning in the context. `ordered` or `unique` for a `0..1` association has questionable value, `unique` for composites can only be `true` and `element-type` is only relevant for `IDREF(S)` associations, because for composites the information is already contained in the regular schema definition.


