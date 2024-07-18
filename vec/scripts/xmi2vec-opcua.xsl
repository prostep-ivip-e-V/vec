<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xmlns:uax="http://opcfoundation.org/UA/2008/02/Types.xsd" 
    xmlns="http://opcfoundation.org/UA/2011/03/UANodeSet.xsd" 
    xmlns:s1="http://opcfoundation.org/UA/WireHarness/Types.xsd" 
    xmlns:s2="http://opcfoundation.org/UA/DI/Types.xsd" 
    xmlns:s3="http://opcfoundation.org/UA/Machinery/Types.xsd" 
    xmlns:ua="http://unifiedautomation.com/Configuration/NodeSet.xsd" 
    xmlns:s4="http://opcfoundation.org/UA/Machinery/Jobs/Types.xsd" 
    xmlns:s5="http://opcfoundation.org/UA/ISA95-JOBCONTROL_V2/Types.xsd" 
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"    
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:xmi="http://www.omg.org/spec/XMI/20131001" 
    xmlns:uml="http://www.omg.org/spec/UML/20131001"
    xmlns:mt="http://www.prostep.org/ecad-if/2022/model-meta"
    xmlns:def="http://www.prostep.org/ecad-if/2022/def"
    xmlns:Stereotypes="http://www.magicdraw.com/schemas/Stereotypes.xmi"
    xmlns:MagicDraw_Profile="http://www.omg.org/spec/UML/20131001/MagicDrawProfile"
    exclude-result-prefixes="uml xmi Stereotypes MagicDraw_Profile xs mt" version="3.0">
    
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:key name="nodeid-lookup" match="*" use="@xmi:id"></xsl:key>
    

    
    <xsl:variable name="whitelist">
        <def:name>String</def:name>
        <def:name>Double</def:name>
        <def:name>Integer</def:name>
        <def:name>Int</def:name>
        <def:name>Date</def:name>
        <def:name>Boolean</def:name>
<!--        <def:name>AbstractLocalizedString</def:name> -->
        <def:name checked="true">AbstractSlot</def:name>
        <def:name>AbstractSlotReference</def:name>
        <!--       <def:name>AliasIdentification</def:name>-->
        <!--       <def:name>AliasIdentificationType</def:name>-->
        <!--       <def:name>AnchorType</def:name>-->
        <!--       <def:name>AntennaRole</def:name>-->
        <!--       <def:name>AntennaSpecification</def:name>-->
        <!--       <def:name>ApplicationConstraint</def:name>-->
        <!--       <def:name>ApplicationConstraintSpecification</def:name>-->
        <!--       <def:name>ApplicationConstraintType</def:name>-->
        <!--       <def:name>Approval</def:name>-->
        <!--       <def:name>AssignmentGroup</def:name>-->
        <!--       <def:name>AssignmentGroupSpecification</def:name>-->
        <!--       <def:name>BaselineContent</def:name>-->
        <!--       <def:name>BaselineSpecification</def:name>-->
        <!--       <def:name>BaselineState</def:name>-->
        <!--       <def:name>BatteryRole</def:name>-->
        <!--       <def:name>BatterySpecification</def:name>-->
        <!--        <def:name>BoltMountedFixingBoltShape</def:name>-->
        <!--        <def:name>BoltMountedFixingBoltType</def:name>-->
        <!--        <def:name>BoltMountedFixingRole</def:name>-->
        <!--        <def:name>BoltMountedFixingSpecification</def:name>-->
<!--        <def:name>BoltTerminalRole</def:name>-->
<!--        <def:name>BoltTerminalSpecification</def:name>-->
        <!--       <def:name>BooleanValueProperty</def:name>-->
        <def:name checked="true">BoundingBox</def:name>
<!--        <def:name>BridgeTerminalRole</def:name>-->
<!--        <def:name>BridgeTerminalSpecification</def:name>-->
        <!--       <def:name>BuildingBlockPositioning2D</def:name>-->
        <!--       <def:name>BuildingBlockPositioning3D</def:name>-->
        <!--       <def:name>BuildingBlockSpecification2D</def:name>-->
        <!--       <def:name>BuildingBlockSpecification3D</def:name>-->
        <!--        <def:name>CableDuctOutlet</def:name>-->
        <!--        <def:name>CableDuctRole</def:name>-->
        <!--        <def:name>CableDuctSpecification</def:name>-->
        <!--        <def:name>CableLeadThrough</def:name>-->
        <!--        <def:name>CableLeadThroughGeometry</def:name>-->
        <!--        <def:name>CableLeadThroughOutlet</def:name>-->
        <!--        <def:name>CableLeadThroughReference</def:name>-->
        <!--        <def:name>CableLeadThroughSpecification</def:name>-->
        <!--        <def:name>CableLeadThroughType</def:name>-->
        <!--        <def:name>CableTieRole</def:name>-->
        <!--        <def:name>CableTieSpecification</def:name>-->
        <!--       <def:name>CapacitorRole</def:name>-->
        <!--       <def:name>CapacitorSpecification</def:name>-->
        <def:name>CartesianDimension</def:name>
        <!--        <def:name>CartesianPoint2D</def:name>-->
        <def:name checked="true">CartesianPoint3D</def:name>
        <def:name>CartesianVector</def:name>
        <!--<def:name>CartesianVector2D</def:name>-->
        <def:name checked="true">CartesianVector3D</def:name>
        <def:name checked="true">Cavity</def:name>
        <def:name>CavityAccessoryRole</def:name>
        <def:name>CavityAccessorySpecification</def:name>
<!--        <def:name>CavityAddOn</def:name>-->
        <!--       <def:name>CavityCoupling</def:name>-->
