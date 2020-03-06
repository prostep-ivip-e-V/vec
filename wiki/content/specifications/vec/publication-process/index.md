---
title: "Publication Process"
subtitle: ""
summary: ""
authors: [becker]
tags: []
categories: []
date: 2020-03-06T10:00:00+01:00
date: 2020-03-06T10:00:00+01:00
featured: false
draft: false
profile: false
weight: 50
---
Publications of the VEC follow a defined pattern. Which documents are distributed for a VEC version depends on the type of release. The following release types are used. The type of release is reflected in the version numbering pattern:

## Release Types

### Major Releases 
Theses releases are normally integrating a significant amount of changes. They can be identified in a change of the first or second digit of the version number (e.g. 1.1 vs. 1.0). These releases are always accompanied by the release of a new version of the recommendation document.  

### Bugfix and Feature Releases 
Bugfix and Feature Releases are published in between the major releases. They are used to allow a timely 
response on feature requests and bug reports, especially from ongoing implementation projects. These releases
can be published more frequently, since such releases have a more lean process.

## Distributed Artefacts 
For each version several artefacts are distributed:

  1. **VDA Recommendation** and / or **prostep ivip Recommendation** (only for Major Releases)
  2. An updated **Model Description** (Online and/or as PDF): This description is contained in the VDA Recommendation.
  3. **XML Schema** Files which are available in different variants:
     * **strict vs. non-strict**: The _non-strict_ schema variant defines _OpenEnumerations_ as `xs:string` values. In the _strict_ schema variant _OpenEnumerations_ are defined as schema restrictions. For more information about the *OpenEnumerations* see the corresponding chapter in the VDA Recommendation. The _strict_ schema variant carries the suffix `-strict` in the file name of the schema.
     * **documented vs. undocumented** (since VEC 1.1.3): For an improved usability of the schema, the model documentation (description of classes and attributes) is embedded in the schema files. For use cases where the size of the schema file matters, we provide variants of the schema files without embedded documentation. Those are marked with the suffix `-ud` for "undocumented". 
  4. ~~**Schematron-Schema**~~: Version 1.1.3 was published together with a schematron schema. On the basis of the findings in this "beta"-phase, this approach will not be pursued further. However, it is undeniable that additional semantic rules apply in addition to pure syntactic correctness (checked by the schema). Currently we are looking for appropriate solutions to address this requirement in a way that is suitable for an open industry standard. Reasons for the rejection of the schematron approach were among others:
     * Definition of advanced rules with xpath based on a complex model is cumbersome, hard to maintain and not self descriptive for users of the schema.
     * Insufficient market penetration of the required technology (schema aware XSLT 2 processors).
     * Performance of the base technology XSLT is poor for XML files with the size seen in todays VEC implementations.

## Implementation Guidelines / Tutorials 
From VEC Version 1.1.3 on, the Implementation Guidelines (a.k.a Tutorials) will no longer be published as a versioned single document, but as a collection of pages for specific topics in this WIKI. The intention of this is to provide tutorials / implementation guidelines for specific topics within a shorter timeframe. The entrypoint for the Implementation Guidlines can be found here: [VEC Implementation Guidelines]({{< relref "../guidelines" >}})

