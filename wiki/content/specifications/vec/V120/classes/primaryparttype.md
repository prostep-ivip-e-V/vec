---
title: PrimaryPartType
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu_name: vec120

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 
---
<html>   <head>     </head>   <body>     <p> The primary type of the part defines the type of the part (e.g. ConnectorHousing, Fixing, etc.) Since the VEC supports dual use parts (e.g. Fixing &amp; WireProtection) the primary part type is necessary to define which specification associated to part is the primary character of the part. Therefore all primary part types correspond to a PartOrUsageRelatedSpecification (e.g. ConnectorHousing --&gt; ConnectorHousingSpecification).     </p>      <p> The primary part type 'Other' is used if the PartVersion is not further specified by the VEC, which means it has no PartOrUsageRelatedSpecification, only a GeneralTechnicalPartSpecification or a direct instance of PartOrUsageRelatedSpecification.      </p>    </body> </html> 
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
