---
title: "Compliance Tests"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
authors: ["becker"]
tags: []
categories: []
date: 2024-09-17
lastmod: 2024-09-17T15:11:41+01:00
draft: false

menu:
  vec-guidelines:
    identifier: compliance-tests
    weight: 19000

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 19000

links:
  - icon_pack: fas
    icon: clipboard-check
    name: VEC Compliance Test Suite    
    url: "compliance-suite.zip"
---
{{% callout note %}}
The definition of the compliance test suite can be downloaded here: [compliance-suite.zip](./compliance-suite.zip)
{{% /callout %}}

A key objective of data exchange standards in general, and the VEC (Vehicle Electric Container) 
standard in particular, is to ensure system interoperability and guarantee the accurate 
interpretation of information. To achieve this, specifications must be as precise as possible, 
with minimal ambiguity. However, informal definitions are often easily overlooked. Compliance 
with the rules can only be ensured through formal definitions, which allow for automated, fast, 
and simple checks across systems.

Current XML schema definitions of the VEC are only effective for verifying the basic syntactic 
structure. They cannot account for more complex rules, dependencies, or logical relationships. 
The compliance tests aim to address this gap. By introducing the VEC ontology, the standard gains 
access to Semantic Web technologies. With these technologies it is possible to formalize previously 
informal aspects of the VEC specification, reducing potential misinterpretations.

This is an ongoing process, with the rules in the validation suite continually adapted and 
expanded. Feedback and suggestions for further rule enhancements are highly encouraged.

## How it Works

The VEC Compliance Test Suite leverages the VEC ontology, which has been published alongside 
the model and XML schema since 2024, and consists of several components.

### Extensions to the VEC Ontologie

The `vec-general-onto.ttl` file defines elements and axioms that extend the VEC ontology derived directly 
from the VEC Model. These definitions primarily aim to simplify rules and queries within the 
compliance test suite. If these extensions prove useful and provide broader benefits, 
they may be incorporated into the official VEC ontology at a later stage.

An example of these extensions is the generalization of all VEC elements that have functional keys 
(see the example below). These definitions ensure that any element with an _identification_ property 
is classified as `vec:Identifiable`. This allows us to create a general rule 
(e.g., for the uniqueness of identifications) for all _identifiable_ elements.


```turtle
vec:Identifiable a owl:Class .

vec:identification
    rdf:type owl:DatatypeProperty ;
    rdfs:domain vec:Identifiable .

vec:abstractSlotSlotNumber
    rdfs:subPropertyOf
        vec:identification .

vec:contactPointIdentification
    rdfs:subPropertyOf
        vec:identification .

....        
```

### Semantic Rules

The `vec-general-shacl.ttl` file defines [SHACL](https://www.w3.org/TR/shacl/)(Shapes Constraint Language) rules that can not be 
derived directly from the UML model of the VEC[^1]. These rules are currently informally specified in the VEC specification or 
Implementation Guidelines. Each rule includes a custom message containing a rule/test case number (e.g., `TC-0001`), which 
corresponds to an identifier found in the [Compliance Rules]({{< relref "#compliance-rules">}}).


```turtle
vecsh:ToleranceShape rdf:type sh:NodeShape ;
    sh:targetClass vec:Tolerance ;
    sh:property
        [
            sh:path vec:toleranceLowerBoundary ;
            sh:lessThanOrEquals vec:toleranceUpperBoundary ;
            sh:message "TC-0001: 'Tolerance.LowerBoundary' must be less than or equals 'UpperBoundary'."@en
        ] .
```

### Queries

The VEC defines several extension points (e.g., custom properties) for addressing individual requirements or system- and 
process-specific data. However, these elements are also prone to misuse. Determining whether a particular extension element has 
been used correctly or incorrectly often requires careful assessment. To assist with this, the Compliance Test Suite includes 
a set of queries that provide information about the extensions used, as well as their context and content. 
These queries allow for quick and easy manual evaluation of how extensions have been used.

### Execution

All components of the Compliance Test Suite can be downloaded via the link at the bottom of this page. 
There are two main ways to execute the Compliance Test Suite:

1. All elements (Ontology Extension, Semantic Rules, and Queries) can be used in any RDF environment that supports the relevant technologies. 
However, this requires the VEC data to be available in an RDF format to validate it within that environment.
2. For easier validation of VEC `XML` data, you can use 4Soft's _VEC RDF Toolkit_, available for free download [here](). 
This tool uses the suite definition provided below, runs it on a set of VEC XML files, and generates an Excel report with the results.


## Compliance Rules

The table below lists all rules currently contained within the Compliance Test Suite. 
The set of rules will be continiously extended, so be sure to revisit frequently.

| #     | Target Class   | Description    | Published   | Updated    |
|-------|----------------|----------------|-------------|------------|
| TC-0001 | {{< vec-class "Tolerance" >}} | `Tolerance.LowerBoundary` must be less than or equals `UpperBoundary` | 18.09.2024 | 18.09.2024 |
| TC-0002 | {{< vec-class "ValueRange" >}} | `ValueRange.Minimum` must be less than or equals `Maximum` | 18.09.2024 | 18.09.2024 |
| TC-0003 | {{< vec-class "PartVersion" >}} | To avoid ambiguity, a `PartVersion` shall be only described by at most one Specification of each type. | 18.09.2024 | 18.09.2024 |
| TC-0004 | {{< vec-class "PartVersion" >}} | If a `PartVersion` is `describedBy` {{<vec-class PartOrUsageRelatedSpecification >}}s there shall be one corresponding to the `PrimaryPartType`. | 18.09.2024 | 18.09.2024 |
| TC-0005 | {{< vec-class "DocumentVersion" >}} | Having multiple `DocumentVersion` with the same `documentNumber` is suspicious, even when the `documentVersion` is different. | 18.09.2024 | 18.09.2024 |
| TC-0006 | {{< vec-class "DocumentVersion" >}} | The `documentNumber` shall not be `/NULL` | 18.09.2024 | 18.09.2024 |
| TC-0007 | {{< vec-class "PartVersion" >}} | The `partNumber` shall not be `/NULL` | 18.09.2024 | 18.09.2024 |
| TC-0008 | `Identifiable` | `identifications` must be unique within a containment. | 18.09.2024 | 18.09.2024 |
| TC-0009 | {{< vec-class "OccurrenceOrUsage" >}} | An `OccurrenceOrUsage` shall define at most on `Role` per specific type. | 18.09.2024 | 18.09.2024 |


[^1]: Rules derived from the UML model are included in the SHACL schema published with each version of the VEC.