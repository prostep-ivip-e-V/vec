---
title: Vehicle Electric Container (VEC)
toc: false
date: "2019-05-05T00:00:00+01:00"
draft: false
layout: specs

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1
---
On this page, the resources and documentations for all VEC versions can be found. 

## Release Schema
Which documents are distributed for a VEC version depends on the type of release. The following release types are used and are reflected in the version numbering pattern:

### Major Releases 
Theses releases are normally integrating a significant amount of changes. They can be identified in a change of the first or second digit of the version number (e.g. 1.1 vs. 1.0). These releases are always accompanied by the release of a new version of the VDA Recommendation.  

### Bugfix and Feature Releases 
Bugfix and Feature Releases are published in between the major releases. They are used to allow a timely 
response on feature requests and bug reports, especially from ongoing implementation projects. These releases
can be published more frequently, since such releases have a more lean process.

### Distributed Documents 
For each Version several documents are distributed:

  1. **VDA Recommendation** (only for Major Releases)
  2. An updated **Model Description** (Online and/or as PDF): This description is contained in the VDA Recommendation.
  3. **XML Schema** Files: There are always two schema variants distributed. One variant defining *OpenEnumerations* as String values and a strict variant, where the *OpenEnuermations* are defined as schema restrictions. For more information about the *OpenEnumerations* see the corresponding chapter in the VDA Recommendation.
  4. **Schematron-Schema**: From version 1.1.3 onwards the project group is publishing an additional schematron schema. This schema defines additional constraints that can not be defined in an XML Schema. These constraints are part of the VEC Specification and the compliance with them is mandatory for a valid VEC file. For the usage of the schematron schema see the [specifications/vec/schematronhowto]({{< relref "specifications/vec/schematron-howto" >}}).

#### Implementation Guidelines / Tutorials 
From VEC Version 1.1.3 on, the Implementation Guidelines (a.k.a Tutorials) will no longer be published as a versioned single document, but as a collection of pages in this WIKI for specific topics. The intention of this is to provide tutorials / implementation guidelines for specific topics within a shorter timeframe. The entrypoint for the Implementation Guidlines can be found here: [VEC Implementation Guidelines]({{< relref "guidelines" >}})

