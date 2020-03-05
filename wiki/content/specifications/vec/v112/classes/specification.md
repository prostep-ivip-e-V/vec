---
title: Specification
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - Specification
menu_name: vec-1.1.2
---
<p>Abstract super-class for all specifications. Every technical information exchanged with the VEC is contained in the different specializations of a specification.   </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [BuildingBlockSpecification2D]({{< relref "buildingblockspecification2d.md" >}}), [BuildingBlockSpecification3D]({{< relref "buildingblockspecification3d.md" >}}), [CavitySpecification]({{< relref "cavityspecification.md" >}}), [CompatibilitySpecification]({{< relref "compatibilityspecification.md" >}}), [CompositionSpecification]({{< relref "compositionspecification.md" >}}), [ConductorSpecification]({{< relref "conductorspecification.md" >}}), [ConnectionSpecification]({{< relref "connectionspecification.md" >}}), [ContactingSpecification]({{< relref "contactingspecification.md" >}}), [ContactSystemSpecification]({{< relref "contactsystemspecification.md" >}}), [CouplingSpecification]({{< relref "couplingspecification.md" >}}), [DefaultDimensionSpecification]({{< relref "defaultdimensionspecification.md" >}}), [ExternalMappingSpecification]({{< relref "externalmappingspecification.md" >}}), [FillerSpecification]({{< relref "fillerspecification.md" >}}), [HarnessDrawingSpecification2D]({{< relref "harnessdrawingspecification2d.md" >}}), [HarnessGeometrySpecification3D]({{< relref "harnessgeometryspecification3d.md" >}}), [InsulationSpecification]({{< relref "insulationspecification.md" >}}), [MappingSpecification]({{< relref "mappingspecification.md" >}}), [ModuleFamilySpecification]({{< relref "modulefamilyspecification.md" >}}), [ModuleListSpecification]({{< relref "modulelistspecification.md" >}}), [NetSpecification]({{< relref "netspecification.md" >}}), [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}), [PartSubstitutionSpecification]({{< relref "partsubstitutionspecification.md" >}}), [PartUsageSpecification]({{< relref "partusagespecification.md" >}}), [PlacementSpecification]({{< relref "placementspecification.md" >}}), [RoutingSpecification]({{< relref "routingspecification.md" >}}), [SignalSpecification]({{< relref "signalspecification.md" >}}), [SlotSpecification]({{< relref "slotspecification.md" >}}), [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}), [TopologySpecification]({{< relref "topologyspecification.md" >}}), [UsageConstraintSpecification]({{< relref "usageconstraintspecification.md" >}}), [UsageNodeSpecification]({{< relref "usagenodespecification.md" >}}), [VariantCodeSpecification]({{< relref "variantcodespecification.md" >}}), [VariantConfigurationSpecification]({{< relref "variantconfigurationspecification.md" >}}), [VariantGroupSpecification]({{< relref "variantgroupspecification.md" >}}), [WireElementSpecification]({{< relref "wireelementspecification.md" >}}), [WireGroupingSpecification]({{< relref "wiregroupingspecification.md" >}}), [WireGroupSpecification]({{< relref "wiregroupspecification.md" >}}), [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [DocumentVersion]({{< relref "documentversion.md" >}}) | 0..1 | specification | 0..* | Specifies the Specifications contained in the DocumentVersion. All structured, technical information in the VEC is described by such Specifications. |
| [SheetOrChapter]({{< relref "sheetorchapter.md" >}}) | 0..1 | specification | 0..* | Specifies the Specifications contained in the SheetOrChapter. All structured, technical information in the VEC is described by such Specifications. |
