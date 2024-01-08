---
title: Release Notes - Version 2.1.0
linktitle: Release Notes
toc: true
type: specs
date: "2024-01-07"
draft: false
specification: VEC
version: 2.1.0
category: Release Notes
documentType: "Release Notes"
menu:
  vec-2.1.0:
    weight: 2
    identifier: release-notes
weight: 60
---

## Schema Incompatible Changes

This is a minor release, so no schema incompatible changes where made. However, there are deprecated schema elements that will be removed with the next major release. Search XSD-files for `deprecated` annotation.

## Bug

- [KBLFRM-1192](https://prostep-ivip.atlassian.net/browse/KBLFRM-1192) Clarified Documentation that ConductorSpecification.NumberOfStrands should have Type "Integer" instead of "NumericalValue"
- [KBLFRM-1205](https://prostep-ivip.atlassian.net/browse/KBLFRM-1205) Fixed direction of X-Axis in Illustration "Geometric Properties of Connector Housings \(Definitions\)"

## New Feature

- [KBLFRM-977](https://prostep-ivip.atlassian.net/browse/KBLFRM-977) Representation of SignalGraphs within the model
- [KBLFRM-1048](https://prostep-ivip.atlassian.net/browse/KBLFRM-1048) Allow the Definition connected WireProtections
- [KBLFRM-1084](https://prostep-ivip.atlassian.net/browse/KBLFRM-1084) Added Concept of ResourceVersion for Relations to Tools & Machines
- [KBLFRM-1085](https://prostep-ivip.atlassian.net/browse/KBLFRM-1085) Added CrimpDetails for WireReceptions \(Tools, Crimp-Height & Width\)
- [KBLFRM-1152](https://prostep-ivip.atlassian.net/browse/KBLFRM-1152) Added DocumentClassification & ConfidentialityLevel to DocumentVersion
- [KBLFRM-1169](https://prostep-ivip.atlassian.net/browse/KBLFRM-1169) Added Support for UNECE-Codes in Units 
- [KBLFRM-1177](https://prostep-ivip.atlassian.net/browse/KBLFRM-1177) Definition of Crimp Width & Height
- [KBLFRM-1186](https://prostep-ivip.atlassian.net/browse/KBLFRM-1186) Added ConnectHousingCover as Component Kind
- [KBLFRM-1195](https://prostep-ivip.atlassian.net/browse/KBLFRM-1195) Added detailed MaterialComposition to GeneralTechnicalPartSpecification
- [KBLFRM-1199](https://prostep-ivip.atlassian.net/browse/KBLFRM-1199) Refined Definition of WireEnd.PositionOnWire, added Stripping- & CutBackLength
- [KBLFRM-1200](https://prostep-ivip.atlassian.net/browse/KBLFRM-1200) Added CrimpSizes to WireMountingDetail
- [KBLFRM-1202](https://prostep-ivip.atlassian.net/browse/KBLFRM-1202) Added multiple detail parameters for automatic crimp processes
- [KBLFRM-1208](https://prostep-ivip.atlassian.net/browse/KBLFRM-1208) Defined Coordinate System for Terminals and  added WireReception.Rotation
- [KBLFRM-1215](https://prostep-ivip.atlassian.net/browse/KBLFRM-1215) Introduced "immutable-global-iri"-Attribute for every complexType.

## Improvement

- [KBLFRM-1021](https://prostep-ivip.atlassian.net/browse/KBLFRM-1021) Add Hole Concept similar to Bolt Concept for Grounding
- [KBLFRM-1058](https://prostep-ivip.atlassian.net/browse/KBLFRM-1058) Added MinimumDistance to other Elements for TerminalSpecification
- [KBLFRM-1103](https://prostep-ivip.atlassian.net/browse/KBLFRM-1103) Added voltageRating to EEComponentSpecification
- [KBLFRM-1111](https://prostep-ivip.atlassian.net/browse/KBLFRM-1111) Introduced Inheritance Hierarchy for Roles consistent with corresponding PartOrUsageRelatedSpecifications
- [KBLFRM-1140](https://prostep-ivip.atlassian.net/browse/KBLFRM-1140) Added WireLengthType "Functional" for enforced Wire Length
- [KBLFRM-1147](https://prostep-ivip.atlassian.net/browse/KBLFRM-1147) Improved representation of TPA & CPA
- [KBLFRM-1172](https://prostep-ivip.atlassian.net/browse/KBLFRM-1172) Added AliasIdentificationTypes Diagnostic- and SoftwareAddress and added AliasIds to multiple elements.
- [KBLFRM-1173](https://prostep-ivip.atlassian.net/browse/KBLFRM-1173) Clarification of GeneratingSystemName and -Version
- [KBLFRM-1175](https://prostep-ivip.atlassian.net/browse/KBLFRM-1175) Added TubeRoles with Attributes for Slits
- [KBLFRM-1176](https://prostep-ivip.atlassian.net/browse/KBLFRM-1176) Added pullOffForce for Crimp-Definitions
- [KBLFRM-1181](https://prostep-ivip.atlassian.net/browse/KBLFRM-1181) Added Support for Spot- & CrossTapes
- [KBLFRM-1188](https://prostep-ivip.atlassian.net/browse/KBLFRM-1188) More Elements to inherit ExtendableElement
- [KBLFRM-1193](https://prostep-ivip.atlassian.net/browse/KBLFRM-1193) Clarified the Interpretation of the Boundaries in Tolerances
- [KBLFRM-1194](https://prostep-ivip.atlassian.net/browse/KBLFRM-1194) Added "ProcessingInstruction" to OpenEnumeration "DocumentType"
- [KBLFRM-1196](https://prostep-ivip.atlassian.net/browse/KBLFRM-1196) OpenEnum PinComponentType new Literal PowerDistributionLimited for eFuses
- [KBLFRM-1197](https://prostep-ivip.atlassian.net/browse/KBLFRM-1197) Fixed the wrong data type for "OpticalTissueDensity", renamed to OpticalCoverage.
- [KBLFRM-1198](https://prostep-ivip.atlassian.net/browse/KBLFRM-1198) Added ArcDegree, ArcMinutes, ArcSeconds as OtherUnit.
- [KBLFRM-1203](https://prostep-ivip.atlassian.net/browse/KBLFRM-1203) Clarified Documentation for RobustnessClassReferenceSystem ISO 6722
- [KBLFRM-1207](https://prostep-ivip.atlassian.net/browse/KBLFRM-1207) Added "MatingInterface" to OpenEnumeration "DocumentType"
- [KBLFRM-1209](https://prostep-ivip.atlassian.net/browse/KBLFRM-1209) Added TestingPullOutForce to TerminalReceptionSpecification
- [KBLFRM-1210](https://prostep-ivip.atlassian.net/browse/KBLFRM-1210) Added MaximumInsertionForce to PluggableTerminalSpecification
- [KBLFRM-1211](https://prostep-ivip.atlassian.net/browse/KBLFRM-1211) Ambiguous CavityMapping for E/E-Components
- [KBLFRM-1217](https://prostep-ivip.atlassian.net/browse/KBLFRM-1217) Improved Documentation for Tranformation2D/3D
- [KBLFRM-1221](https://prostep-ivip.atlassian.net/browse/KBLFRM-1221) Corrected casing of Enum-Literals in Documentation
- [KBLFRM-1226](https://prostep-ivip.atlassian.net/browse/KBLFRM-1226) New DocumentType "SchematicProject"