<!--        <def:name>CavityGeometry</def:name>-->
        <!--       <def:name>CavityMapping</def:name>-->
        <def:name>CavityMounting</def:name>
        <def:name>CavityMountingDetail</def:name>
        <def:name>CavityPartRole</def:name>
        <def:name>CavityPartSpecification</def:name>
        <def:name>CavityPlugRole</def:name>
        <def:name>CavityPlugSpecification</def:name>
        <def:name checked="true">CavityPositionDetail</def:name>
        <def:name>CavityReference</def:name>
        <def:name checked="true">CavitySealRole</def:name>
        <def:name checked="true">CavitySealSpecification</def:name>
        <def:name checked="true">CavitySpecification</def:name>
        <!--       <def:name>ChangeDescription</def:name>-->
        <def:name>Coding</def:name>
        <def:name checked="true">Color</def:name>
        <def:name checked="true">ColorReferenceSystem</def:name>
        <!--       <def:name>ComplexProperty</def:name>-->
        <!--       <def:name>ComponentConnector</def:name>-->
        <!--       <def:name>ComponentNode</def:name>-->
        <!--       <def:name>ComponentNodeSubType</def:name>-->
        <!--       <def:name>ComponentNodeType</def:name>-->
        <!--       <def:name>ComponentNodeViewItem</def:name>-->
        <!--       <def:name>ComponentPort</def:name>-->
        <!--       <def:name>ComponentPortViewItem</def:name>-->
        <!--       <def:name>ComponentPortViewItemSide</def:name>-->
        <def:name checked="true">CompositionSpecification</def:name>
        <def:name>ConductorCurrentInformation</def:name>
        <def:name>ConductorMaterial</def:name>
        <def:name checked="true">ConductorSpecification</def:name>
        <def:name>ConductorStructure</def:name>
        <def:name>ConductorType</def:name>
        <!--       <def:name>ConfidentialityLevel</def:name>-->
        <def:name>ConfigurableElement</def:name>
        <!--       <def:name>ConfigurationConstraint</def:name>-->
        <!--       <def:name>ConfigurationConstraintSpecification</def:name>-->
        <!--       <def:name>Connection</def:name>-->
        <!--       <def:name>ConnectionEnd</def:name>-->
        <!--       <def:name>ConnectionEndGender</def:name>-->
        <!--       <def:name>ConnectionGroup</def:name>-->
        <!--       <def:name>ConnectionGroupType</def:name>-->
        <!--       <def:name>ConnectionNodeViewItem</def:name>-->
        <!--       <def:name>ConnectionSpecification</def:name>-->
        <!--       <def:name>ConnectionViewSpecification</def:name>-->
        <!--        <def:name>ConnectorHousingCapRole</def:name>-->
        <!--        <def:name>ConnectorHousingCapSpecification</def:name>-->
        <!--        <def:name>ConnectorHousingCoverRole</def:name>-->
        <!--        <def:name>ConnectorHousingCoverSpecification</def:name>-->
        <def:name>ConnectorHousingRole</def:name>
        <def:name checked="true">ConnectorHousingSpecification</def:name>
        <def:name>ConnectorLockingState</def:name>
        <def:name>ConnectorLockingType</def:name>
        <def:name>ConnectorOutletDirection</def:name>
        <def:name>ConnectorPositionAssuranceState</def:name>
        <def:name>ConnectorPositionAssuranceType</def:name>
        <def:name checked="true">ContactPoint</def:name>
        <def:name checked="true">ContactingSpecification</def:name>
        <!--       <def:name>Contract</def:name>-->
        <!--       <def:name>ContractRole</def:name>-->
        <!--       <def:name>Oem</def:name>-->
        <!--       <def:name>Supplier</def:name>-->
        <!--       <def:name>Manufacturer</def:name>-->
        <!--       <def:name>CopyrightInformation</def:name>-->
<!--        <def:name>CoreCrimpDetail</def:name>-->
        <def:name checked="true">CoreSpecification</def:name>
        <!--        <def:name>CorrugatedPipeRole</def:name>-->
        <!--        <def:name>CorrugatedPipeSpecification</def:name>-->
        <!--       <def:name>CouplingPoint</def:name>-->
        <!--       <def:name>CouplingSpecification</def:name>-->
        <!--       <def:name>Creation</def:name>-->
<!--        <def:name>CrimpDetail</def:name>-->
        <def:name>CrimpShape</def:name>
        <!--       <def:name>CurrentType</def:name>-->
        <!--       <def:name>Curve3D</def:name>-->
        <!--       <def:name>CustomProperty</def:name>-->
        <!--       <def:name>DateValueProperty</def:name>-->
        <!--       <def:name>DefaultDimension</def:name>-->
        <!--       <def:name>DefaultDimensionSpecification</def:name>-->
        <!--       <def:name>DefaultDimensionType</def:name>-->
        <!--       <def:name>Dimension</def:name>-->
        <!--       <def:name>DimensionAnchor</def:name>-->
        <!--       <def:name>DiodeRole</def:name>-->
        <!--       <def:name>DiodeSpecification</def:name>-->
        <!--       <def:name>DocumentBasedInstruction</def:name>-->
        <!--       <def:name>DocumentClassification</def:name>-->
        <!--       <def:name>DocumentRelatedAssignmentGroup</def:name>-->
        <!--       <def:name>DocumentRelationType</def:name>-->
        <def:name>DocumentType</def:name>
        <def:name>DocumentVersion</def:name>
        <!--       <def:name>DoubleValueProperty</def:name>-->
        <!--       <def:name>EEComponentRole</def:name>-->
        <!--       <def:name>EEComponentSpecification</def:name>-->
        <!--        <def:name>EdgeMountedFixingRole</def:name>-->
        <!--        <def:name>EdgeMountedFixingSpecification</def:name>-->
        <def:name>ExtendableElement</def:name>
        <!--       <def:name>ExtensionSlot</def:name>-->
        <!--       <def:name>ExtensionSlotReference</def:name>-->
        <!--       <def:name>ExternalMapping</def:name>-->
        <!--       <def:name>ExternalMappingSpecification</def:name>-->
        <!--        <def:name>FerriteRole</def:name>-->
        <!--        <def:name>FerriteSpecification</def:name>-->
        <!--       <def:name>FileBasedInstruction</def:name>-->
        <!--        <def:name>FillerSpecification</def:name>-->
        <!--        <def:name>FittingForm</def:name>-->
        <!--        <def:name>FittingOutlet</def:name>-->
        <!--        <def:name>FittingRole</def:name>-->
        <!--        <def:name>FittingSpecification</def:name>-->
        <!--        <def:name>FixingRole</def:name>-->
        <!--        <def:name>FixingSpecification</def:name>-->
<!--        <def:name>FlatCoreSpecification</def:name>-->
<!--        <def:name>FoilShieldWindingType</def:name>-->
        <!--       <def:name>FunctionalAssignmentGroup</def:name>-->
        <!--       <def:name>FunctionalRequirement</def:name>-->
        <!--       <def:name>FunctionalRequirementType</def:name>-->
        <!--       <def:name>FunctionalStructureNode</def:name>-->
        <!--       <def:name>FunctionalStructureSpecification</def:name>-->
        <!--       <def:name>FuseComponent</def:name>-->
        <!--       <def:name>FuseRole</def:name>-->
        <!--       <def:name>FuseSpecification</def:name>-->
        <!--       <def:name>FuseType</def:name>-->
        <def:name checked="true">GeneralTechnicalPartSpecification</def:name>
        <!--       <def:name>GeometryNode</def:name>-->
        <!--       <def:name>GeometryNode2D</def:name>-->
        <!--       <def:name>GeometryNode3D</def:name>-->
        <!--       <def:name>GeometrySegment</def:name>-->
        <!--       <def:name>GeometrySegment2D</def:name>-->
        <!--       <def:name>GeometrySegment3D</def:name>-->
        <!--       <def:name>GeometryType</def:name>-->
        <!--        <def:name>GrommetMountingType</def:name>-->
        <!--        <def:name>GrommetRole</def:name>-->
        <!--        <def:name>GrommetSpecification</def:name>-->
        <!--        <def:name>GrommetType</def:name>-->
        <!--       <def:name>HarnessDrawingSpecification2D</def:name>-->
        <!--       <def:name>HarnessGeometrySpecification3D</def:name>-->
        <!--       <def:name>HistoryEntryType</def:name>-->
        <!--        <def:name>HoleMountedFixingHoleShape</def:name>-->
        <!--        <def:name>HoleMountedFixingHoleType</def:name>-->
        <!--        <def:name>HoleMountedFixingRole</def:name>-->
        <!--        <def:name>HoleMountedFixingSpecification</def:name>-->
