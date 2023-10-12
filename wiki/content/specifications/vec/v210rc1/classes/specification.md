---
title: Specification
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - Specification
menu_name: vec-2.1.0
---
<p>Abstract super-class for all specifications. Every technical information exchanged with the VEC is contained in the different specializations of a specification.   </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [ApplicationConstraintSpecification]({{< relref "applicationconstraintspecification.md" >}}), [AssignmentGroupSpecification]({{< relref "assignmentgroupspecification.md" >}}), [BaselineSpecification]({{< relref "baselinespecification.md" >}}), [BuildingBlockSpecification2D]({{< relref "buildingblockspecification2d.md" >}}), [BuildingBlockSpecification3D]({{< relref "buildingblockspecification3d.md" >}}), [CableLeadThroughSpecification]({{< relref "cableleadthroughspecification.md" >}}), [CavitySpecification]({{< relref "cavityspecification.md" >}}), [CompositionSpecification]({{< relref "compositionspecification.md" >}}), [ConductorSpecification]({{< relref "conductorspecification.md" >}}), [ConfigurationConstraintSpecification]({{< relref "configurationconstraintspecification.md" >}}), [ConnectionSpecification]({{< relref "connectionspecification.md" >}}), [ConnectionViewSpecification]({{< relref "connectionviewspecification.md" >}}), [ContactingSpecification]({{< relref "contactingspecification.md" >}}), [CouplingSpecification]({{< relref "couplingspecification.md" >}}), [DefaultDimensionSpecification]({{< relref "defaultdimensionspecification.md" >}}), [ExternalMappingSpecification]({{< relref "externalmappingspecification.md" >}}), [FillerSpecification]({{< relref "fillerspecification.md" >}}), [FunctionalStructureSpecification]({{< relref "functionalstructurespecification.md" >}}), [HarnessDrawingSpecification2D]({{< relref "harnessdrawingspecification2d.md" >}}), [HarnessGeometrySpecification3D]({{< relref "harnessgeometryspecification3d.md" >}}), [InsulationSpecification]({{< relref "insulationspecification.md" >}}), [MappingSpecification]({{< relref "mappingspecification.md" >}}), [ModuleFamilySpecification]({{< relref "modulefamilyspecification.md" >}}), [ModuleListSpecification]({{< relref "modulelistspecification.md" >}}), [NetSpecification]({{< relref "netspecification.md" >}}), [NetViewSpecification]({{< relref "netviewspecification.md" >}}), [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}), [PartSubstitutionSpecification]({{< relref "partsubstitutionspecification.md" >}}), [PartUsageSpecification]({{< relref "partusagespecification.md" >}}), [PinWireMappingSpecification]({{< relref "pinwiremappingspecification.md" >}}), [PlacementSpecification]({{< relref "placementspecification.md" >}}), [RoutingSpecification]({{< relref "routingspecification.md" >}}), [SignalSpecification]({{< relref "signalspecification.md" >}}), [SlotSpecification]({{< relref "slotspecification.md" >}}), [TerminalPairingSpecification]({{< relref "terminalpairingspecification.md" >}}), [TerminalReceptionSpecification]({{< relref "terminalreceptionspecification.md" >}}), [TopologyBendingRestrictionSpecification]({{< relref "topologybendingrestrictionspecification.md" >}}), [TopologyMappingSpecification]({{< relref "topologymappingspecification.md" >}}), [TopologySpecification]({{< relref "topologyspecification.md" >}}), [TopologyZoneSpecification]({{< relref "topologyzonespecification.md" >}}), [UsageConstraintSpecification]({{< relref "usageconstraintspecification.md" >}}), [UsageNodeSpecification]({{< relref "usagenodespecification.md" >}}), [VariantCodeSpecification]({{< relref "variantcodespecification.md" >}}), [VariantConfigurationSpecification]({{< relref "variantconfigurationspecification.md" >}}), [VariantGroupSpecification]({{< relref "variantgroupspecification.md" >}}), [VariantStructureSpecification]({{< relref "variantstructurespecification.md" >}}), [WireElementSpecification]({{< relref "wireelementspecification.md" >}}), [WireGroupingSpecification]({{< relref "wiregroupingspecification.md" >}}), [WireGroupSpecification]({{< relref "wiregroupspecification.md" >}}), [WireProtectionGroupSpecification]({{< relref "wireprotectiongroupspecification.md" >}}), [WireReceptionSpecification]({{< relref "wirereceptionspecification.md" >}}), [WireTupleSpecification]({{< relref "wiretuplespecification.md" >}}), [WireTupleTerminationSpecification]({{< relref "wiretupleterminationspecification.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |


##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>specification</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "sheetorchapter.md" >}}">SheetOrChapter</a></td>
        <td>0..1</td>
        <td>Specifies the Specifications contained in the SheetOrChapter. All structured, technical information in the VEC is described by such Specifications.</td>
    </tr>
    <tr>
        <td>specification</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "documentversion.md" >}}">DocumentVersion</a></td>
        <td>0..1</td>
        <td>Specifies the Specifications contained in the DocumentVersion. All structured, technical information in the VEC is described by such Specifications.</td>
    </tr>
    </tbody>
</table>



