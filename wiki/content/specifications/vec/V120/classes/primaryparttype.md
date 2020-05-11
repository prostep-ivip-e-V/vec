---
title: PrimaryPartType
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - PrimaryPartType
menu_name: vec-1.2.0
---
<p> The primary type of the part defines the type of the part (e.g. ConnectorHousing, Fixing, etc.) Since the VEC supports dual use parts (e.g. Fixing &amp; WireProtection) the primary part type is necessary to define which specification associated to part is the primary character of the part. Therefore, all primary part types correspond to a PartOrUsageRelatedSpecification (e.g. ConnectorHousing --&gt; ConnectorHousingSpecification).      </p>      <p> The primary part type 'Other' is used if the PartVersion is not further specified by the VEC, which means it has no PartOrUsageRelatedSpecification, only a GeneralTechnicalPartSpecification or a direct instance of PartOrUsageRelatedSpecification.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  | [ClosedEnumeration]({{< relref "closedenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Antenna |  |
| Battery |  |
| BoltMountedFixing |  |
| BoltTerminal |  |
| CableDuct |  |
| CableTie |  |
| Capacitor |  |
| CavityAccessory |  |
| CavityPlug |  |
| CavitySeal |  |
| ConnectorHousing |  |
| ConnectorHousingCap |  |
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
| Other |  |
| OpenWireEnd |  |
| PartStructure |  |
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