<!--        <def:name>HoleTerminalRole</def:name>-->
<!--        <def:name>HoleTerminalSpecification</def:name>-->
        <!--       <def:name>HousingComponent</def:name>-->
        <!--       <def:name>HousingComponentReference</def:name>-->
        <!--       <def:name>HousingComponentType</def:name>-->
        <!--       <def:name>Instruction</def:name>-->
<!--        <def:name>InsulationCrimpDetail</def:name>-->
        <def:name checked="true">InsulationSpecification</def:name>
<!--        <def:name>InsulationState</def:name>-->
        <!--       <def:name>IntegerValueProperty</def:name>-->
        <!--       <def:name>InternalComponentConnection</def:name>-->
        <!--        <def:name>InternalTerminalConnection</def:name>-->
        <!--       <def:name>ItemEquivalence</def:name>-->
        <!--       <def:name>ItemHistoryEntry</def:name>-->
        <def:name>ItemVersion</def:name>
        <!--        <def:name>LabelPosition</def:name>-->
        <!--        <def:name>LabelType</def:name>-->
        <!--        <def:name>LabelingRole</def:name>-->
        <!--        <def:name>LabelingSpecification</def:name>-->
        <!--        <def:name>LabelingTechnology</def:name>-->
<!--        <def:name>LanguageCode</def:name>-->
        <!--       <def:name>LengthClassification</def:name>-->
        <!--       <def:name>LevelOfApproval</def:name>-->
        <!--       <def:name>LocalGeometrySpecification</def:name>-->
        <!--       <def:name>LocalPosition</def:name>-->
        <!--<def:name>LocalizedString</def:name>-->
        <!--       <def:name>LocalizedStringProperty</def:name>-->
        <!--<def:name>LocalizedTypedString</def:name>-->
        <!--<def:name>LocalizedTypedStringType</def:name>-->
        <!--       <def:name>Location</def:name>-->
        <!--       <def:name>Mapping</def:name>-->
        <!--       <def:name>MappingSpecification</def:name>-->
<!--        <def:name>MassInformation</def:name>-->
<!--        <def:name>MassInformationSource</def:name>-->
        <def:name>Material</def:name>
<!--        <def:name>MaterialComposition</def:name>-->
        <!--       <def:name>MatingDetail</def:name>-->
        <!--       <def:name>MatingPoint</def:name>-->
        <!--       <def:name>MeasurePointPosition</def:name>-->
        <!--       <def:name>MeasurementPoint</def:name>-->
        <!--       <def:name>MeasurementPointReference</def:name>-->
<!--        <def:name>ModularSlot</def:name>-->
<!--        <def:name>ModularSlotAddOn</def:name>-->
<!--        <def:name>ModularSlotReference</def:name>-->
        <!--       <def:name>ModuleFamily</def:name>-->
        <!--       <def:name>ModuleFamilySpecification</def:name>-->
        <!--       <def:name>ModuleList</def:name>-->
        <!--       <def:name>ModuleListSpecification</def:name>-->
        <!--        <def:name>MultiCavityPlugRole</def:name>-->
        <!--        <def:name>MultiCavityPlugSpecification</def:name>-->
        <!--        <def:name>MultiCavitySealRole</def:name>-->
        <!--        <def:name>MultiCavitySealSpecification</def:name>-->
        <!--       <def:name>MultiFuseRole</def:name>-->
        <!--       <def:name>MultiFuseSpecification</def:name>-->
        <!--       <def:name>MultiFuseType</def:name>-->
        <!--       <def:name>NURBSControlPoint</def:name>-->
        <!--       <def:name>NURBSCurve</def:name>-->
        <!--       <def:name>Net</def:name>-->
        <!--       <def:name>NetGroup</def:name>-->
        <!--       <def:name>NetSpecification</def:name>-->
        <!--       <def:name>NetType</def:name>-->
        <!--       <def:name>NetViewSpecification</def:name>-->
        <!--       <def:name>NetworkNode</def:name>-->
        <!--       <def:name>NetworkNodeSubType</def:name>-->
        <!--       <def:name>NetworkNodeType</def:name>-->
        <!--       <def:name>NetworkNodeViewItem</def:name>-->
        <!--       <def:name>NetworkPort</def:name>-->
        <!--       <def:name>NetworkPortViewItem</def:name>-->
        <!--       <def:name>NetworkPortViewItemSide</def:name>-->
        <!--       <def:name>NodeLocation</def:name>-->
        <!--       <def:name>NodeMapping</def:name>-->
        <!--       <def:name>NodeType</def:name>-->
        <!--       <def:name>NominalVoltage</def:name>-->
        <def:name checked="true">NumericalValue</def:name>
        <!--       <def:name>NumericalValueProperty</def:name>-->
        <def:name checked="true">OccurrenceOrUsage</def:name>
        <!--       <def:name>OccurrenceOrUsageViewItem2D</def:name>-->
        <!--       <def:name>OccurrenceOrUsageViewItem3D</def:name>-->
<!--        <def:name>OnPointPlacement</def:name>-->
<!--        <def:name>OnWayPlacement</def:name>-->
<!--        <def:name>OpenCavitiesAssignment</def:name>-->
<!--        <def:name>OpenWireEndTerminalRole</def:name>-->
<!--        <def:name>OpenWireEndTerminalSpecification</def:name>-->
<!--        <def:name>PartNature</def:name>-->
        <def:name checked="true">PartOccurrence</def:name>
        <def:name>PartOrUsageRelatedSpecification</def:name>
        <!--       <def:name>PartRelation</def:name>-->
        <!--       <def:name>PartRelationType</def:name>-->
<!--        <def:name>PartStructureContentType</def:name>-->
<!--        <def:name>PartStructureSpecification</def:name>-->
        <!--       <def:name>PartSubstitutionSpecification</def:name>-->
<!--        <def:name>PartUsage</def:name>-->
<!--        <def:name>PartUsageSpecification</def:name>-->
        <def:name>PartVersion</def:name>
