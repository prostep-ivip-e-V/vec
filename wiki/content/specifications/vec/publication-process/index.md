---
title: "Publication Process"
subtitle: ""
summary: ""
authors: [becker]
tags: []
toc: true
categories: []
date: 2020-03-06T10:00:00+01:00
date: 2020-03-06T10:00:00+01:00
featured: false
draft: false
profile: false
weight: 50
---

{{% callout info %}}
The information described here applies to all future publications of the VEC (Schema & Model Version > 1.2.0 and Recommendation Document > 3rd Edition).
{{% /callout %}}

Three bundles of information are provided for the VEC, both of them have a slightly different publication and release process:

- VEC Model and derived Artifacts
- Implementation Guidelines
- prostep ivip and / or VDA Recommendation

## VEC Model & XML Schemas

The aim is to be able to provide features, improvements, bug fixes and extensions for the VEC as quickly as possible and at the same time ensure the stability of the standard.
Therefore, as of version 1.2.1, _semantic versioning_ is applied to the VEC Model and derivced artifacts as far as possible and reasonable.
The basic concept of semantic versioning is explained in the quote from the [Semantic Versioning Specification](https://semver.org):

> Given a version number MAJOR.MINOR.PATCH, increment the:
>
> - MAJOR version when you make incompatible API changes,
> - MINOR version when you add functionality in a backwards compatible manner, and
> - PATCH version when you make backwards compatible bug fixes.
>
> Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.

In the application to VEC, `API` is equivalent to `schema` or `model`. As a result, schema compatibility should be directly apparent from the version number.

For each version, the following artifacts are published:

### Model Documentation

An updated documentation of the model provided as Online Documentation in the ECAD-WIKI.

### XML Schema

XML Schema files which are available in different variants:

- **strict vs. non-strict**: The _non-strict_ schema variant defines _OpenEnumerations_ as `xs:string` values. In the _strict_ schema variant _OpenEnumerations_ are defined as schema restrictions. For more information about the _OpenEnumerations_ see the corresponding chapter in the VDA Recommendation. The _strict_ schema variant carries the suffix `-strict` in the file name of the schema.
- **documented vs. undocumented** (since VEC 1.1.3): For an improved usability of the schema, the model documentation (description of classes and attributes) is embedded in the schema files. For use cases where the size of the schema file matters, we provide variants of the schema files without embedded documentation. Those are marked with the suffix `-ud` for "undocumented".

The mapping of the model to XML Schema is described in "{{<vec-diagram "xml-representation-of-the-model/mapping-of-the-vec-model-to-xml-schema-definition-xsd" >}}".

### RDF Data Model / Ontology

A [RDF](https://www.w3.org/TR/rdf11-primer/) representation of the model consisting of a [RDFS](https://www.w3.org/TR/rdf-schema/) / [OWL2](https://www.w3.org/TR/owl2-overview/) ontology and [SHACL](https://www.w3.org/TR/shacl/) Shapes Graph. 

The mapping of the model to RDF is described [here]({{< relref "../guidelines/general/rdf-owl/">}}).

### XMI

The XMI file for the UML metamodel of the VEC. The XML Metadata Interchange (XMI) is an Object Management Group (OMG) standard for exchanging metadata information via Extensible Markup Language (XML)

The most common use of XMI is as an interchange format for UML models, although it can also be used for serialization of models of other languages (metamodels) [^1].

[^1]: See [XML Metadata Interchange](https://en.wikipedia.org/wiki/XML_Metadata_Interchange)

Magic Draw 2022x was used to generate the XMI files, which is XMI V2.4.


## Implementation Guidelines 

The Implementation Guidelines are defining the application of the information model for specific use cases. They are independant from a specific VEC version and are published continiously [here]({{<relref "../guidelines">}}).

## prostep ivip & VDA Recommendations

Not every new version of the VEC Model & XML Schema is backed by a new recommendation document. Normally, every few years there is a publication of a new recommendation.
This usually subsumes all features that have been added since the last release. New recommendations are published in particular when new use cases have been added or certain areas have undergone a fundamental revision. The Recommendation contains the model description which is effective at the time of publication.

The publication of new recommendations is deliberately decoupled from the versioning scheme of the model or the XML schema. The designation of the version numbers / identifiers of the recommendation is subject to the respective publishing organization.

## Release Process till Oktober 2021 (deprecated)

{{% callout info %}}
The information described here applies to all publications of the VEC until VEC Version V1.2.0 (Deprecated) and VEC Recommendation 3rd Edition.
{{% /callout %}}

Publications of the VEC follow a defined pattern. Which documents are distributed for a VEC version depends on the type of release. The following release types are used. The type of release is reflected in the version numbering pattern:

### Release Types

#### Major Releases

Theses releases are normally integrating a significant amount of changes. They can be identified in a change of the first or second digit of the version number (e.g. 1.1 vs. 1.0). These releases are always accompanied by the release of a new version of the recommendation document.

#### Bugfix and Feature Releases

Bugfix and Feature Releases are published in between the major releases. They are used to allow a timely
response on feature requests and bug reports, especially from ongoing implementation projects. These releases
can be published more frequently, since such releases have a more lean process.

### Distributed Artifacts

For each version several artifacts are distributed:

1. **VDA Recommendation** and / or **prostep ivip Recommendation** (only for Major Releases)
2. An updated **Model Description** (Online and/or as PDF): This description is contained in the VDA Recommendation.
3. **XML Schema** Files which are available in different variants:
   - **strict vs. non-strict**: The _non-strict_ schema variant defines _OpenEnumerations_ as `xs:string` values. In the _strict_ schema variant _OpenEnumerations_ are defined as schema restrictions. For more information about the _OpenEnumerations_ see the corresponding chapter in the VDA Recommendation. The _strict_ schema variant carries the suffix `-strict` in the file name of the schema.
   - **documented vs. undocumented** (since VEC 1.1.3): For an improved usability of the schema, the model documentation (description of classes and attributes) is embedded in the schema files. For use cases where the size of the schema file matters, we provide variants of the schema files without embedded documentation. Those are marked with the suffix `-ud` for "undocumented".
4. ~~**Schematron-Schema**~~: Version 1.1.3 was published together with a schematron schema. On the basis of the findings in this "beta"-phase, this approach will not be pursued further. However, it is undeniable that additional semantic rules apply in addition to pure syntactic correctness (checked by the schema). Currently we are looking for appropriate solutions to address this requirement in a way that is suitable for an open industry standard. Reasons for the rejection of the schematron approach were among others:
   - Definition of advanced rules with xpath based on a complex model is cumbersome, hard to maintain and not self descriptive for users of the schema.
   - Insufficient market penetration of the required technology (schema aware XSLT 2 processors).
   - Performance of the base technology XSLT is poor for XML files with the size seen in todays VEC implementations.

### Implementation Guidelines / Tutorials

From VEC Version 1.1.3 on, the Implementation Guidelines (a.k.a Tutorials) will no longer be published as a versioned single document, but as a collection of pages for specific topics in this WIKI. The intention of this is to provide tutorials / implementation guidelines for specific topics within a shorter timeframe. The entrypoint for the Implementation Guidlines can be found here: [VEC Implementation Guidelines]({{< relref "../guidelines" >}})
