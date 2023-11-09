---
title: VEC Version 2.1.0-RC1
linktitle: Overview
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
menu:
  vec-2.1.0:
    identifier: index    
    weight: 1
links:
  - icon_pack: fas
    icon: file-pdf
    name: PSI21 prostep ivip Recommendation VEC V1.2 (last published June 2020 with VEC Schema Version 1.2.0)
    url: https://www.prostep.org/shop/detail?ai%5Baction%5D=detail&ai%5Bcontroller%5D=Catalog&ai%5Bd_name%5D=psi_21&ai%5Bd_pos%5D=
  - icon_pack: far
    icon: folder-open
    name: VEC Online Model Description
  - icon_pack: fas
    icon: shipping-fast
    name: Release Notes
    url: "release-notes"
  - icon_pack: far
    icon: file-code
    name: vec_2.1.0-RC1.xsd
    url: "vec_2.1.0-RC1.xsd"
  - icon_pack: far
    icon: file-code
    name: vec_2.1.0-strict-RC1.xsd
    url: "vec_2.1.0-strict-RC1.xsd"
  - icon_pack: far
    icon: file-code
    name: vec_2.1.0-ud-RC1.xsd (undocumented version)
    url: "vec_2.1.0-ud-RC1.xsd"
  - icon_pack: far
    icon: file-code
    name: vec_2.1.0-ud-strict-RC1.xsd (undocumented version)
    url: "vec_2.1.0-ud-strict-RC1.xsd"    
weight: 1
---

{{% callout warning %}}
This is a Release Candidate for VEC 2.1.0. It can be replaced with a newer version at any time. This version should be used for review, testing and migration conception.
{{% /callout %}}

Detailed description here will follow with the official release.
<!--more-->

 The provisional release notes below. Not all issued listed in the release content are already resolved.

# Release notes - VEC 2.1.0-RC1

### Bug