<!--        <def:name>PartWithSubComponentsRole</def:name>-->
        <!--       <def:name>Path</def:name>-->
        <!--       <def:name>PathSegment</def:name>-->
        <!--       <def:name>Permission</def:name>-->
        <!--       <def:name>Person</def:name>-->
        <!--       <def:name>PinApplianceType</def:name>-->
        <!--       <def:name>PinComponent</def:name>-->
        <!--       <def:name>PinComponentBehavior</def:name>-->
        <!--       <def:name>PinComponentReference</def:name>-->
        <!--       <def:name>PinComponentType</def:name>-->
        <!--       <def:name>PinCurrentInformation</def:name>-->
        <!--       <def:name>PinCurrentType</def:name>-->
        <!--       <def:name>PinOpticalInformation</def:name>-->
        <!--       <def:name>PinTiming</def:name>-->
        <!--       <def:name>PinTimingType</def:name>-->
        <!--       <def:name>PinType</def:name>-->
        <!--       <def:name>PinVoltageInformation</def:name>-->
        <!--       <def:name>PinVoltageType</def:name>-->
        <!--       <def:name>PinWireMappingPoint</def:name>-->
        <!--       <def:name>PinWireMappingSpecification</def:name>-->
        <!--       <def:name>PlaceableElementRole</def:name>-->
        <!--       <def:name>PlaceableElementSpecification</def:name>-->
        <!--       <def:name>Placement</def:name>-->
        <!--       <def:name>PlacementPoint</def:name>-->
        <!--       <def:name>PlacementPointPosition</def:name>-->
        <!--       <def:name>PlacementPointReference</def:name>-->
        <!--       <def:name>PlacementSpecification</def:name>-->
        <!--       <def:name>PlacementType</def:name>-->
        <def:name checked="true">PluggableTerminalRole</def:name>
        <def:name checked="true">PluggableTerminalSpecification</def:name>
        <def:name>PluggableTerminalType</def:name>
        <!--       <def:name>PotentialDistributorRole</def:name>-->
        <!--       <def:name>PotentialDistributorSpecification</def:name>-->
        <!--       <def:name>PowerConsumption</def:name>-->
        <!--       <def:name>PowerConsumptionType</def:name>-->
<!--        <def:name>PrimaryLockingType</def:name>-->
        <def:name checked="true">PrimaryPartType</def:name>
        <!--       <def:name>PrimaryResourceType</def:name>-->
        <!--       <def:name>Project</def:name>-->
<!--        <def:name>ProtectionMaterialLength</def:name>-->
        <!--       <def:name>RelaisApplianceType</def:name>-->
        <!--       <def:name>RelaisType</def:name>-->
        <!--       <def:name>RelayRole</def:name>-->
        <!--       <def:name>RelaySpecification</def:name>-->
        <!--       <def:name>RequirementsConformanceSpecification</def:name>-->
        <!--       <def:name>RequirementsConformanceStatement</def:name>-->
        <def:name>ResourceVersion</def:name>
<!--        <def:name>RingTerminalRole</def:name>-->
<!--        <def:name>RingTerminalSpecification</def:name>-->
        <!--        <def:name>RobustnessClass</def:name>-->
        <!--        <def:name>RobustnessClassReferenceSystem</def:name>-->
        <!--        <def:name>RobustnessProperties</def:name>-->
        <def:name checked="true">Role</def:name>
        <def:name>RoutableElement</def:name>
        <!--       <def:name>Routing</def:name>-->
        <!--       <def:name>RoutingSpecification</def:name>-->
<!--        <def:name>SealState</def:name>-->
<!--        <def:name>SealedCavitiesAssignment</def:name>-->
<!--        <def:name>SealingGeometry</def:name>-->
<!--        <def:name>SecondaryLockingType</def:name>-->
<!--        <def:name>SegmentConnectionPoint</def:name>-->
        <!--       <def:name>SegmentConnectionPointHC</def:name>-->
        <!--       <def:name>SegmentCrossSectionArea</def:name>-->
        <!--       <def:name>SegmentCrossSectionAreaType</def:name>-->
        <!--       <def:name>SegmentForm</def:name>-->
        <!--       <def:name>SegmentLength</def:name>-->
        <!--       <def:name>SegmentLocation</def:name>-->
        <!--       <def:name>SegmentMapping</def:name>-->
        <!--       <def:name>SheetOrChapter</def:name>-->
<!--        <def:name>ShieldSpecification</def:name>-->
        <!--        <def:name>ShrinkableTubeRole</def:name>-->
        <!--        <def:name>ShrinkableTubeSpecification</def:name>-->
        <!--       <def:name>Signal</def:name>-->
        <!--       <def:name>SignalCurve</def:name>-->
        <!--       <def:name>SignalDirection</def:name>-->
        <!--       <def:name>SignalForm</def:name>-->
        <!--       <def:name>SignalGraph</def:name>-->
        <!--       <def:name>SignalGraphEdge</def:name>-->
        <!--       <def:name>SignalGraphNode</def:name>-->
        <!--       <def:name>SignalGraphRelation</def:name>-->
        <!--       <def:name>SignalGraphRelationType</def:name>-->
        <!--       <def:name>SignalInformationType</def:name>-->
        <!--       <def:name>SignalSpecification</def:name>-->
        <!--       <def:name>SignalSubType</def:name>-->
        <!--       <def:name>SignalTransmissionMediumType</def:name>-->
        <!--       <def:name>SignalType</def:name>-->
        <!--       <def:name>SimpleValueProperty</def:name>-->
        <def:name>Size</def:name>
        <def:name checked="true">Slot</def:name>
        <!--       <def:name>SlotCoupling</def:name>-->
<!--        <def:name>SlotGender</def:name>-->
<!--        <def:name>SlotLayout</def:name>-->
<!--        <def:name>SlotLayoutType</def:name>-->
        <!--       <def:name>SlotMapping</def:name>-->
        <def:name>SlotReference</def:name>
<!--        <def:name>SlotSealingType</def:name>-->
        <def:name>SlotSpecification</def:name>
<!--        <def:name>SoundDampingClass</def:name>-->
<!--        <def:name>SpecificRole</def:name>-->
        <def:name>Specification</def:name>
<!--        <def:name>SpliceTerminalRole</def:name>-->
<!--        <def:name>SpliceTerminalSpecification</def:name>-->
<!--        <def:name>SpliceType</def:name>-->
        <!--       <def:name>StatusOfApproval</def:name>-->
        <!--        <def:name>StripeRole</def:name>-->
        <!--        <def:name>StripeSpecification</def:name>-->
        <!--       <def:name>SwitchingState</def:name>-->
        <!--        <def:name>TapeRole</def:name>-->
        <!--        <def:name>TapeSpecification</def:name>-->
        <!--        <def:name>TapingDirection</def:name>-->
