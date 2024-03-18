---
title: "RDF / OWL Representation"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
tags: []
categories: []
date: 2024-02-22
lastmod: 2019-12-02T12:43:57+01:00
draft: false
review: true

history:
  - date: 2024-02-22
    description: "Added first version of the description"

classes:
  

menu:
  vec-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    parent: information-structures
    weight: 300

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 20100
---

{{< review >}}
Various initiatives in the recent past have shown an increase in the importance of semantic models and the use of ontologies in industry (e.g. Catena-X). For this reason, and due to the opportunities and potential of this technology, it has been decided to also publish the VEC as an ontology in the future (starting in 2024). This should facilitate the creation of VEC-based solutions in the area of the Semantic Web / Linked Data / Knowledge Graphs and enable a simple transition between the different worlds.

The RDF variant of the VEC is intended as an additional technical representation of the underlying UML model, in addition to the XML schema variant that has existed since the beginning. This is not a replacement or discontinuation of the previous approach, but rather an extension of the toolbox for application scenarios in which the more monolithic representation as an XML structure appears less suitable (e.g. distributed development in dataspace / cloud architectures). Nevertheless, the XML variant will retain its raison d'être in the future for use cases in which a compact and complete representation is required (e.g. archiving or passing on defined development statuses).

Like the XML schema, the ontology and the associated SHACL schema are derived automatically and directly from the UML model of the VEC. This means that the model, the XML schema and the ontology should be consistent with each other at all times for a specific VEC version. 

{{% callout warning %}}
The first version of the VEC ontologies has been published in March 2024. Currently the ontologies have a "preview" state. This means that the translation logic from the UML model to the ontology is currently under review. Comments on this are welcome at any time. However, this also means that adjustments to the translation conventions and thus to the resulting ontologies may still be possible.
{{% /callout %}}

### RDF Snippets

