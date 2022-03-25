---
title: Release Notes - Version 2.0.0
linktitle: Release Notes
toc: true
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
category: Release Notes
documentType: "Release Notes"
menu:
  vec-2.0.0:
    weight: 2
    identifier: release-notes
weight: 60
---

## Schema Incompatible Changes

The following issues required schema incompatible changes and forced a major version.

- [KBLFRM-999](https://prostep-ivip.atlassian.net/browse/KBLFRM-999) Missing Traceability between ConnectorHousingRole and ComponentConnector
- [KBLFRM-1054](https://prostep-ivip.atlassian.net/browse/KBLFRM-1054) Redefined PartVersion.preferredUseCase
- [KBLFRM-1017](https://prostep-ivip.atlassian.net/browse/KBLFRM-1017) Change type for DocumentVersion.numberOfSheets to Integer
- [KBLFRM-854](https://prostep-ivip.atlassian.net/browse/KBLFRM-854) Direction-Aware Placement of Grommets

## Bug

- [KBLFRM-1128](https://prostep-ivip.atlassian.net/browse/KBLFRM-1128) TopologyZoneSpecification is missing the inheritance relationship to Specification
- [KBLFRM-1107](https://prostep-ivip.atlassian.net/browse/KBLFRM-1107) MatingPoint documentation still mentions removed MatingSpecification.
- [KBLFRM-1078](https://prostep-ivip.atlassian.net/browse/KBLFRM-1078) FuseType is not documented as OpenEnumeration
- [KBLFRM-1071](https://prostep-ivip.atlassian.net/browse/KBLFRM-1071) Clarified documentation of Hole- [& BoltMountedFixingSpecification.
- [KBLFRM-1017](https://prostep-ivip.atlassian.net/browse/KBLFRM-1017) Change type for DocumentVersion.numberOfSheets to Integer
- [KBLFRM-999](https://prostep-ivip.atlassian.net/browse/KBLFRM-999) Missing Traceability between ConnectorHousingRole and ComponentConnector

## Improvement

- [KBLFRM-1151](https://prostep-ivip.atlassian.net/browse/KBLFRM-1151) Clarified Description of ItemEquivalence
- [KBLFRM-1149](https://prostep-ivip.atlassian.net/browse/KBLFRM-1149) Open Multiplicity (m:n) for Traceability Relations between Wiring and Schematic Layer
- [KBLFRM-1138](https://prostep-ivip.atlassian.net/browse/KBLFRM-1138) Improved CavityAddOn documentation
- [KBLFRM-1113](https://prostep-ivip.atlassian.net/browse/KBLFRM-1113) Differentiation of different signal transmission media of wires \(electrical, optical, ...\)
- [KBLFRM-1112](https://prostep-ivip.atlassian.net/browse/KBLFRM-1112) Switch to semantic versioning
- [KBLFRM-1104](https://prostep-ivip.atlassian.net/browse/KBLFRM-1104) Added Attribute maximumVoltageCompliance for GeneralTechnicalParts
- [KBLFRM-1099](https://prostep-ivip.atlassian.net/browse/KBLFRM-1099) Added ComponentNodeType for PotentialDistributors
- [KBLFRM-1097](https://prostep-ivip.atlassian.net/browse/KBLFRM-1097) Improved Documentation of TopologyNode.matchingPointId
- [KBLFRM-1095](https://prostep-ivip.atlassian.net/browse/KBLFRM-1095) Clarified Documentation for Positioning of Accessories on Wires
- [KBLFRM-1073](https://prostep-ivip.atlassian.net/browse/KBLFRM-1073) Symmetric Properties for BoltTerminalSpecification, RingTerminalSpecification and PotentialDistributorSpecification
- [KBLFRM-1054](https://prostep-ivip.atlassian.net/browse/KBLFRM-1054) Redefined PartVersion.preferredUseCase
- [KBLFRM-1047](https://prostep-ivip.atlassian.net/browse/KBLFRM-1047) Redefinition WireProtectionRole.ProtectionLength and added MaterialLength
- [KBLFRM-1044](https://prostep-ivip.atlassian.net/browse/KBLFRM-1044) Clarified Documentation for "Transformation3D" \(and "Transformation2D"\)
- [KBLFRM-1022](https://prostep-ivip.atlassian.net/browse/KBLFRM-1022) Added "AbrasionResistance" to OpenEnumeration "RobustnessClass"
- [KBLFRM-1020](https://prostep-ivip.atlassian.net/browse/KBLFRM-1020) Same physical Realization for Different Logical Connections 
- [KBLFRM-1018](https://prostep-ivip.atlassian.net/browse/KBLFRM-1018) Clarified documentation of PartVersion.isPreferredPart.
- [KBLFRM-1009](https://prostep-ivip.atlassian.net/browse/KBLFRM-1009) Add identification to BuildingBlockPositioning\[2D/3D\]
- [KBLFRM-1008](https://prostep-ivip.atlassian.net/browse/KBLFRM-1008) Add EffectivityControlKey Ranges to ApplicationConstraint / UsageConstraint
- [KBLFRM-998](https://prostep-ivip.atlassian.net/browse/KBLFRM-998) Add new Literals to OpenEnumeration LocalizedTypedStringType
- [KBLFRM-997](https://prostep-ivip.atlassian.net/browse/KBLFRM-997) Define supplementary parts for a SlotOccurrence
- [KBLFRM-854](https://prostep-ivip.atlassian.net/browse/KBLFRM-854) Direction-Aware Placement of Grommets

## New Feature

- [KBLFRM-1131](https://prostep-ivip.atlassian.net/browse/KBLFRM-1131) Add Attribute sheetSize to SheetOrChapter
- [KBLFRM-1127](https://prostep-ivip.atlassian.net/browse/KBLFRM-1127) Added SegmentConnectionPoints to E/E-Components
- [KBLFRM-1106](https://prostep-ivip.atlassian.net/browse/KBLFRM-1106) Added Support for Variant Conditions, based on Combinations of VariantConfigurations and ApplicationConstraints
- [KBLFRM-1105](https://prostep-ivip.atlassian.net/browse/KBLFRM-1105) Improved Attributes for Tubes
- [KBLFRM-1101](https://prostep-ivip.atlassian.net/browse/KBLFRM-1101) Added detailed Terminal Dimensions
- [KBLFRM-1098](https://prostep-ivip.atlassian.net/browse/KBLFRM-1098) Added SupplementaryParts to the PlacementPoint / PlacementPointReference
- [KBLFRM-1081](https://prostep-ivip.atlassian.net/browse/KBLFRM-1081) GrommetSpecification: New attribute MountingType
- [KBLFRM-1075](https://prostep-ivip.atlassian.net/browse/KBLFRM-1075) Added Attribute boltShape to BoltMountedFixingSpecification
- [KBLFRM-1066](https://prostep-ivip.atlassian.net/browse/KBLFRM-1066) Labeling of Component and Occurrences
- [KBLFRM-1065](https://prostep-ivip.atlassian.net/browse/KBLFRM-1065) New attribute InsulationSpecification.LabelingTechnology & AllowedLabelingTechnology
- [KBLFRM-1055](https://prostep-ivip.atlassian.net/browse/KBLFRM-1055) Additional Geometric Cavity Parameters
- [KBLFRM-1049](https://prostep-ivip.atlassian.net/browse/KBLFRM-1049) Definition of Twisted Pair Untwist in Part Master Data and Usage
- [KBLFRM-1041](https://prostep-ivip.atlassian.net/browse/KBLFRM-1041) Added Insertion Direction and Length for Cavities
- [KBLFRM-1033](https://prostep-ivip.atlassian.net/browse/KBLFRM-1033) Add Geometric Properties for Cavities within ConnectorHousings
- [KBLFRM-1023](https://prostep-ivip.atlassian.net/browse/KBLFRM-1023) Added View Definitions for Net- & ConnectionSpecifications
- [KBLFRM-1061](https://prostep-ivip.atlassian.net/browse/KBLFRM-1061) OpenEnumeration for PowerConsumption.type
- [KBLFRM-1053](https://prostep-ivip.atlassian.net/browse/KBLFRM-1053) OpenEnumeration for PotentialDistributorSpecification.boltType
- [KBLFRM-1052](https://prostep-ivip.atlassian.net/browse/KBLFRM-1052) OpenEnumeration for RingTerminalSpecification.boltNominalSize
- [KBLFRM-1082](https://prostep-ivip.atlassian.net/browse/KBLFRM-1082) OpenEnumeration for RingTerminalSpecification.boltType
- [KBLFRM-1080](https://prostep-ivip.atlassian.net/browse/KBLFRM-1080) OpenEnumeration for GrommetSpecification.grommetType
- [KBLFRM-1079](https://prostep-ivip.atlassian.net/browse/KBLFRM-1079) OpenEnumeration for FittingSpecification.form
- [KBLFRM-1074](https://prostep-ivip.atlassian.net/browse/KBLFRM-1074) OpenEnumeration for BoltMountedFixingSpecification.boltType
- [KBLFRM-1067](https://prostep-ivip.atlassian.net/browse/KBLFRM-1067) OpenEnumeration for MultiFuseSpecification.fuseType
- [KBLFRM-1064](https://prostep-ivip.atlassian.net/browse/KBLFRM-1064) OpenEnumeration for InsulationSpecification.labelIdentificationType
- [KBLFRM-1063](https://prostep-ivip.atlassian.net/browse/KBLFRM-1063) OpenEnumeration for HoleMountedFixingSpecification.holeShape
- [KBLFRM-1062](https://prostep-ivip.atlassian.net/browse/KBLFRM-1062) OpenEnumeration for HoleMountedFixingSpecification.holeType
- [KBLFRM-1035](https://prostep-ivip.atlassian.net/browse/KBLFRM-1035) OpenEnumeration for PartStructureSpecification.Content
- [KBLFRM-1016](https://prostep-ivip.atlassian.net/browse/KBLFRM-1016) OpenEnumeration for DocumentVersion/FileBasedInstruction.dataFormat
- [KBLFRM-1015](https://prostep-ivip.atlassian.net/browse/KBLFRM-1015) OpenEnumeration for DefaultDimension.dimensionType
- [KBLFRM-1014](https://prostep-ivip.atlassian.net/browse/KBLFRM-1014) OpenEnumeration for ConnectionEnd.gender
- [KBLFRM-1013](https://prostep-ivip.atlassian.net/browse/KBLFRM-1013) OpenEnumeration for BoltTerminalSpecification.boltType
- [KBLFRM-1012](https://prostep-ivip.atlassian.net/browse/KBLFRM-1012) OpenEnumeration for BoltTerminalSpecification.boltNominalSize
- [KBLFRM-1006](https://prostep-ivip.atlassian.net/browse/KBLFRM-1006) OpenEnumeration for ConductorSpecification.type
- [KBLFRM-1005](https://prostep-ivip.atlassian.net/browse/KBLFRM-1005) OpenEnumeration for ConductorSpecification.structure
- [KBLFRM-1004](https://prostep-ivip.atlassian.net/browse/KBLFRM-1004) OpenEnumeration for WireGroupSpecification.groupType
- [KBLFRM-1125](https://prostep-ivip.atlassian.net/browse/KBLFRM-1125) OpenEnumeration for VariantCode.codeType
- [KBLFRM-1124](https://prostep-ivip.atlassian.net/browse/KBLFRM-1124) OpenEnumeration for TemperatureInformation.temperatureType
- [KBLFRM-1123](https://prostep-ivip.atlassian.net/browse/KBLFRM-1123) OpenEnumeration for SlotSpecification.layoutType
- [KBLFRM-1122](https://prostep-ivip.atlassian.net/browse/KBLFRM-1122) OpenEnumeration for ShieldSpecification.windingType