<!--        <def:name>TemperatureInformation</def:name>-->
<!--        <def:name>TemperatureType</def:name>-->
<!--        <def:name>TerminalBoltNominalSize</def:name>-->
<!--        <def:name>TerminalBoltType</def:name>-->
<!--        <def:name>TerminalCurrentInformation</def:name>-->
<!--        <def:name>TerminalDistanceInformation</def:name>-->
<!--        <def:name>TerminalDistanceType</def:name>-->
        <!--       <def:name>TerminalPairing</def:name>-->
        <!--       <def:name>TerminalPairingSpecification</def:name>-->
<!--        <def:name>TerminalPositionAssuranceState</def:name>-->
        <def:name checked="true">TerminalReception</def:name>
<!--        <def:name>TerminalReceptionGender</def:name>-->
        <def:name checked="true">TerminalReceptionReference</def:name>
        <def:name checked="true">TerminalReceptionSpecification</def:name>
        <def:name checked="true">TerminalRole</def:name>
<!--        <def:name>TerminalSealingType</def:name>-->
        <def:name checked="true">TerminalSpecification</def:name>
        <def:name>TerminalType</def:name>
        <!--       <def:name>TextBasedInstruction</def:name>-->
        <def:name checked="true">Tolerance</def:name>
        <!--       <def:name>TopologyBendingRestriction</def:name>-->
        <!--       <def:name>TopologyBendingRestrictionSpecification</def:name>-->
        <!--       <def:name>TopologyGroupSpecification</def:name>-->
        <!--       <def:name>TopologyMappingSpecification</def:name>-->
        <!--       <def:name>TopologyNode</def:name>-->
        <!--       <def:name>TopologySegment</def:name>-->
        <!--       <def:name>TopologySpecification</def:name>-->
        <!--       <def:name>TopologyZone</def:name>-->
        <!--       <def:name>TopologyZoneSpecification</def:name>-->
        <!--       <def:name>TopologyZoneType</def:name>-->
        <!--        <def:name>TransmissionMediumType</def:name>-->
        <!--        <def:name>TubeRole</def:name>-->
        <!--        <def:name>TubeShape</def:name>-->
        <!--        <def:name>TubeSlitStyle</def:name>-->
        <!--        <def:name>TubeSpecification</def:name>-->
        <!--       <def:name>TypeOfPermission</def:name>-->
        <!--       <def:name>UsageConstraint</def:name>-->
        <!--       <def:name>UsageConstraintSpecification</def:name>-->
        <!--       <def:name>UsageConstraintType</def:name>-->
        <!--       <def:name>UsageNode</def:name>-->
        <!--       <def:name>UsageNodeSpecification</def:name>-->
        <!--       <def:name>UsageNodeType</def:name>-->
<!--        <def:name>ValueDetermination</def:name>-->
        <def:name>ValueRange</def:name>
        <!--       <def:name>ValueRangeProperty</def:name>-->
        <def:name checked="true">ValueWithUnit</def:name>
        <!--       <def:name>VariantCode</def:name>-->
        <!--       <def:name>VariantCodeSpecification</def:name>-->
        <!--       <def:name>VariantCodeType</def:name>-->
        <!--       <def:name>VariantConfiguration</def:name>-->
        <!--       <def:name>VariantConfigurationSpecification</def:name>-->
        <!--       <def:name>VariantConfigurationType</def:name>-->
        <!--       <def:name>VariantGroup</def:name>-->
        <!--       <def:name>VariantGroupSpecification</def:name>-->
        <!--       <def:name>VariantGroupType</def:name>-->
        <!--       <def:name>VariantStructureNode</def:name>-->
        <!--       <def:name>VariantStructureSpecification</def:name>-->
        <!--       <def:name>VecContent</def:name>-->
        <!--       <def:name>VecVersion</def:name>-->
        <!--        <def:name>WindingFirmness</def:name>-->
        <!--        <def:name>WindingType</def:name>-->
<!--        <def:name>WireAddOnType</def:name>-->
        <def:name>WireElement</def:name>
        <def:name checked="true">WireElementReference</def:name>
<!--        <def:name>WireElementShape</def:name>-->
        <def:name checked="true">WireElementSpecification</def:name>
        <def:name checked="true">WireEnd</def:name>
        <def:name>WireEndAccessoryRole</def:name>
        <def:name>WireEndAccessorySpecification</def:name>
<!--        <def:name>WireGroupSpecification</def:name>-->
<!--        <def:name>WireGroupType</def:name>-->
<!--        <def:name>WireGrouping</def:name>-->
<!--        <def:name>WireGroupingSpecification</def:name>-->
        <def:name checked="true">WireLength</def:name>
        <def:name checked="true">WireLengthType</def:name>
        <def:name checked="true">WireMounting</def:name>
        <def:name checked="true">WireMountingDetail</def:name>
        <!--        <def:name>WireProtectionGroup</def:name>-->
        <!--        <def:name>WireProtectionGroupSpecification</def:name>-->
        <!--        <def:name>WireProtectionRole</def:name>-->
        <!--        <def:name>WireProtectionSpecification</def:name>-->
        <def:name checked="true">WireReception</def:name>
<!--        <def:name>WireReceptionAddOn</def:name>-->
        <def:name checked="true">WireReceptionReference</def:name>
        <def:name checked="true">WireReceptionSpecification</def:name>
        <def:name>WireReceptionType</def:name>
        <def:name checked="true">WireRole</def:name>
        <def:name>WireSpecification</def:name>