The following sections contain snippets of the transformation results. All excerpts are defined in [RDF Turtle](https://www.w3.org/TR/turtle/). The following namespace definitions are used:

```Turtle
@prefix :     <http://www.prostep.org/ontologies/ecad/2024/03/vec#> .
@prefix owl:  <http://www.w3.org/2002/07/owl#> .
@prefix rdf:  <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
@prefix vec:  <http://www.prostep.org/ontologies/ecad/2024/03/vec#> .
@prefix xs:   <http://www.w3.org/2001/XMLSchema#> .
```



## UML to OWL

### VEC Namespace

The namespace of the VEC ontology is: `http://www.prostep.org/ontologies/ecad/2024/03/vec#`. The recommended namespace prefix is `vec` (used in the ECAD-WIKI for any example). The `owl:versionIRI` is `http://www.prostep.org/ontologies/ecad/2024/03/vec/<version>#`, e.g. `http://www.prostep.org/ontologies/ecad/2024/03/vec/2.1.0#` for every VEC version.

### General

The following mapping rules apply to all elements:

1. If a UML model element is mapped into RDF, the documentation in the model is mapped to `rdfs:comment`.
2. Regardless of the pattern used to create the IRI of an element, the name of the element in the UML model is used as the `rdfs:label`.


### Classes

Regular classes in the UML Model (see figure below for an example form the VEC) are mapped to RDF in the following form.

{{< figure src="classes.png" title="VEC UML Model - Classes" numbered="true" lightbox="true" >}}

1. The name of the class is used as `IRI` (within the VEC-namespace).
1. Class names begin with an upper case letter.
1. The `rdf:type` is `owl:Class`.
3. Inheritance in the UML model is mapped to `rdfs:subClassOf`.

For the class `ItemVersion` the mapping is the following.

```Turtle
vec:ItemVersion  rdf:type  owl:Class;
        rdfs:comment     "Abstract super-class for physical objects ..."@en;
        rdfs:label       "ItemVersion"@en;
        rdfs:subClassOf  vec:ExtendableElement .
```
Since the VEC uses a object oriented design concept multiple inheritance of classes is not allowed. 
This is translated to `owl:AllDisjointClasses` statements for subclasses of a specific class. 

```Turtle
[ rdf:type     owl:AllDisjointClasses;
  owl:members  ( vec:DocumentVersion vec:PartVersion )
] .
```

### Enumerations

Enumerations are sets of predefined values. The VEC defines two concept for enumerations, _Open_ and _Closed_ enumerations (see {{< vec-diagram "basic-datatypes/open-and-closed-enumerations" >}}). You can find two examples in the figure below.

{{< figure src="enums.png" title="VEC UML Model - Enumerations" numbered="true" lightbox="true" >}}

For the translation into RDF enumerations are treated as regular classes, in contrast to XML Schema, where an enumeration is just a `xs:restriction` on the `xs:string` datatype. To distinguish enumerations from regular VEC classes, the classes `Enumeration`, `OpenEnumeration` and `ClosedEnumeration` are explicitly defined in the ontology as follows (`rdfs:comment` and `rdfs:label` omitted).

```Turtle
vec:Enumeration rdf:type owl:Class .

vec:OpenEnumeration 
        rdf:type         owl:Class;
        rdfs:subClassOf  vec:Enumeration .

vec:ClosedEnumeration 
        rdf:type         owl:Class;
        rdfs:subClassOf  vec:Enumeration .

vec:enumLiteral 
        rdf:type            owl:DatatypeProperty;
        rdfs:domain         vec:Enumeration;
        rdfs:range          xs:string;
        rdfs:subPropertyOf  rdfs:label .
```
The naming conventions for enumerations are the same as for regular classes. In addition, every `Enumeration` has a data property `enumLiteral` for the actual enum string value, as defined in the model. An enumeration in the UML model is translated to RDF as a subclass of `OpenEnumeration` or `ClosedEnumeration`. The Literals are translated as `owl:NamedIndividuals` of the class, the `IRI`s of the literals are created with the pattern: "`<ClassName>_<LiteralName>`"

```Turtle
vec:SegmentCrossSectionAreaType
        rdf:type         owl:Class;
        rdfs:subClassOf  vec:OpenEnumeration .

vec:SegmentCrossSectionAreaType_Reserved
        rdf:type         vec:SegmentCrossSectionAreaType , owl:NamedIndividiual;
        vec:enumLiteral  "Reserved" .

vec:SegmentCrossSectionAreaType_Real
        rdf:type         vec:SegmentCrossSectionAreaType , owl:NamedIndividiual;
        vec:enumLiteral  "Real" .        
```
For `OpenEnumeration`s the extension with new custom literals is straight forward. They can be easily defined as new individuals of the corresponding enum class. However, the should be defined in an appropriate namespace and not in VEC-namespace. The enumeration above could be extended for example like this:

```Turtle
acme:SegmentCrossSectionAreaType_MyCustomLiteral
        rdf:type         vec:SegmentCrossSectionAreaType , owl:NamedIndividiual;
        vec:enumLiteral  "MyCustomLiteral" .   
```
In contrast to `OpenEnumeration`s, `ClosedEnumeration`s should not be extendable. Their set of enumeration values is predefined and closed. This semantic is expressed in the ontology representation by an _equivalence axiom_ similar to the following:

```Turtle
vec:ValueDetermination
        rdf:type             owl:Class;
        rdfs:subClassOf      vec:ClosedEnumeration;
        owl:equivalentClass  [ rdf:type   owl:Class;
                               owl:oneOf  ( vec:ValueDetermination_Calculated vec:ValueDetermination_Measured vec:ValueDetermination_Estimated )
                             ] .
```
### Primitives
The UML Model uses several primitive datatypes. The mapping to XML Schema datatypes, which are also used as primitive datatypes in RDF is the following:
```
String=xs:string
Double=xs:double
Integer=xs:integer
Int=xs:integer
Boolean=xs:boolean
Date=xs:dateTime
```
### Associations & Attributes

{{% callout note %}}

**Remarks about IRIs for Associations & Attributes**

The VEC UML model identifies attributes and associations by their role name (compare figure _VEC UML Model - Classes_ above), 
for example _abbreviation_ in the class _ItemVersion_ or _referencedPart_ in the class _DocumentVersion_. Those role names are only unique within the defining class 
and not in the entire model. 

There are cases where two classes in VEC model define an attribute with the same name and both attributes have in fact the same semantic (e.g. _Identification_ or _aliasId_). 
However, there are also multiple locations, where the same name is used for different semantics (e.g. _CurrentInformation_ is used in some context as information about the maximum current, and in another context as information about the regular operating currents). 

The following approaches were considered for IRI generation for properties, but rejected after careful consideration:

1. **Opaque Names**, like _p1243_ are a common approach to this problem. However, support of such an approach would have been a major extension to VECs the existing modelling infrastructure, switching between the classic XML-based World and RDF would be significantly more difficult and human readability data would be significantly more limited, which in turn might compromise the acceptance of the RDF representation.
2. **Using Property Names alone**. This approach would have been fine, if all property names are unique within the model or have exactly the same semantic. However, as this is not the case, this blurring would result in various problems. Starting for example with simple things like properties with the same name have different data types. Defining `rdfs:domain/range` statements on those properties would lead to inconsistencies or contradictions.
3. **Qualifying ambiguous property names only**. Translation rules would depend on the model history. If a unique property gets a new "twin" at some point, qualification would be necessary. However, the former unique property must retain its name for stability / backwards compatibility. This would lead to an incomprehensible situation as to why which property is fully qualified and when and which is not. 
{{% /callout %}}

The following mapping rules apply for attributes & associations:

1. In order to have a general, context free and simple translation rule, that creates stable and reproducible IRIs for properties, the IRI is always fully qualified. It is created with the pattern: "`<ClassName><RoleName>`" where first letter of `<ClassName>` is lower case and the first letter of `<RoleName>` is upper case. 
2. All primitive properties are mapped to `owl:DataProperty`, all other properties are mapped to `owl:ObjectProperty`.
3. `rdfs:range/domain` statements are created, corresponding to the declaring class and the datatype of the property.
4. All properties that represent a "containment" are mapped as `rdfs:subPropertyOf vec:contains` (explained further down). Containments are all attributes and all associations modelled as _composite_.

```Turtle
vec:itemVersionCompanyName
        rdf:type      owl:DatatypeProperty;
        rdfs:domain   vec:ItemVersion;
        rdfs:label    "companyName"@en;
        rdfs:range    xs:string .

vec:itemVersionAbbreviation
        rdf:type            owl:ObjectProperty;
        rdfs:domain         vec:ItemVersion;
        rdfs:label          "abbreviation"@en;
        rdfs:range          vec:LocalizedString;
        rdfs:subPropertyOf  vec:contains .
```

To map the hierarchical structure of the VEC, two general properties are defined as follows:
```Turtle
vec:contains  
        rdf:type  owl:ObjectProperty;
        rdfs:comment  "This is the representation of the containment modeled in the UML. All associations that are a \"containment\" in the UML model are subproperties of this property."@en;
        rdfs:label    "contains"@en .

vec:parent  
        rdf:type   owl:ObjectProperty;
        rdfs:comment   "The inverse of 'contains'."@en;
        rdfs:label     "parent"@en;
        owl:inverseOf  vec:contains .
```

#### Ordered & Non-Unique

The VEC model allows attributes & compositions to _Ordered_ and associations to _Ordered_ and/or _Non-Unique_. See the figure below for the different cases. 

_Side Note:_ Non-Uniqueness is only possible for associations.

{{< figure src="ordered-non-unique.png" title="VEC UML Model - Ordered / Non-Unique" numbered="true" lightbox="true" >}}

* _Ordered_ means that the elements of the property / association have a specified order that has defined semantic in the domain. For example the order of the {{<vec-class TopologySegment>}} in a {{< vec-class Path >}} defines the order in which a wire is routed through the topology. 
* _Non-Unique_ means, that the same two element can be associated multiple times and that the number of associations is relevant.

Since RDF is a pure triple representation, there is no native way to represent order or non-uniqueness, in contrast to XML where all associations are ordered and non-unique per default. 
To represent these semantics in the VEC ontology additional model elements are introduced.

To express "order" as a general concept the class _Ordered_ is defined as follows:

```Turtle
vec:Ordered  
        rdf:type  owl:Class;
        rdfs:comment  "Class of elements that are ordered within their containment."@en;
        rdfs:label    "Ordered"@en .

vec:orderedIndex  
        rdf:type  owl:DataProperty;
        rdfs:comment  "Defines the order of Ordered elements. Lower indices are further forward in a list. 0 is the lowest index, i.e. the first element."@en;
        rdfs:domain   vec:Ordered;
        rdfs:range    xs:nonNegativeInteger .
```
For all attributes & compositions order is defined within the context of the "container". In consequence, there is only one order for each element, as there is only one container for each element. Therefore, the order can be "stored" in the element itself. In other words, all element that are contained in an ordered attribute or composition are also _Ordered_. In the ontology, this is expressed by the following triple:

```Turtle
vec:cavitySpecificationAngle
        rdf:type            owl:ObjectProperty;
        rdfs:domain         vec:CavitySpecification;
        rdfs:label          "angle"@en;
        rdfs:range          vec:NumericalValue , vec:Ordered;
        rdfs:subPropertyOf  vec:contains .
```
With associations, the same object can be referenced multiple times and receive different orders for each referencing. 
For example, a segment can occur in different paths and in different places. 
In these cases, a wrapper class is created in the ontology for the target class. The wrapper participates unambiguously in association in the context of the source object and references the actual target object.
This allows the non-unique semantics to be mapped. If ordering is also required, it is applied to the wrapper class, analogous to the mapping attributes and composition. For the  {{< vec-class Path >}} / {{<vec-class TopologySegment>}} the resulting partial ontology is the following:

```Turtle
vec:pathSegment  
        rdf:type   owl:ObjectProperty;
        rdfs:domain         vec:Path;
        rdfs:label          "segment"@en;
        rdfs:range          vec:TopologySegmentWrapper , vec:Ordered;
        rdfs:subPropertyOf  vec:contains .

vec:TopologySegmentWrapper
        rdf:type         owl:Class;
        rdfs:comment     "Container class for TopologySegment to participate in non-unique and/or ordered associations.".

vec:topologySegmentWrapperItem
        rdf:type      owl:ObjectProperty;
        rdfs:comment  "References the actual item for a Wrapper.";
        rdfs:domain   vec:TopologySegmentWrapper;
        rdfs:range    vec:TopologySegment .
```

## UML to SHACL

In addition to the ontology, a [SHACL](https://www.w3.org/TR/shacl/) schema is derived from the UML model to allow validation of RDF graphs similar to the classic XML schema. 

### Namespace

The namespace of the SHACL Shapes is `http://www.prostep.org/ontologies/ecad/2024/03/vec-shacl#` the recommended prefix is `vecsh`.


### Classes 
For each class a `<ClassName>Shape` is created, similar to the one listed below (shortened for readability). Constraints for cardinalities of associations and target types are generated.

```Turtle
vecsh:ItemVersionShape
        rdf:type         sh:NodeShape;
        rdfs:subClassOf  vecsh:ExtendableElementShape;
        sh:property      [ sh:class     vec:CopyrightInformation;
                           sh:maxCount  1;
                           sh:minCount  0;
                           sh:path      vec:itemVersionCopyrightInformation
                         ];
        #... more properties here ...
        sh:property      [ sh:datatype  xs:string;
                           sh:maxCount  1;
                           sh:minCount  1;
                           sh:path      vec:itemVersionCompanyName
                         ];
        sh:property      [ sh:class     vec:ChangeDescription;
                           sh:minCount  0;
                           sh:path      vec:itemVersionChangeDescription
                         ];
        sh:targetClass   vec:ItemVersion .
```
The constraints above ensure only the target types (objects) of the properties. Without additional constraints, a property could be used on any class as subject. To ensure that all properties are only used on the classes that declare the property in the UML model, for each class `<ClassName>InverseShape` is created, similar to the following one:

```Turtle
vecsh:ItemVersionInverseShape
        rdf:type             sh:NodeShape;
        rdfs:subClassOf      vecsh:ExtendableElementInverseShape;
        sh:class             vec:ItemVersion;
        sh:targetSubjectsOf  vec:itemVersionChangeDescription , vec:itemVersionCompanyName , vec:itemVersionCopyrightInformation 
        #... more properties here ...
        .         
```

#### Ordered / Non-Unique

For Ordered and Non-Unique attributes & associations the constraints are generated accordingly to the pattern described in the UML to OWL mapping section (see above). 

```Turtle
vecsh:OrderedShape  
        rdf:type  sh:NodeShape;
        sh:property     [ sh:datatype  xs:nonNegativeInteger;
                          sh:maxCount  1;
                          sh:minCount  1;
                          sh:path      vec:orderedIndex
                        ];
        sh:targetClass  vec:Ordered .

vecsh:PathShape  
        rdf:type  sh:NodeShape;
        rdfs:subClassOf  vecsh:ExtendableElementShape;
        sh:property      [ sh:class     vec:Ordered , vec:TopologySegmentWrapper;
                           sh:minCount  0;
                           sh:path      vec:pathSegment
                         ];
        sh:targetClass   vec:Path .


vecsh:TopologySegmentWrapperShape
        rdf:type        sh:NodeShape;
        sh:property     [ sh:class     vec:TopologySegment;
                          sh:maxCount  1;
                          sh:minCount  1;
                          sh:path      vec:topologySegmentWrapperItem
                        ];
        sh:targetClass  vec:TopologySegmentWrapper .        

vecsh:CavitySpecificationShape
        rdf:type         sh:NodeShape;
        rdfs:subClassOf  vecsh:SpecificationShape;
        sh:property      [ sh:class     vec:Ordered , vec:NumericalValue;
                           sh:maxCount  2;
                           sh:minCount  0;
                           sh:path      vec:cavitySpecificationAngle
                         ];
        #... more properties here ...
        sh:targetClass   vec:CavitySpecification .

```


### Enumerations

A general `EnumerationShape` is create to ensure that all enumerations define a `vec:enumLiteral`. 
For each enumerations an individual `<ClassName>EnumShape` is created to ensure that only defined literals are used.
For `OpenEnumeration`s the `sh:severity` of such "violations" is lowered to `sh:Info` since the addition of new literals is explicitly allowed, but custom literals should reported nevertheless.

```Turtle
vecsh:EnumerationShape
        rdf:type        sh:NodeShape;
        sh:property     [ sh:datatype  xs:string;
                          sh:maxCount  1;
                          sh:minCount  1;
                          sh:path      vec:enumLiteral
                        ];
        sh:targetClass  vec:Enumeration .

vecsh:ValueDeterminationEnumShape
        rdf:type        sh:NodeShape;
        sh:in           ( vec:ValueDetermination_Calculated vec:ValueDetermination_Measured vec:ValueDetermination_Estimated );
        sh:targetClass  vec:ValueDetermination .

vecsh:SegmentCrossSectionAreaTypeEnumShape
        rdf:type        sh:NodeShape;
        sh:in           ( vec:SegmentCrossSectionAreaType_Reserved vec:SegmentCrossSectionAreaType_Real );
        sh:severity     sh:Info;
        sh:targetClass  vec:SegmentCrossSectionAreaType .        
```