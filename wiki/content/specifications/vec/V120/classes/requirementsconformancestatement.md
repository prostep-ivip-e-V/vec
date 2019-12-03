---
title: RequirementsConformanceStatement
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> A <i>RequirementsConformanceStatement</i> states that the <i>PartVersions</i> referenced by the parent <i>RequirementsConformanceSpecification</i> satisfy or do not satisfy the requirements defined in the associated <i>DocumentVersion</i> (via the <i>requirementsSpecification</i> association)<i>.</i>      </p>      <p> <i>&#160;</i>      </p>  </body> </html>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | requirements_conformance |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |
| **Usage in Diagrams**   | [Conformance to Requirements]({{< relref "../description-of-components/conformance-to-requirements" >}})<br/>  |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|satisfies | [boolean]({{< relref "boolean.md" >}}) |  | <html>   <head>     </head>   <body> Defines if the <i>describedParts</i> satisfy (satisfy =&#160;true) or explicitly fail (satisfy = false) to conform with the <i>requirementsSpecification</i>.</body> </html> | [RequirementsConformanceStatement]({{< relref "requirementsconformancestatement.md" >}}) |
|description | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <html>   <head>     </head>   <body> A free text description / additional information /&#160;comment for the <i>RequirementsConformanceStatement.</i></body> </html> | [RequirementsConformanceStatement]({{< relref "requirementsconformancestatement.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [DocumentVersion]({{< relref "documentversion.md" >}}) |  | 1 |  | <html>   <head>     </head>   <body> References the <i>DocumentVersion</i> that contains the requirements to which a conformance statement shall be expressed.</body> </html> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [RequirementsConformanceSpecification]({{< relref "requirementsconformancespecification.md" >}}) | 1 | conformanceStatement | 0..* |  |