<!--        <def:name>WireTupleSpecification</def:name>-->
<!--        <def:name>WireTupleTermination</def:name>-->
<!--        <def:name>WireTupleTerminationSpecification</def:name>-->
        <def:name checked="true">WireType</def:name>
        <!--       <def:name>ZoneAssignment</def:name>-->
        <!--       <def:name>ZoneCoverage</def:name>-->
    </xsl:variable>
    
    <xsl:variable name="nodeids-table">
        <xsl:for-each select="/xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[(@xmi:type='uml:Class' or @xmi:type='uml:Enumeration')and not(@xmi:id=//MagicDraw_Profile:Legend/@base_Class)]
            | /xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[@xmi:type='uml:Enumeration']/ownedLiteral[@xmi:type='uml:EnumerationLiteral']">
            <element xmi:id="{@xmi:id}" nodeid="{concat('ns=',$PREFIX_NUM,';i=',position()+3000)}"/>
        </xsl:for-each>
    </xsl:variable>
    
    <xsl:key name="idlookup" match="*" use="@xmi:id"/>
    
    
        
    <xsl:variable name="VEC_PREFIX">vec</xsl:variable>
    <xsl:variable name="VEC_URL" select="'http://www.prostep.org/ecad-if/2011/vec'"/>
    
    <xsl:variable name="VEC_OPC_NS" select="'http://opcfoundation.org/UA/WireHarness/VEC/'"></xsl:variable>
     
     <xsl:param name="VEC_VERSION">2.1.0</xsl:param>
     <xsl:param name="strict">true</xsl:param>
     <xsl:param name="revision">not-set</xsl:param>
     <xsl:param name="timestamp">not-set</xsl:param>
     <xsl:variable name="PREFIX_NUM" select="'1'"/>
     
    <!-- Header -->
    <xsl:template match="/">
        <UANodeSet>
            <NamespaceUris>
                <Uri><xsl:value-of select="$VEC_OPC_NS"/></Uri>
            </NamespaceUris>
            <Models>
                <Model ModelUri="{$VEC_OPC_NS}" PublicationDate="2023-12-13T20:05:00Z" Version="1.0.0">
                    <RequiredModel ModelUri="http://opcfoundation.org/UA/" PublicationDate="2022-11-01T00:00:00Z" Version="1.05.02"/>
                </Model>
            </Models>
            <Aliases>
                <Alias Alias="Boolean">i=1</Alias>
                <Alias Alias="Integer">i=6</Alias>
                <Alias Alias="Double">i=11</Alias>
                <Alias Alias="String">i=12</Alias>
                <Alias Alias="DateTime">i=13</Alias>
                <Alias Alias="ByteString">i=15</Alias>
                <Alias Alias="NodeId">i=17</Alias>
                <Alias Alias="HasModellingRule">i=37</Alias>
                <Alias Alias="HasEncoding">i=38</Alias>
                <Alias Alias="HasDescription">i=39</Alias>
                <Alias Alias="HasTypeDefinition">i=40</Alias>
                <Alias Alias="HasSubtype">i=45</Alias>
                <Alias Alias="HasProperty">i=46</Alias>
                <Alias Alias="HasComponent">i=47</Alias>
                <Alias Alias="IdType">i=256</Alias>
                <Alias Alias="NumericRange">i=291</Alias>
                <Alias Alias="Range">i=884</Alias>
                <Alias Alias="EUInformation">i=887</Alias>
                <Alias Alias="OpenEnum">ns=1;i=1000</Alias>
            </Aliases>
            <UAObjectType NodeId="ns=1;i=1000" BrowseName="1:OpenEnum">
                <DisplayName>OpenEnum</DisplayName>
                <Documentation><![CDATA[Base class for all open enums.]]></Documentation>
                <References>
                    <Reference ReferenceType="HasSubType" IsForward="false">i=58</Reference>
                </References>
            </UAObjectType>            
            <xsl:apply-templates select="xmi:XMI/uml:Model/packagedElement[@name='VEC']//packagedElement[(@xmi:type='uml:Class' or @xmi:type='uml:Enumeration')and not(@xmi:id=//MagicDraw_Profile:Legend/@base_Class)]" mode="create-type">
                <xsl:sort select="@name"/>
            </xsl:apply-templates>         
        </UANodeSet>
    </xsl:template>
    
    <xsl:template match="packagedElement[@xmi:type='uml:Class' and (@name = $whitelist/def:name)]" mode="create-type">
        <UADataType>
            <xsl:if test="@isAbstract='true'">
                <xsl:attribute name="IsAbstract" select="'true'"/>
            </xsl:if>                       
            <xsl:attribute name="NodeId" select="key('nodeid-lookup',@xmi:id,$nodeids-table)/@nodeid"></xsl:attribute>
            <xsl:attribute name="BrowseName">
                <xsl:value-of select="concat($PREFIX_NUM,':')"/>
                <xsl:apply-templates select="." mode="create-name"/>
            </xsl:attribute>               
            <DisplayName><xsl:apply-templates select="@name" mode="format-name"/></DisplayName>
            <Documentation><xsl:apply-templates select="." mode="documentation"/></Documentation>            
            <References>                
                <xsl:choose>
                    <xsl:when test="exists(generalization)">
                        <Reference ReferenceType="HasSubType" IsForward="false">
                            <xsl:value-of select="key('nodeid-lookup',generalization/@general,$nodeids-table)/@nodeid"/>
                        </Reference>                        
                    </xsl:when>
                    <xsl:otherwise>
                        <Reference ReferenceType="HasSubType" IsForward="false">i=22</Reference>
                    </xsl:otherwise>
                </xsl:choose>
            </References>
            <Definition>
                <xsl:attribute name="Name">
                    <xsl:value-of select="concat($PREFIX_NUM,':')"/>
                    <xsl:apply-templates select="." mode="create-name"/>
                </xsl:attribute>            
                <xsl:apply-templates select="." mode="create-content"/>
            </Definition>
        </UADataType>
    </xsl:template>

    <!-- Ignore VEC Units -->
    <!-- TODO Enumerations -->
    <xsl:template match="packagedElement[(@xmi:type='uml:Class' or @xmi:type='uml:Enumeration')and 
        (@name = 'Unit' or @name = 'SIUnit' or @name = 'OtherUnit' or 
        @name = 'IECUnit' or @name = 'USUnit' or @name = 'CustomUnit' or 
        @name = 'CompositeUnit' or @name = 'ImperialUnit' or 
        @name = 'SiPrefix' or @name = 'SiUnitName' or @name = 'OtherUnitName' or 
        @name = 'IECPrefix' or @name = 'IECUnitName') or @name = 'ImperialUnitName'or 
        @name = 'USUnitName']" mode="create-type" priority="5"></xsl:template>
    
    <xsl:template match="packagedElement[@xmi:type='uml:Class']" mode="create-content">
        <!-- Simple attributes -->
        <xsl:variable name="attributes" select=".//ownedAttribute[@xmi:type='uml:Property' and not(exists(@association))]"/>
        <!-- Compositions -->
        <xsl:variable name="compositionEnds" select=".//ownedAttribute[@xmi:type='uml:Property' and exists(@association) and @aggregation='composite']"/>
        <!-- Associations -->
        <xsl:variable name="associationEnds" select=".//ownedAttribute[@xmi:type='uml:Property' and exists(@association) and not(@aggregation='composite')]"/>
        
        
        <xsl:if test="$attributes or $compositionEnds or $associationEnds">
            <xsl:apply-templates select="$attributes" mode="create-element"/>
            <xsl:apply-templates select="$associationEnds" mode="create-element">
                <xsl:sort select="@name" order="ascending" data-type="text"/>
            </xsl:apply-templates>
            <xsl:apply-templates select="$compositionEnds" mode="create-element">
                <xsl:sort select="@name" order="ascending" data-type="text"/>
            </xsl:apply-templates>
        </xsl:if>
        
        <xsl:if test="not(exists(generalization))">
            <Field DataType="String" Name="id"/>
        </xsl:if>
    </xsl:template>


    <!-- Ignore VEC Units -->
    <xsl:template match="ownedAttribute[@xmi:type='uml:Property' and  (not(exists(@association)) or @aggregation='composite') and key('idlookup',@type)[@name='Unit']]" mode="create-element" priority="3">
    </xsl:template>
    
    <!-- reference OPC UA Unit -->

    <xsl:template match="ownedAttribute[@xmi:type='uml:Property' and key('idlookup',@type)[@name='Unit']]" mode="create-element" priority="2">
        <Field DataType="EUInformation">
            <xsl:apply-templates select="." mode="create-name"/>      
            <xsl:apply-templates select="." mode="multiplicity-attributes"/>
            <Description><xsl:apply-templates select="." mode="documentation"/></Description>
        </Field>        
    </xsl:template>
    
    <!-- normal Embedding -->
    
    <xsl:template match="ownedAttribute[@xmi:type='uml:Property' and  (not(exists(@association)) or @aggregation='composite')]" mode="create-element">
        <xsl:variable name="type" select="key('idlookup',@type)"/>
        <xsl:if test="$type[@name = $whitelist/def:name]">
            <Field>
                <xsl:apply-templates select="." mode="multiplicity-attributes"/>                        
                <xsl:apply-templates select="." mode="create-name"/>
                <xsl:attribute name="DataType"><xsl:apply-templates select="$type" mode="create-type-ref"/></xsl:attribute>
                <Description><xsl:apply-templates select="." mode="documentation"/></Description>
            </Field>
        </xsl:if>            
    </xsl:template>
    
    <!-- IDREF Mechanism -->
    
   
    <xsl:template match="ownedAttribute[@xmi:type='uml:Property' and exists(@association) and not(@aggregation='composite')]" mode="create-element">
        <!-- Don't create reference to enums and CDATAs -->
        <xsl:variable name="type" select="key('idlookup',@type)"/>
        <xsl:if test="not($type/@xmi:type='uml:Enumeration') and ($type[@name = $whitelist/def:name])">
            <!-- use role name if exists; otherwise use type name for name atttribute -->
            <Field DataType="String">
                <xsl:apply-templates select="." mode="multiplicity-attributes"/>
                <xsl:apply-templates select="." mode="create-name"/>   
                <Description><xsl:apply-templates select="." mode="documentation"/></Description>
            </Field>               								                
       </xsl:if>		
    </xsl:template>
    
    <xsl:template match="ownedAttribute" mode="multiplicity-attributes">
        <xsl:variable name="lower">
            <xsl:apply-templates select=".//lowerValue" mode="create-cardinality-value"/>
        </xsl:variable>
        <xsl:variable name="upper">
            <xsl:apply-templates select=".//upperValue" mode="create-cardinality-value"/>                    
        </xsl:variable>
        <xsl:if test="$lower='0'">
            <xsl:attribute name="IsOptional">true</xsl:attribute>
        </xsl:if>
        <xsl:if test="$upper!='1'">
            <xsl:attribute name="ValueRank">1</xsl:attribute>
            <xsl:attribute name="ArrayDimensions">0</xsl:attribute>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="ownedAttribute" mode="create-name">
        <xsl:choose>
            <xsl:when test="@name !=''">
                <xsl:attribute name="Name">
                    <xsl:apply-templates select="@name" mode="format-name"/>
                </xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="key('idlookup',@type)" mode="create-name"/>								
            </xsl:otherwise>
        </xsl:choose>                
    </xsl:template>
    
    <xsl:template match="*" mode="create-name">
        <xsl:attribute name="Name">
            <xsl:apply-templates select="@name" mode="format-name"/>
        </xsl:attribute>
    </xsl:template>
      
    
    <xsl:template match="*" mode="documentation">
        <xsl:apply-templates select="ownedComment" mode="documentation"/>
    </xsl:template>
    
    <xsl:template match="ownedComment[@xmi:type='uml:Comment']" mode="documentation">
         <xsl:apply-templates select="@body" mode="documentation"/>
    </xsl:template>
    
    <xsl:template match="@body" mode="documentation">
        <xsl:variable name="test" select="parse-xml-fragment(.)" as="document-node()"/>
            
        <xsl:variable name="text">            
            <xsl:apply-templates  select="$test"  mode="html"/>
        </xsl:variable> 
        
        <xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
            <xsl:value-of select="serialize($text)" disable-output-escaping="true" />
        <xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
        
        <!-- <xsl:attribute name="Documentation" select="serialize($text/*)"/> -->
    </xsl:template>
    
    <xsl:template match="html" mode="html">
        <xsl:apply-templates select="body/*" mode="html" />
    </xsl:template>
    
    <xsl:template match="node()" mode="html">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*" mode="html"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="text()" priority="2"  mode="html">
        <xsl:value-of select="normalize-space(.)"/>
    </xsl:template>
    
    <xsl:template match="@*" mode="html">
        <xsl:copy/>
    </xsl:template>
    
    <!-- normal Embedding -->
    
    <xsl:template match="ownedAttribute[@xmi:type='uml:Property' and not(exists(@association))]" mode="documentation">           
        <xsl:apply-templates select="ownedComment" mode="documentation"/>            
    </xsl:template>
    
    <!-- IDREF Mechanism -->
    
    <xsl:template match="ownedAttribute[@xmi:type='uml:Property' and exists(@association)]" mode="documentation">
        <xsl:apply-templates select="key('idlookup',@association)/ownedComment" mode="documentation"/>            
    </xsl:template>
    
    
    <xsl:template match="packagedElement[@xmi:type='uml:Class' and exists(generalization)]" mode="create-content-header">
        <xsl:element name="xs:complexContent">
            <xsl:element name="xs:extension">
                <xsl:apply-templates select="key('idlookup',generalization/@general)" mode="create-type-ref">
                    <xsl:with-param name="attribute-name" select="'base'"/>
                </xsl:apply-templates>
                <xsl:apply-templates select="." mode="create-content"/>
            </xsl:element>
        </xsl:element>        
    </xsl:template>

    <xsl:template match="packagedElement[@xmi:type='uml:Class' and not(exists(generalization))]" mode="create-content-header">
        <xsl:apply-templates select="." mode="create-content"/>
        <xs:attribute name="id" type="xs:ID" use="required"></xs:attribute>
        <xs:attribute name="immutable-global-iri" type="xs:anyURI"></xs:attribute>
    </xsl:template>
    
    

    

    
    <xsl:template match="upperValue" mode="create-cardinalities">
        <xsl:variable name="cardinality">
            <xsl:apply-templates select="." mode="create-cardinality-value"/>
        </xsl:variable>
        <xsl:if test="$cardinality!='1'">
            <xsl:attribute name="maxOccurs"><xsl:value-of select="$cardinality"/></xsl:attribute>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="lowerValue" mode="create-cardinalities">
        <xsl:variable name="cardinality">
            <xsl:apply-templates select="." mode="create-cardinality-value"/>
        </xsl:variable>                
        <xsl:if test="$cardinality!='1'">
            <xsl:attribute name="minOccurs"><xsl:value-of select="$cardinality"/></xsl:attribute>
        </xsl:if>        
    </xsl:template>
    
    <xsl:template match="*[not(exists(@value))]" mode="create-cardinality-value">
        <xsl:value-of select="'0'"/>
    </xsl:template>

    <xsl:template match="*[exists(@value)]" mode="create-cardinality-value">
        <xsl:choose>
            <xsl:when test="@value='*'"><xsl:text>unbounded</xsl:text></xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="@value"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    
    <xsl:template match="packagedElement[@xmi:type='uml:Enumeration' and @xmi:id=//Stereotypes:ClosedEnumeration/@base_Enumeration  and (@name = $whitelist/def:name)]" mode="create-type">
        <UADataType>
            <xsl:attribute name="NodeId" select="key('nodeid-lookup',@xmi:id,$nodeids-table)/@nodeid"></xsl:attribute>
            <xsl:attribute name="BrowseName">
                <xsl:value-of select="concat($PREFIX_NUM,':')"/>
                <xsl:apply-templates select="." mode="create-name"/>
            </xsl:attribute>
            <DisplayName><xsl:apply-templates select="@name" mode="format-name"/></DisplayName>
            <References>
                <Reference ReferenceType="HasSubType" IsForward="false">i=29</Reference>
            </References>
            <Definition>
                <xsl:attribute name="Name">
                    <xsl:value-of select="concat($PREFIX_NUM,':')"/>
                    <xsl:apply-templates select="." mode="create-name"/>
                </xsl:attribute>            
                <xsl:apply-templates
                    select="ownedLiteral[@xmi:type='uml:EnumerationLiteral']" mode="closed-enum-literals" />
            </Definition>
        </UADataType>                
    </xsl:template>

    <xsl:template match="packagedElement[@xmi:type='uml:Enumeration' and not(@xmi:id=//Stereotypes:ClosedEnumeration/@base_Enumeration) and (@name = $whitelist/def:name)]" mode="create-type">
        <UAObjectType>
            <xsl:attribute name="NodeId" select="key('nodeid-lookup',@xmi:id,$nodeids-table)/@nodeid"></xsl:attribute>
            <xsl:attribute name="BrowseName">
                <xsl:value-of select="concat($PREFIX_NUM,':')"/>
                <xsl:apply-templates select="." mode="create-name"/>
            </xsl:attribute>            
            <DisplayName><xsl:apply-templates select="@name" mode="format-name"/></DisplayName>
            <Documentation><xsl:apply-templates select="." mode="documentation"/></Documentation>
            <References>
                <Reference ReferenceType="HasSubType" IsForward="false">ns=1;i=1000</Reference>
            </References>
        </UAObjectType>
        <xsl:apply-templates
            select="ownedLiteral[@xmi:type='uml:EnumerationLiteral']" mode="open-enum-literals" />
    </xsl:template>
    
    <xsl:template match="ownedLiteral[@xmi:type='uml:EnumerationLiteral']" mode="closed-enum-literals">
        <Field>
            <xsl:attribute name="Name">
                <xsl:apply-templates select="@name" mode="format-name"/>
            </xsl:attribute>
            <xsl:attribute name="Value" select="position()-1"></xsl:attribute>
            <Description><xsl:apply-templates select="." mode="documentation"/></Description>                 
        </Field>		
    </xsl:template>    
    
    <xsl:template match="ownedLiteral[@xmi:type='uml:EnumerationLiteral']" mode="open-enum-literals">
        <UAObjectType>
            <xsl:attribute name="NodeId" select="key('nodeid-lookup',@xmi:id,$nodeids-table)/@nodeid"></xsl:attribute>
            <xsl:attribute name="BrowseName">
                <xsl:value-of select="concat($PREFIX_NUM,':')"/>
                <xsl:apply-templates select="." mode="create-name"/>
            </xsl:attribute>            
            <DisplayName><xsl:apply-templates select="@name" mode="format-name"/></DisplayName>
            <Documentation><xsl:apply-templates select="." mode="documentation"/></Documentation>
            <References>
                <Reference ReferenceType="HasSubType" IsForward="false">
                    <xsl:value-of select="key('nodeid-lookup',../@xmi:id,$nodeids-table)/@nodeid"/>
                </Reference>
            </References>     
        </UAObjectType>		
    </xsl:template>    
   
   <!--

    <xsl:template match="ownedLiteral[@xmi:type='uml:EnumerationLiteral']">
        <xs:enumeration>
            <xsl:attribute name="value">
                <xsl:apply-templates select="@name" mode="format-name"/>
            </xsl:attribute>
            <xsl:apply-templates select="." mode="meta-information"/>           
        </xs:enumeration>		
    </xsl:template>    
  
