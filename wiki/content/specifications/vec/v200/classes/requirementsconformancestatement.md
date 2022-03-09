---
title: RequirementsConformanceStatement
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - RequirementsConformanceStatement
menu_name: vec-2.0.0
---
<p> A <i>RequirementsConformanceStatement</i> states that the <i>PartVersions</i> referenced by the parent <i>RequirementsConformanceSpecification</i> satisfy or do not satisfy the requirements defined in the associated <i>DocumentVersion</i> (via the <i>requirementsSpecification</i> association)<i>.</i>      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | requirements_conformance |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|satisfies | [boolean]({{< relref "boolean.md" >}}) |  | <p> Defines if the <i>describedParts</i> satisfy (satisfy =&#160;true) or explicitly fail (satisfy = false) to conform with the <i>requirementsSpecification</i>.      </p> | [RequirementsConformanceStatement]({{< relref "requirementsconformancestatement.md" >}}) |
|description | [LocalizedString]({{< relref "localizedstring.md" >}}) | 0..* | <p> A free text description / additional information /&#160;comment for the <i>RequirementsConformanceStatement.</i>      </p> | [RequirementsConformanceStatement]({{< relref "requirementsconformancestatement.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [DocumentVersion]({{< relref "documentversion.md" >}}) |  | 1 |  | <p> References the <i>DocumentVersion</i> that contains the requirements to which a conformance statement shall be expressed.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [RequirementsConformanceSpecification]({{< relref "requirementsconformancespecification.md" >}}) | 1 | conformanceStatement | 0..* |  |
