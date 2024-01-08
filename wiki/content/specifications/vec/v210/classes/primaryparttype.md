---
title: PrimaryPartType
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - PrimaryPartType
menu_name: vec-2.1.0
---
<p> The primary type of the part defines the type of the part (e.g. ConnectorHousing, Fixing, etc.) Since the VEC supports dual use parts (e.g. Fixing &amp; WireProtection) the primary part type is necessary to define which specification associated to part is the primary character of the part. Therefore, all primary part types correspond to a PartOrUsageRelatedSpecification (e.g. ConnectorHousing --&gt; ConnectorHousingSpecification).      </p>      <p> The primary part type '<i>Other</i>' is used if the PartVersion is not further specified by the VEC, which means it has no PartOrUsageRelatedSpecification, only a GeneralTechnicalPartSpecification or a direct instance of PartOrUsageRelatedSpecification.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Antenna |  |
| Battery |  |
| BoltMountedFixing |  |
| BoltTerminal |  |
| BridgeTerminal |  |
| CableDuct |  |
| CableTie |  |
| Capacitor |  |
| CavityAccessory |  |
| CavityPlug |  |
| CavitySeal |  |
| ConnectorHousing |  |
| ConnectorHousingCap |  |
| ConnectorHousingCover |  |
| CorrugatedPipe |  |
| Diode |  |
| EdgeMountedFixing |  |
| EEComponent |  |
| Ferrite |  |
| Fitting |  |
| Fixing |  |
| Fuse |  |
| Grommet |  |
| HoleMountedFixing |  |
| MultiCavityPlug |  |
| MultiCavitySeal |  |
| MultiFuse |  |
| Other | <p> The <i>PrimaryPartType </i>&quot;<i>Other</i>&quot; is used for parts that are described by a direct instance of <i>PartOrUsageRelatedSpecification</i>. These are parts that do not have a specific classification in the VEC and can be described with a <i>PartOrUsageRelatedSpecification</i> and <i>CustomProperties.</i> The corresponding <i>Role</i> is the <i>SpecificRole.</i>      </p> |
| OpenWireEndTerminal |  |
| OpenWireEnd | {{< deprecated since="2.1.0" reason="The literal is violating VEC conventions. OpenWireEndTerminal shall be used.">}} |
| PartStructure | <p> The <i>PrimaryPartType </i>&quot;<i>PartStructure</i>&quot; has an inconsistency with VEC&#160;conventions for historical reasons, which is kept for backwards compatibility. The corresponding <i>PartOrUsageRelatedSpecification</i> is the <i>PartStructureSpecification. </i>However, the corresponding <i>Role</i> is the <i>PartWithSubComponentsRole</i>.      </p> |
| PluggableTerminal |  |
| PotentialDistributor |  |
| Relay |  |
| RingTerminal |  |
| ShrinkableTube |  |
| SpliceTerminal |  |
| Stripe |  |
| Tape |  |
| Terminal |  |
| Tube |  |
| Wire |  |
| WireEndAccessory |  |
| WireProtection |  |