-->

    <xsl:template match="packagedElement[@xmi:type='uml:Class']" mode="create-element">
        <xsl:element name="xs:element">
            <xsl:attribute name="name"><xsl:apply-templates select="." mode="create-name"/></xsl:attribute>
            <xsl:attribute name="type"><xsl:apply-templates select="." mode="create-type-ref"/></xsl:attribute>
        </xsl:element>        
    </xsl:template>
    

           
    <xsl:template match="@*" mode="format-name">
        <xsl:variable name="tempName" select="normalize-space(.)"/>
        <xsl:variable name="name">
            <!-- strip leading '/' -->
            <xsl:if test="substring($tempName,1,1) != '/'">
                <xsl:value-of select="translate(substring($tempName,1,1),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
            </xsl:if>
            <xsl:value-of select="substring($tempName,2,string-length($tempName))"/>
        </xsl:variable>
        <xsl:value-of select="$name"/>
    </xsl:template>
    
    <xsl:template match="*" mode="create-type-ref">
        <xsl:param name="attribute-name" select="'type'"/>
        <xsl:variable name="name">
            <xsl:apply-templates select="@name" mode="format-name"/>
        </xsl:variable>
        <xsl:attribute name="{$attribute-name}">
            <xsl:choose>
                <xsl:when test="$name='Key_type'">
                    <xsl:text>xs:ID</xsl:text>
                </xsl:when>
                <xsl:when test="$name='String'">
                    <xsl:text>String</xsl:text>
                </xsl:when>
                <xsl:when test="$name='Double'">
                    <xsl:text>Double</xsl:text>
                </xsl:when>
                <xsl:when test="$name='Integer'">
                    <xsl:text>Integer</xsl:text>
                </xsl:when>
                <xsl:when test="$name='Int'">
                    <xsl:text>Integer</xsl:text>
                </xsl:when>
                <xsl:when test="$name='Boolean'">
                    <xsl:text>Boolean</xsl:text>
                </xsl:when>
                <xsl:when test="$name='Date'">
                    <xsl:text>DateTime</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="key('nodeid-lookup',@xmi:id,$nodeids-table)/@nodeid"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
    </xsl:template>
    
    

<!-- Overriding default templates -->
    <xsl:template match="*"/>
    
    <xsl:template match="@*"/>
    
    

</xsl:stylesheet>