---
title: Release Notes - Version 2.2.0
linktitle: Release Notes
toc: true
type: specs
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
category: Release Notes
documentType: "Release Notes"
menu:
  vec-2.2.0:
    weight: 2
    identifier: release-notes
weight: 60
---
**Issues closed:** 38



**Notes:** 

With the release of version 2.2.0 we also provide for the first time a full documentation of the model in printable format and an annotated diff document. This is to support easier review / readability for first time user.

- VEC-Full-Model-Documentation-V2.2.0.pdf is a clean snapshot of version 2.2.0.
- VEC-Full-Model-Documentation-V2.2.0-diff.docx is a comparison between versions 2.1.0 and 2.2.0, highlighting all changes using Word’s track changes feature. 

In some cases, the diff documentation may incorrectly highlight elements in the _Incoming Associations_ table as removed and re-added. This is due to the fact that the ordering of entries in this table is not fully deterministic in all situations.

## Schema Incompatible Changes

This is a minor release, so no schema incompatible changes where made. However, there are deprecated schema elements that will be removed with the next major release. Search XSD-files for `deprecated` annotation.

## ✨ New & Extended Concepts

- Introduced `MultiDimensionalValue` as general concept and `FuseCharacteristics` specifically ([#1123](https://github.com/prostep-ivip-e-V/vec/issues/1123))
- Added capability to represent quantities other than _1 piece_ to `OccurrenceOrUsage` ([#1113](https://github.com/prostep-ivip-e-V/vec/issues/1113))
- Added a defintion for coordinate systems of fixings and dimensions ([#1112](https://github.com/prostep-ivip-e-V/vec/issues/1112))
- Added TerminalProtection as new component type (`Specification` & `Role`) ([#1105](https://github.com/prostep-ivip-e-V/vec/issues/1105))
- Introduced stereotype `StructuredPrimitive` and OCL constraint for simple types ([#1102](https://github.com/prostep-ivip-e-V/vec/issues/1102))
- Introduced CableSeal and CableSealPlug ([#1087](https://github.com/prostep-ivip-e-V/vec/issues/1087))
- Introduced General Concept for Information Reuse and traceability ([#1081](https://github.com/prostep-ivip-e-V/vec/issues/1081))
- Added support for Coating of WireEnds ([#1066](https://github.com/prostep-ivip-e-V/vec/issues/1066))
- Added ReferenceSurfaceDefinition to ConnectorHousingSpecification ([#937](https://github.com/prostep-ivip-e-V/vec/issues/937))
- Generic Concept for internal connectivity of E/E components ([#915](https://github.com/prostep-ivip-e-V/vec/issues/915))

## 🛠 Enhancements & Model Changes

- PartSubstitutionSpecification now allowed for PartVersions as well ([#1135](https://github.com/prostep-ivip-e-V/vec/issues/1135))
- Adopted `PartNumberType` from KBL ([#1131](https://github.com/prostep-ivip-e-V/vec/issues/1131))
- Added mating cycles to `TerminalPairing` and made it less restrictive ([#1129](https://github.com/prostep-ivip-e-V/vec/issues/1129))
- Improved `TerminalCurrentInformation` ([#1128](https://github.com/prostep-ivip-e-V/vec/issues/1128))
- Added determinationType to `PinCurrentInformation` & `PinVoltageInformation` ([#1125](https://github.com/prostep-ivip-e-V/vec/issues/1125))
- Improved "pullOffForce" for `CrimpDetail` and `WireMountingDetail` ([#1122](https://github.com/prostep-ivip-e-V/vec/issues/1122))
-` WireElementSpecification.SubWireElement`s should be non-unique ([#1116](https://github.com/prostep-ivip-e-V/vec/issues/1116))
- Added `CrimpBarrelType` to `WireReceptionSpecification` ([#1108](https://github.com/prostep-ivip-e-V/vec/issues/1108))
- Added `WireReceptionType`s for uni- & multiaxial Shield Crimps ([#1104](https://github.com/prostep-ivip-e-V/vec/issues/1104))
- Added `absoluteSealPosition` for the positioning of CavitySeals on the Wire ([#1101](https://github.com/prostep-ivip-e-V/vec/issues/1101))
- Added definition of partial pull-off for `WireEnd` stripping ([#1100](https://github.com/prostep-ivip-e-V/vec/issues/1100))
- Added ordering and layering to definition of multi-core wires ([#1098](https://github.com/prostep-ivip-e-V/vec/issues/1098))
- Added Attribute TransmissionMedium to Conductor- & TerminalSpecification ([#1097](https://github.com/prostep-ivip-e-V/vec/issues/1097))
- Reverted `ConductorSpecification.NumberOfStrands` should have Type `Integer` instead of `NumericalValue` ([#1071](https://github.com/prostep-ivip-e-V/vec/issues/1071))
- Refinement of the Logic within ModuleFamilies ([#1069](https://github.com/prostep-ivip-e-V/vec/issues/1069), [#894](https://github.com/prostep-ivip-e-V/vec/issues/894))
- Improved Joining Methods for Terminals and Wires (WireReceptionType in Part Masster and Usage) ([#1018](https://github.com/prostep-ivip-e-V/vec/issues/1018))
- Added Attribute voltageComplianceLevel for GeneralTechnicalParts ([#969](https://github.com/prostep-ivip-e-V/vec/issues/969))
- Improved cavity mapping for modular connectors ([#957](https://github.com/prostep-ivip-e-V/vec/issues/957))
- Added attribute "changeRestriction" to ItemVersion ([#841](https://github.com/prostep-ivip-e-V/vec/issues/841))

## 🔁 Deprecations / Replacements / Consolidations

- Consolidated part master data for wires, deprecated redundant associations ([#1121](https://github.com/prostep-ivip-e-V/vec/issues/1121))
- Added `ApplicationType` to `GeneralTechnicalPartSpecification` ([#1115](https://github.com/prostep-ivip-e-V/vec/issues/1115))
- Consolidated different VoltageRange and VoltageRatings ([#1089](https://github.com/prostep-ivip-e-V/vec/issues/1089))
- Deprecated MultiCavitySeal & -Plug in favour of CableSeal and CableSealPlug ([#1087](https://github.com/prostep-ivip-e-V/vec/issues/1087))

## 📖 Documentation Improvements

- Improved documentation of `AbstractSlot`, `Slot` & `ModularSlot` ([#1136](https://github.com/prostep-ivip-e-V/vec/issues/1136))
- Improved documentation of diagram "Placement and Dimensions" ([#1133](https://github.com/prostep-ivip-e-V/vec/issues/1133))
- Improved visual definition of terminal dimensions ([#1103](https://github.com/prostep-ivip-e-V/vec/issues/1103))
- Moved Chapter "XML Representation of the Model" from model documentation into Impl.-Guidelines. ([#1096](https://github.com/prostep-ivip-e-V/vec/issues/1096))
- Clarified documentation for path-format of file names ([#1095](https://github.com/prostep-ivip-e-V/vec/issues/1095))
