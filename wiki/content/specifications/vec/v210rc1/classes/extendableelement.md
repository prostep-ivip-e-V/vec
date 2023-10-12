---
title: ExtendableElement
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - ExtendableElement
menu_name: vec-2.1.0
---
<p>Abstract base class for extendable elements. Extendable elements have the possibility to define non-standard custom properties.  </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | true |
| **Derived Classifiers** | [AbstractSlot]({{< relref "abstractslot.md" >}}), [AbstractSlotReference]({{< relref "abstractslotreference.md" >}}), [ApplicationConstraint]({{< relref "applicationconstraint.md" >}}), [Approval]({{< relref "approval.md" >}}), [AssignmentGroup]({{< relref "assignmentgroup.md" >}}), [BoundingBox]({{< relref "boundingbox.md" >}}), [CableDuctOutlet]({{< relref "cableductoutlet.md" >}}), [CableLeadThrough]({{< relref "cableleadthrough.md" >}}), [CableLeadThroughOutlet]({{< relref "cableleadthroughoutlet.md" >}}), [CableLeadThroughReference]({{< relref "cableleadthroughreference.md" >}}), [CartesianDimension]({{< relref "cartesiandimension.md" >}}), [CartesianPoint2D]({{< relref "cartesianpoint2d.md" >}}), [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}), [CartesianVector]({{< relref "cartesianvector.md" >}}), [Cavity]({{< relref "cavity.md" >}}), [CavityAddOn]({{< relref "cavityaddon.md" >}}), [CavityMapping]({{< relref "cavitymapping.md" >}}), [CavityMounting]({{< relref "cavitymounting.md" >}}), [CavityMountingDetail]({{< relref "cavitymountingdetail.md" >}}), [CavityPositionDetail]({{< relref "cavitypositiondetail.md" >}}), [CavityReference]({{< relref "cavityreference.md" >}}), [ChangeDescription]({{< relref "changedescription.md" >}}), [Coding]({{< relref "coding.md" >}}), [ComponentNodeViewItem]({{< relref "componentnodeviewitem.md" >}}), [ComponentPortViewItem]({{< relref "componentportviewitem.md" >}}), [ConductorCurrentInformation]({{< relref "conductorcurrentinformation.md" >}}), [ConductorMaterial]({{< relref "conductormaterial.md" >}}), [ConfigurableElement]({{< relref "configurableelement.md" >}}), [ConfigurationConstraint]({{< relref "configurationconstraint.md" >}}), [ConnectionNodeViewItem]({{< relref "connectionnodeviewitem.md" >}}), [Contract]({{< relref "contract.md" >}}), [CopyrightInformation]({{< relref "copyrightinformation.md" >}}), [Creation]({{< relref "creation.md" >}}), [CrimpDetail]({{< relref "crimpdetail.md" >}}), [Curve3D]({{< relref "curve3d.md" >}}), [DefaultDimension]({{< relref "defaultdimension.md" >}}), [DimensionAnchor]({{< relref "dimensionanchor.md" >}}), [ExternalMapping]({{< relref "externalmapping.md" >}}), [FittingOutlet]({{< relref "fittingoutlet.md" >}}), [FunctionalRequirement]({{< relref "functionalrequirement.md" >}}), [FunctionalStructureNode]({{< relref "functionalstructurenode.md" >}}), [FuseComponent]({{< relref "fusecomponent.md" >}}), [Instruction]({{< relref "instruction.md" >}}), [InternalTerminalConnection]({{< relref "internalterminalconnection.md" >}}), [ItemEquivalence]({{< relref "itemequivalence.md" >}}), [ItemHistoryEntry]({{< relref "itemhistoryentry.md" >}}), [ItemVersion]({{< relref "itemversion.md" >}}), [LocalPosition]({{< relref "localposition.md" >}}), [Mapping]({{< relref "mapping.md" >}}), [MatingDetail]({{< relref "matingdetail.md" >}}), [MeasurementPoint]({{< relref "measurementpoint.md" >}}), [ModularSlotAddOn]({{< relref "modularslotaddon.md" >}}), [ModuleFamily]({{< relref "modulefamily.md" >}}), [ModuleList]({{< relref "modulelist.md" >}}), [NetType]({{< relref "nettype.md" >}}), [NetworkNodeViewItem]({{< relref "networknodeviewitem.md" >}}), [NetworkPortViewItem]({{< relref "networkportviewitem.md" >}}), [NodeMapping]({{< relref "nodemapping.md" >}}), [OccurrenceOrUsageViewItem2D]({{< relref "occurrenceorusageviewitem2d.md" >}}), [OccurrenceOrUsageViewItem3D]({{< relref "occurrenceorusageviewitem3d.md" >}}), [OpenCavitiesAssignment]({{< relref "opencavitiesassignment.md" >}}), [PartRelation]({{< relref "partrelation.md" >}}), [Path]({{< relref "path.md" >}}), [PathSegment]({{< relref "pathsegment.md" >}}), [Permission]({{< relref "permission.md" >}}), [Person]({{< relref "person.md" >}}), [PinCurrentInformation]({{< relref "pincurrentinformation.md" >}}), [PinOpticalInformation]({{< relref "pinopticalinformation.md" >}}), [PinTiming]({{< relref "pintiming.md" >}}), [PinVoltageInformation]({{< relref "pinvoltageinformation.md" >}}), [PinWireMappingPoint]({{< relref "pinwiremappingpoint.md" >}}), [PlacementPoint]({{< relref "placementpoint.md" >}}), [PlacementPointReference]({{< relref "placementpointreference.md" >}}), [PowerConsumption]({{< relref "powerconsumption.md" >}}), [Project]({{< relref "project.md" >}}), [ProtectionMaterialLength]({{< relref "protectionmateriallength.md" >}}), [RequirementsConformanceStatement]({{< relref "requirementsconformancestatement.md" >}}), [Role]({{< relref "role.md" >}}), [SealedCavitiesAssignment]({{< relref "sealedcavitiesassignment.md" >}}), [SegmentConnectionPoint]({{< relref "segmentconnectionpoint.md" >}}), [SegmentConnectionPointHC]({{< relref "segmentconnectionpointhc.md" >}}), [SegmentCrossSectionArea]({{< relref "segmentcrosssectionarea.md" >}}), [SegmentLength]({{< relref "segmentlength.md" >}}), [SegmentMapping]({{< relref "segmentmapping.md" >}}), [SheetOrChapter]({{< relref "sheetorchapter.md" >}}), [Signal]({{< relref "signal.md" >}}), [Specification]({{< relref "specification.md" >}}), [TerminalPairing]({{< relref "terminalpairing.md" >}}), [TerminalReception]({{< relref "terminalreception.md" >}}), [TerminalReceptionReference]({{< relref "terminalreceptionreference.md" >}}), [TerminalType]({{< relref "terminaltype.md" >}}), [Tolerance]({{< relref "tolerance.md" >}}), [TopologyBendingRestriction]({{< relref "topologybendingrestriction.md" >}}), [Transformation2D]({{< relref "transformation2d.md" >}}), [Transformation3D]({{< relref "transformation3d.md" >}}), [UsageConstraint]({{< relref "usageconstraint.md" >}}), [VariantCode]({{< relref "variantcode.md" >}}), [VariantConfiguration]({{< relref "variantconfiguration.md" >}}), [VariantGroup]({{< relref "variantgroup.md" >}}), [VariantStructureNode]({{< relref "variantstructurenode.md" >}}), [VecContent]({{< relref "veccontent.md" >}}), [WireElement]({{< relref "wireelement.md" >}}), [WireEnd]({{< relref "wireend.md" >}}), [WireGrouping]({{< relref "wiregrouping.md" >}}), [WireLength]({{< relref "wirelength.md" >}}), [WireMounting]({{< relref "wiremounting.md" >}}), [WireMountingDetail]({{< relref "wiremountingdetail.md" >}}), [WireProtectionGroup]({{< relref "wireprotectiongroup.md" >}}), [WireReception]({{< relref "wirereception.md" >}}), [WireReceptionAddOn]({{< relref "wirereceptionaddon.md" >}}), [WireReceptionReference]({{< relref "wirereceptionreference.md" >}}), [WireTupleTermination]({{< relref "wiretupletermination.md" >}}), [ZoneAssignment]({{< relref "zoneassignment.md" >}}), [ZoneCoverage]({{< relref "zonecoverage.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|

## Outgoing Relations
<table>
    <thead>
        <tr>
           <th colspan="6">Other End</th>
           <th colspan="1">This End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>customProperty</td>
        <td><a href="{{< relref "customproperty.md" >}}">CustomProperty</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td>Specifies the CustomProperties of the ExtendableElement.</td>
    </tr>
    <tr>
        <td>referencedExternalDocuments</td>
        <td><a href="{{< relref "documentversion.md" >}}">DocumentVersion</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> This association allows all <i>ExtendableElements</i> in the VEC&#160;to reference <i>DocumentVersions </i>as &quot;external reference&quot;.      </p>      <p> This association shall be used for the extension of elements in the VEC&#160;with information that cannot be represented in the VEC&#160;in an appropriate way but can be expressed in some external format (e.g. a specific symbol for a <i>ComponentNode</i>).      </p>      <p> D<i>ocumentVersions</i> referenced by this association shall not contain any <i>Specifications.</i>      </p>      <p> This association is no replacement for associations with a more precise semantic like the <i>DocumentBasedInstruction</i> or the associations between <i>PartVersion </i>and <i>DocumentVersion.</i>      </p>      <p> &#160;      </p></td>
    </tr>
    </tbody>
</table>

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
        <td>mappedElement</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "externalmapping.md" >}}">ExternalMapping</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    </tbody>
</table>