[KBLFRM-1192](https://prostep-ivip.atlassian.net/browse/KBLFRM-1192) Clarified Documentation that ConductorSpecification.NumberOfStrands should have Type "Integer" instead of "NumericalValue"

[KBLFRM-1205](https://prostep-ivip.atlassian.net/browse/KBLFRM-1205) Fixed direction of X-Axis in Illustration "Geometric Properties of Connector Housings \(Definitions\)"

### New Feature

[KBLFRM-1058](https://prostep-ivip.atlassian.net/browse/KBLFRM-1058) Added MinimumDistance to TerminalSpecification

[KBLFRM-1084](https://prostep-ivip.atlassian.net/browse/KBLFRM-1084) Added Concept of ResourceVersion for Relations to Tools & Machines

[KBLFRM-1085](https://prostep-ivip.atlassian.net/browse/KBLFRM-1085) Added CrimpDetails for WireReceptions \(Tools, Crimp-Height & Width\)

[KBLFRM-1147](https://prostep-ivip.atlassian.net/browse/KBLFRM-1147) Differenziertere Abbildung der Sekundärverriegelung notwendig

[KBLFRM-1152](https://prostep-ivip.atlassian.net/browse/KBLFRM-1152) Added DocumentClassification & ConfidentialityLevel to DocumentVersion

[KBLFRM-1169](https://prostep-ivip.atlassian.net/browse/KBLFRM-1169) Added Support in Units for UNECE-Codes

[KBLFRM-1172](https://prostep-ivip.atlassian.net/browse/KBLFRM-1172) Abbildung von Diagnose-Adressen auf E-Komponenten

[KBLFRM-1181](https://prostep-ivip.atlassian.net/browse/KBLFRM-1181) Added Support for Spot- & CrossTapes

[KBLFRM-1186](https://prostep-ivip.atlassian.net/browse/KBLFRM-1186) Spezifikation für die Verwendbarkeit als Schutz-Cover?

[KBLFRM-1208](https://prostep-ivip.atlassian.net/browse/KBLFRM-1208) Angabe der Orientierung und Koordinaten für die Primärverrastung eines Terminals

[KBLFRM-1209](https://prostep-ivip.atlassian.net/browse/KBLFRM-1209) Added TestingPullOutForce to TerminalReceptionSpecification

[KBLFRM-1210](https://prostep-ivip.atlassian.net/browse/KBLFRM-1210) Added MaximumInsertionForce to PluggableTerminalSpecification

[KBLFRM-1215](https://prostep-ivip.atlassian.net/browse/KBLFRM-1215) Einführung eines Konzepts zur global eindeutigen Identifizierung von VEC-Objekten

### Improvement

[KBLFRM-1021](https://prostep-ivip.atlassian.net/browse/KBLFRM-1021) Add Hole Concept similar to Bolt Concept for Grounding

[KBLFRM-1048](https://prostep-ivip.atlassian.net/browse/KBLFRM-1048) Allow the Definition connected WireProtections

[KBLFRM-1103](https://prostep-ivip.atlassian.net/browse/KBLFRM-1103) Attribute für Sicherungen

[KBLFRM-1111](https://prostep-ivip.atlassian.net/browse/KBLFRM-1111) Introduced Inheritance Hierarchy for Roles consistent with corresponding PartOrUsageRelatedSpecifications

[KBLFRM-1140](https://prostep-ivip.atlassian.net/browse/KBLFRM-1140) Added WireLengthType "Functional" for enforced Wire Length

[KBLFRM-1173](https://prostep-ivip.atlassian.net/browse/KBLFRM-1173) Clarification of GeneratingSystemName and -Version

[KBLFRM-1175](https://prostep-ivip.atlassian.net/browse/KBLFRM-1175) Added TubeRoles with Attributes for Slits

[KBLFRM-1176](https://prostep-ivip.atlassian.net/browse/KBLFRM-1176) Added pullOffForce for Crimp-Definitions

[KBLFRM-1177](https://prostep-ivip.atlassian.net/browse/KBLFRM-1177) Definition des Crimp-Bereichs \(Höhe & Breite\)

[KBLFRM-1188](https://prostep-ivip.atlassian.net/browse/KBLFRM-1188) More Elements to inherit ExtendableElement

[KBLFRM-1193](https://prostep-ivip.atlassian.net/browse/KBLFRM-1193) Clarified the Interpretation of the Boundaries in Tolerances

[KBLFRM-1194](https://prostep-ivip.atlassian.net/browse/KBLFRM-1194) Added "ProcessingInstruction" to OpenEnumeration "DocumentType"

[KBLFRM-1195](https://prostep-ivip.atlassian.net/browse/KBLFRM-1195) Added detailed MaterialComposition to GeneralTechnicalPartSpecification

[KBLFRM-1196](https://prostep-ivip.atlassian.net/browse/KBLFRM-1196) OpenEnum PinComponentType new Literal PowerDistributionLimited for eFuses

[KBLFRM-1197](https://prostep-ivip.atlassian.net/browse/KBLFRM-1197) Fixed the wrong data type for "OpticalTissueDensity", renamed to OpticalCoverage.

[KBLFRM-1198](https://prostep-ivip.atlassian.net/browse/KBLFRM-1198) Added ArcDegree, ArcMinutes, ArcSeconds as OtherUnit.

[KBLFRM-1199](https://prostep-ivip.atlassian.net/browse/KBLFRM-1199) Refined Definition of WireEnd.PositionOnWire, added Stripping- & CutBackLength

[KBLFRM-1200](https://prostep-ivip.atlassian.net/browse/KBLFRM-1200) Added CrimpSizes to WireMountingDetail

[KBLFRM-1202](https://prostep-ivip.atlassian.net/browse/KBLFRM-1202) Added multiple detail parameters for automatic crimp processes

[KBLFRM-1203](https://prostep-ivip.atlassian.net/browse/KBLFRM-1203) Enum-Werte für RobustnessClassReferenceSystem überprüfen

[KBLFRM-1207](https://prostep-ivip.atlassian.net/browse/KBLFRM-1207) Added "MatingInterface" to OpenEnumeration "DocumentType"

[KBLFRM-1211](https://prostep-ivip.atlassian.net/browse/KBLFRM-1211) Ambiguous CavityMapping for E/E-Components
