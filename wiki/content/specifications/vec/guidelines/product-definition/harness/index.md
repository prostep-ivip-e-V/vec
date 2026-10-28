---
title: "Harness (KBL/VEC Mapping)"
#linktitle: Link in Sidemenu
type: specs
toc: true
authors: [ "becker"]
categories: []
date: 2025-02-13
lastmod: 2026-10-28T12:00:00+01:00
draft: false
review: true

classes:
  - DocumentVersion
  - PartVersion
  - PartOccurrence
  - CompositionSpecification
  - PartStructureSpecification
  - PartStructureContentType
  - PartWithSubComponentsRole
  - VariantConfigurationSpecification
  - VariantConfiguration
  - ConfigurationConstraintSpecification
  - ConfigurationConstraint
  - AliasIdentification
  - Creation
  - Approval
  - ChangeDescription
  - CopyrightInformation
  - Project
  - GeneralTechnicalPartSpecification
  - ConnectorHousingSpecification
  - PlaceableElementSpecification
  - TerminalSpecification
  - WireReceptionSpecification
  - TerminalReceptionSpecification
  - CavitySealSpecification
  - CavityPlugSpecification
  - WireSpecification
  - WireElement
  - WireElementSpecification
  - InsulationSpecification
  - CoreSpecification
  - WireProtectionSpecification
  - FixingSpecification
  - PartOrUsageRelatedSpecification
  - EEComponentSpecification
  - HousingComponent
  - PinComponent
  - FuseSpecification
  - ConnectorHousingRole
  - SlotReference
  - CavityReference
  - CavityPlugRole
  - WireRole
  - WireElementReference
  - WireLength
  - WireProtectionRole
  - TapeRole
  - EEComponentRole
  - HousingComponentReference
  - PinComponentReference
  - ModuleListSpecification
  - ModuleList
  - ModuleFamilySpecification
  - ModuleFamily
  - ContactingSpecification
  - ContactPoint
  - CavityMounting
  - WireMounting
  - WireEnd
  - Signal
  - TopologySpecification
  - TopologyNode
  - TopologySegment
  - SegmentLength
  - SegmentCrossSectionArea
  - HarnessGeometrySpecification3D
  - HarnessDrawingSpecification2D
  - BuildingBlockSpecification3D
  - BuildingBlockSpecification2D
  - GeometryNode3D
  - GeometrySegment3D
  - NURBSCurve
  - OccurrenceOrUsageViewItem3D
  - Transformation3D
  - PlacementSpecification
  - OnPointPlacement
  - OnWayPlacement
  - NodeLocation
  - SegmentLocation
  - PlaceableElementRole

history:
  - date: 2025-02-13
    description: "Started Implementation Guideline for Mapping a Harness in the VEC"
  - date: 2026-09-28T00:00:00Z
    description: "Housekeeping: added missing content to the harness listing, aligned diagram labels, filled in classes."
    ghIssue: "1158"
  - date: 2026-10-02T00:00:00Z
    description: "Instantiation of context relevant subcomponents; no SubComponent references for in-place modules."
    ghIssue: "1174"
  - date: 2026-10-05T00:00:00Z
    description: "Layer rule moved to Composite Parts; COMPONENTS / MODULES as recommendation; variant specifications per harness description."
    ghIssue: "1178"
  - date: 2026-10-13T00:00:00Z
    description: "One PartMaster document per component scoped to this mapping."
    ghIssue: "1196"
  - date: 2026-10-28T00:00:00Z
    description: "Restructured along the content of a harness description; overview of the mapping; KBL and VEC example files for download."
  - date: 2026-10-28T00:00:00Z
    description: "Parts and documents: PDM attributes, identity of the documents, multi-classified parts, title block information, external references."
  - date: 2026-10-28T00:00:00Z
    description: "Part master data: specifications per KBL part class, general technical information, connector housings, terminals, cavity seals and plugs."
  - date: 2026-10-28T00:00:00Z
    description: "Part master data of wires: single cores, multi-core wires, attributes and colour types."
  - date: 2026-10-28T00:00:00Z
    description: "Part master data of wire protections, fixings, accessories and co-pack parts."
  - date: 2026-10-28T00:00:00Z
    description: "Part master data of component boxes, fuses and other E/E components; section open topics."
  - date: 2026-10-28T00:00:00Z
    description: "Part master data of assembly parts."
  - date: 2026-10-28T00:00:00Z
    description: "Instances of components: roles per KBL occurrence, connectors, wires, wire protections, E/E components, instantiation of assemblies."
  - date: 2026-10-28T00:00:00Z
    description: "Bill of material: snippets from the example file, modules with Content=variant, harness configurations, proposal for occurrences outside of modules."
  - date: 2026-10-28T00:00:00Z
    description: "Variant management: module configurations under the harness (option code, module list), module families, harness configurations."
  - date: 2026-10-28T00:00:00Z
    description: "Connectivity: KBL connections and contact points in the wiring layer, multi-crimps and splices, signals."
  - date: 2026-10-28T00:00:00Z
    description: "Topology: split of KBL nodes and segments into topology, geometry and placement; lengths and cross section areas."
  - date: 2026-10-28T00:00:00Z
    description: "Geometry: 2D and 3D, building blocks, centre curves with explicit knots, placement of occurrences as view items."
  - date: 2026-10-28T00:00:00Z
    description: "Placement: node references, fixing assignments and protection areas; relative and absolute locations; wire protections over several segments."

links:
  - icon_pack: fas
    icon: file-code
    name: vobes_sample_kbl24_mit_sicherungstraeger.kbl
    url: 'vobes_sample_kbl24_mit_sicherungstraeger.kbl'
  - icon_pack: fas
    icon: file-code
    name: vobes_sample_kbl24_mit_sicherungstraeger.vec
    url: 'vobes_sample_kbl24_mit_sicherungstraeger.vec'

menu:
  vec-guidelines:
    parent: product-definition
    weight: 500

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 500
---
{{< gh-review >}}

> **Editorial Note:** Since the creation of this implementation guideline will span an extended period, the current work-in-progress versions will be published continuously to allow the community to review and provide feedback.

This implementation guideline outlines the core concepts needed to create a dataset for a single wiring harness in the VEC, which is also the use case that lies in the center of the scope of the KBL.

To ease adoption for those already familiar with the KBL, this guideline is structured as a mapping from the KBL model to the VEC model: it explains the VEC concepts together with the KBL concepts they correspond to and shows where the information of a KBL file is found in a VEC. Additionally, a reference implementation of a KBL-to-VEC converter is available on [GitHub](https://github.com/4Soft-de/harness-model/tree/develop/kbl2vec/).

{{% callout note %}} **Disclaimer:** This implementation guideline (along with the converter implementation) covers only the scope of the KBL. The VEC is a far more expressive model.

As a result, there are scenarios where the VEC could convey information with much clearer semantics. However, the necessary data for this level of precision is often not available in the KBL (e.g., detailed component data) or is embedded through custom properties and process/tool-specific dialects. "Healing" such data would require in-depth knowledge of the specific KBL dialect used and, in many cases, the integration of additional information sources (side-loading). This task lies outside the scope of this guideline. In situations where it is obvious that fixing of such deficiencies is advised, a **Data Quality** note is added.

The goal of this guideline is to demonstrate how standard KBL concepts map to VEC concepts—without improving the quality of the underlying information. While the VEC could indeed express many aspects more precisely, this guideline focuses on maintaining consistency with the original KBL data quality.{{% /callout %}}

There are fundamentally two approaches to describing such a mapping. One can either start from the source model, explaining how its information is distributed into the target model, or take the opposite approach by defining which information is needed in the target model and where to find it in the source model. For this implementation guideline, the latter approach was chosen as the strategy.

On the one hand, the guideline's focus is on how to describe a harness in the VEC, which naturally suggests describing the mapping from this perspective. On the other hand, the VEC is the more precise model, meaning that many KBL concepts are distributed across different elements within the VEC. For example, a KBL {{< kbl-class Node >}} contains information relevant to the VEC concepts of a {{< vec-class TopologyNode >}} , {{< vec-class GeometryNode2D >}} and {{< vec-class GeometryNode3D >}}. It is more logical to describe the mapping of topology and 2D/3D geometry as cohesive units rather than addressing all three concepts in a mixed manner starting from the KBL Node.

The implementation guideline focuses on the structural mapping and covers individual attributes only where they are essential for understanding a concept. If you are interested in those details, please refer to the reference implementation. The guideline describes the concepts and not the converter: where the reference implementation currently deviates from this guideline or does not yet cover a concept, this is pointed out briefly.

The guideline follows a logical order rather than an order dictated by model dependencies. Since the VEC is a graph—not a strict tree—it allows cross-references between branches. As a result, you may encounter cases where a model element references another model element whose mapping is described later in this guideline.

A converter can address this challenge with a two-phase approach, as the reference implementation does: first all VEC elements are created, then the references between them are resolved.

The order of the sections follows the content of a harness description in the VEC (see [Product Definition of a Harness]({{< relref "../#harness-description-document-structure-and-typical-content" >}})):

1. The [Overview]({{< relref "#overview" >}}) shows how the content of a KBL file is distributed across the VEC and introduces the principles that recur in all sections.
2. [Parts and Documents]({{< relref "#parts-and-documents" >}}) explains how KBL parts become {{< vec-class PartVersion >}}s and {{< vec-class DocumentVersion >}}s.
3. [Part Master Data]({{< relref "#part-master-data" >}}) describes the components used in the harness (connectors, terminals, wires, ...).
4. [Harness Description]({{< relref "#harness-description" >}}) describes the harness itself: the instances of the components, the bill of material, the variants, the connectivity, and the topology with geometry, placement and routing.
5. [Basic Data Types]({{< relref "#basic-data-types" >}}) covers the value types used everywhere (units, numerical values, strings, custom properties).

{{% callout note %}}
VEC XML snippets in this guideline are taken from the KBL to VEC conversion output of the reference implementation. Input for that is the sample KBL file [Volkswagen - VOBES - Component Box]({{< relref "/sample/2015-03-19-volkswagen-vobes-component-box" >}}). Both the KBL file and the resulting VEC file can be downloaded at the top of this page. The KBL file is the version used in the tests of the reference implementation. It differs from the published sample in two details: the node reference to the component box is corrected (in the published sample it references the `Component_box_occurrence`, which cannot be placed on a node), and a `Housing_code` is added to one connector housing.

Note the versions of the example files: the KBL file is a KBL 2.4 file, while the KBL class links in this guideline refer to KBL 2.5 (the classes used here are the same in both versions). The VEC file declares `VecVersion` 2.1.0, although this guideline targets VEC 2.2; where this makes a difference, it is mentioned in the text.

Topics that are not contained in this sample (e.g. wire protections, fixings, multi-core wires, module lists) are illustrated with other [sample files](https://github.com/4Soft-de/harness-model/tree/develop/kbl2vec/src/test/resources) of the reference implementation.
{{% /callout %}}

## Overview

Everything starts with the model root element {{< vec-class veccontent >}}, see the figure below (all attributes omitted).

{{< figure src="veccontent.png" title="VecContent" numbered="true" lightbox="true">}}

A KBL file (`KBL_container`) describes exactly one harness together with the parts used in it. In the VEC, this information is distributed as follows (the figure is conceptual and not precise syntax):

{{< figure src="harness-overview.svg" title="Distribution of the KBL Content in the VEC" numbered="true" lightbox="true" >}}

- Every KBL {{< kbl-class Part >}} (including the {{< kbl-class Harness >}} and its {{< kbl-class Module >}}s) is identified by a {{< vec-class PartVersion >}}.
- The properties of the components (connectors, terminals, wires, ...) are described in one `PartMaster` document per component.
- Everything that is specific to the harness—the instances of the components, the bill of material, the variants, the connectivity, the topology, the geometry, the placements and the routings—is contained in a single `HarnessDescription` document.

The following table shows where the KBL content is found in the VEC and in which section of this guideline the mapping is described.

| KBL | VEC | Section |
|-----|-----|---------|
| {{< kbl-class Part >}} (all subclasses) | {{< vec-class PartVersion >}} | [PartVersions]({{< relref "#partversions" >}}) |
| Components (e.g. {{< kbl-class Connector_housing >}}, {{< kbl-class General_wire >}}) | {{< vec-class DocumentVersion >}} (`PartMaster`) with {{< vec-class PartOrUsageRelatedSpecification >}}s | [Part Master Data]({{< relref "#part-master-data" >}}) |
| {{< kbl-class Harness >}} | {{< vec-class DocumentVersion >}} (`HarnessDescription`) | [Harness Description]({{< relref "#harness-description" >}}) |
| {{< kbl-class Connection_or_occurrence >}} | {{< vec-class PartOccurrence >}} with {{< vec-class Role >}}s | [Instances of Components]({{< relref "#instances-of-components" >}}) |
| {{< kbl-class Module >}}, {{< kbl-class Harness_configuration >}}, {{< kbl-class Assembly_part >}} | {{< vec-class PartStructureSpecification >}} | [Bill of Material]({{< relref "#bill-of-material--part-structure" >}}) |
| {{< kbl-class Module_configuration >}} (of a module or of the harness), {{< kbl-class Module_family >}} | {{< vec-class VariantConfigurationSpecification >}}, {{< vec-class ConfigurationConstraintSpecification >}}, {{< vec-class ModuleListSpecification >}}, {{< vec-class ModuleFamilySpecification >}} | [Variant Management]({{< relref "#variant-management-logistic-control-information" >}}) |
| {{< kbl-class Connection >}}, {{< kbl-class Contact_point >}} | {{< vec-class WireElementReference >}}, {{< vec-class ContactingSpecification >}}, {{< vec-class SignalSpecification >}} | [Connectivity]({{< relref "#connectivity" >}}) |
| {{< kbl-class Node >}}, {{< kbl-class Segment >}} | {{< vec-class TopologySpecification >}} | [Topology]({{< relref "#topology" >}}) |
| {{< kbl-class Cartesian_point >}}, {{< kbl-class B_spline_curve >}}, `Placement` | {{< vec-class BuildingBlockSpecification3D >}} / {{< vec-class BuildingBlockSpecification2D >}} | [Geometry]({{< relref "#geometry" >}}) |
| `Referenced_components`, {{< kbl-class Fixing_assignment >}}, {{< kbl-class Protection_area >}} | {{< vec-class PlacementSpecification >}} | [Placement]({{< relref "#placement" >}}) |
| {{< kbl-class Routing >}} | {{< vec-class RoutingSpecification >}} | [Routing]({{< relref "#routing" >}}) |
| {{< kbl-class Unit >}}, {{< kbl-class Numerical_value >}}, ... | {{< vec-class Unit >}}, {{< vec-class NumericalValue >}}, ... | [Basic Data Types]({{< relref "#basic-data-types" >}}) |

### Mapping Principles

The following principles recur throughout the mapping:

**Part and usage.** Like the KBL, the VEC distinguishes between the definition of a component type (KBL {{< kbl-class Part >}}, e.g. {{< kbl-class Connector_housing >}}) and its use in the harness (KBL {{< kbl-class Connection_or_occurrence >}}, e.g. {{< kbl-class Connector_occurrence >}}). In the VEC, the definition is made with {{< vec-class PartOrUsageRelatedSpecification >}}s in the `PartMaster` document of the component, the use with {{< vec-class PartOccurrence >}}s and {{< vec-class Role >}}s in the harness description (see the guideline [Component Instances]({{< relref "../component-instances" >}})). Since the KBL already follows this distinction, most concepts can be mapped in a straightforward manner.

**One KBL element, several VEC elements.** The VEC is more modular than the KBL. A KBL element often contains information that belongs to different views in the VEC. For example, a KBL {{< kbl-class Node >}} contains information about the topology ({{< vec-class TopologyNode >}}), the geometry ({{< vec-class GeometryNode2D >}} or {{< vec-class GeometryNode3D >}}) and the placement of components ({{< vec-class OnPointPlacement >}}). Each view is described in its own section of this guideline.

**Identification.** VEC elements are identified by their `Identification` attribute, which must be unique within its context (see [Identifiers]({{< relref "../../general/identifiers" >}})). Where the KBL provides an `Id`, it is used. Where the VEC requires an identification that has no counterpart in the KBL (e.g. for the specifications of a part), the reference implementation derives one, e.g. from the abbreviated class name and the part number (`CHS-ECP001706` for the {{< vec-class ConnectorHousingSpecification >}} of the part `ECP001706`). Such derived identifications are a convention of the reference implementation and not a VEC rule.

## Parts and Documents

In the KBL, a {{<kbl-class Part>}} combines the identification of a component (part number, version, company) with its technical description. The VEC separates both: the {{<vec-class PartVersion>}} identifies the part, the technical description is contained in the {{<vec-class Specification>}}s of a {{<vec-class DocumentVersion>}} (see [General Structure – Parts and Documents]({{<relref "../../key-concepts/general-structure#parts-and-documents">}})). Each KBL part therefore results in a {{<vec-class PartVersion>}} and, for a component, in a `PartMaster` document.

### PartVersions

The concept of parts is quite different in KBL and VEC. In the VEC a {{<vec-class PartVersion>}} is just a PDM-Header for the part. The various aspects of a part (e.g. is it a wire or connector) are handled by different types of {{<vec-class PartOrUsageRelatedSpecification >}}s contained in the {{<vec-class DocumentVersion >}} describing the part. In the KBL, the different types of parts are expressed as subclasses of {{<kbl-class Part>}}. The concept in the VEC that most closely reflects the approach of the KBL is the {{<vec-class PrimaryPartType >}}. 

{{% callout note %}}
**Data Quality**: The mapping between KBL {{<kbl-class Part>}} subtypes and the {{<vec-class PrimaryPartType>}} is merely a preliminary "best guess" approach. In many cases, the "standard" KBL provides only a very general classification, whereas the VEC allows for more specific distinctions. For example, the KBL only recognizes {{<kbl-class Wire_Protection>}}, while the VEC differentiates between {{<vec-class TubeSpecification>}}, {{<vec-class TapeSpecification>}}, and others.
{{% /callout %}}

The following {{<vec-class PrimaryPartType >}} could be used for KBL Parts:

| KBL Class   | VEC PrimaryPartType   |
|--------------|------------------------|
| {{<kbl-class Accessory >}} | `Other` |
| {{<kbl-class Co_pack_part >}} | `Other` |
| {{<kbl-class Cavity_Plug >}} | `CavityPlug` |
| {{<kbl-class Cavity_seal >}} | `CavitySeal` |
| {{<kbl-class General_wire >}} | `Wire` |
| {{<kbl-class Connector_housing >}} | `ConnectorHousing` |
| {{<kbl-class Fixing >}} | `Fixing` |
| {{<kbl-class General_Terminal >}} | `Terminal` |
| {{<kbl-class Wire_Protection >}} | `WireProtection` |
| {{<kbl-class Harness >}} | `PartStructure` |
| {{<kbl-class Harness_configuration >}} | `PartStructure` |
| {{<kbl-class Module >}} | `PartStructure` |
| {{<kbl-class Assembly_Part >}} | `PartStructure` |
| {{<kbl-class Fuse >}} | `Fuse` |
| {{<kbl-class Component_box >}} | `EEComponent` |
| {{<kbl-class Component >}} | `EEComponent` |

When mapping into the VEC, a {{<vec-class PartVersion >}} Object is required for each KBL {{<kbl-class Part>}}. Those can be found under `/KBL_container/(Accessory|AssemblyPart|CavityPlug|...)`, `/KBL_container/Harness/Module` and `/KBL_container/Harness/Harness_configuration`.

The PDM attributes of the {{<kbl-class Part>}} are mapped directly to the {{<vec-class PartVersion>}}: `Part_number`, `Company_name` and `Version` become `PartNumber`, `CompanyName` and `PartVersion`, which together identify the part in the VEC. `Abbreviation` and `Description` (and `Localized_description`) become localized strings (see [Strings and Localized Strings]({{<relref "#strings-and-localized-strings">}})). Each {{<kbl-class Alias_identification>}} becomes an {{<vec-class AliasIdentification>}}, where the KBL `Description` ("the type of the Alias_identification") is mapped to the `Type`. The `Part_number_type` corresponds to the `PartNumberType` of the {{<vec-class PartVersion>}}.

```xml
<!-- KBL -->
    <Connector_housing id="id_315_0">
        <Part_number>ECP001706</Part_number>
        <Company_name>MaybeAnyCompany</Company_name>
        <Alias_id id="id_368_27">
            <Alias_id>TBL001038B</Alias_id>
            <Scope>VOBES</Scope>
            <Description>tab_number</Description>
        </Alias_id>
        <Version>1</Version>
        <Abbreviation>/NULL</Abbreviation>
        <Description>BUCHSENGEHAEUSE_6-POL</Description>
        ...
    </Connector_housing>
<!-- VEC -->
  <PartVersion id="PartVersion_id_315_0">
    ...
    <Description xsi:type="vec:LocalizedString" id="LocalizedString_00238">
      <LanguageCode>De</LanguageCode>
      <Value>BUCHSENGEHAEUSE_6-POL</Value>
    </Description>
    <CompanyName>MaybeAnyCompany</CompanyName>
    <PartNumber>ECP001706</PartNumber>
    <PartVersion>1</PartVersion>
    <PrimaryPartType>ConnectorHousing</PrimaryPartType>
    <AliasId id="AliasIdentification_id_368_27">
      <IdentificationValue>TBL001038B</IdentificationValue>
      <Type>tab_number</Type>
      <Scope>VOBES</Scope>
    </AliasId>
  </PartVersion>
```

{{% callout note %}}
**Data Quality**: The KBL allows to have the same `Part_number` under different classifications (see {{<kbl-class Part>}} for more details). In the VEC, multiple occurrences of the same part version are considered a semantic error. In KBL data, there are two different reasons for such duplicates, which have to be treated differently:

1. **The same part is used in different roles.** For example, a tape can be used as {{<kbl-class Wire_protection>}} or as {{<kbl-class Accessory>}} to some other part, or a cable tie as {{<kbl-class Accessory>}} and as {{<kbl-class Fixing>}}. Due to other modeling approaches in the VEC, there is no longer any need for this. The duplicates are merged into a single {{<vec-class PartVersion>}} whose `PartMaster` document contains all specifications that are required for the different aspects of the part (see [Hybrid and Composite Components]({{<relref "../component-description#hybrid-and-composite-components">}})). The occurrences are not affected: each of them references the merged {{<vec-class PartVersion>}} and has the role that corresponds to its usage.
2. **A workaround for terminals without a connector housing.** Typical examples are the cable lugs in VOBES data, which are defined both as {{<kbl-class Connector_housing>}} and as {{<kbl-class General_terminal>}} with the same part number (e.g. `ECP001135` in the example file). Here, the {{<kbl-class Connector_housing>}} does not describe a real component: it is a "virtual" housing that is only needed because the KBL can attach wires to a terminal only via a contact point in a connector occurrence. Such parts must **not** be merged into one {{<vec-class PartVersion>}} with a {{<vec-class ConnectorHousingSpecification>}} and a {{<vec-class TerminalSpecification>}}. Instead, the virtual housing has to be eliminated, which also changes the occurrences and the contacting. This is explained in detail in [Connector Housings – Virtual Connector Housings]({{<relref "#connector-housings">}}).

Deduplication should be carried out in post-processing. The reference implementation does not perform it yet.
{{% /callout %}}

### DocumentVersions

{{< gh-review "1196" >}}

In the VEC, all payload data is contained within {{<vec-class DocumentVersion>}}s. Typically, you would structure those according to the actual documents used in the process. Unfortunately, this concept in its detail form is not present in the KBL. Therefore, for the generic conversion described here, practical assumptions need to be made:

1. It is common practice to describe components in individual datasets/documents and publish them separately &rarr; one {{<vec-class  DocumentVersion >}} for each harness component (e.g. connector, wire and terminal, see [Partitioning and Sizing]({{<relref "../../general/partitioning-sizing-packaging/#partitioning-and-sizing">}})), see section [Part Master Data]({{<relref "#part-master-data">}}).
1. It is also common for a wiring harness to be fully described in a single 150% dataset, containing all information about the used component occurrences, variants, connectivity, dimensioning, and so on &rarr; one {{< vec-class DocumentVersion >}} for the harness itself, see section [Harness Description]({{<relref "#harness-description">}}).

This means that, for this mapping, a {{<vec-class DocumentVersion>}} with `DocumentType=PartMaster` must be created for each component used in the wiring harness. These are all instances of {{<kbl-class Part>}} in the KBL except instances of {{<kbl-class Part_With_Title_Block>}}.

For the {{<kbl-class Harness>}} itself, a {{<vec-class DocumentVersion>}} with `DocumentType=HarnessDescription` is created. This document contains all relevant information about the harness as well as the {{<vec-class specification>}}s for the {{<kbl-class Module>}}s and {{<kbl-class Harness_configuration>}}s.

#### Identity of the Documents

Since the KBL has no explicit document concept, the identity of the documents must be derived. The natural choice is the identity of the described part: `DocumentNumber`, `DocumentVersion` and `CompanyName` of the document are taken from `Part_number`, `Version` and `Company_name` of the part, and the document references the part as `ReferencedPart`. If the identities of the actual documents in the process are known, they should be used instead.

```xml
  <DocumentVersion id="DocumentVersion_id_315_0">
    ...
    <CompanyName>MaybeAnyCompany</CompanyName>
    <DocumentNumber>ECP001706</DocumentNumber>
    <DocumentType>PartMaster</DocumentType>
    <DocumentVersion>1</DocumentVersion>
    <ReferencedPart>PartVersion_id_315_0</ReferencedPart>
    <RelatedDocument>DocumentVersion_External_reference_1</RelatedDocument>
    <Specification xsi:type="vec:ConnectorHousingSpecification" id="ConnectorHousingSpecification_id_315_0">
      <Identification>CHS-ECP001706</Identification>
      ...
```

The same applies to the `HarnessDescription`, whose identity is derived from the {{<kbl-class Harness>}}. A harness description defines not only the harness, but also its modules and harness configurations. All {{<vec-class PartVersion>}}s defined in the document should therefore be referenced as `ReferencedPart` (see [Product Definition of a Harness]({{<relref "../#harness-description-document-structure-and-typical-content">}})). The reference implementation currently references only the {{<vec-class PartVersion>}} of the harness.

```xml
  <DocumentVersion id="DocumentVersion_id_328_0_1">
    ...
    <CompanyName>MaybeAnyCompany</CompanyName>
    <DocumentNumber>LTG0011200</DocumentNumber>
    <DocumentType>HarnessDescription</DocumentType>
    <DocumentVersion>2.4.0</DocumentVersion>
    <ReferencedPart>PartVersion_id_328_0</ReferencedPart>
    <RelatedDocument>DocumentVersion_External_reference_12 DocumentVersion_id_322_0 DocumentVersion_id_322_1</RelatedDocument>
    ...
```

### Title Block and PDM Information

The KBL distributes the information of a drawing title block over several places: {{<kbl-class Creation>}}, {{<kbl-class Approval>}} and {{<kbl-class Change_description>}} are defined directly in the `KBL_container` and reference the parts they apply to (`Is_applied_to`); a {{<kbl-class Part>}} can have {{<kbl-class Change>}}s and a `Copyright_note`; and the {{<kbl-class Part_with_title_block>}} (i.e. the {{<kbl-class Harness>}}, {{<kbl-class Module>}} and {{<kbl-class Harness_configuration>}}) adds project and car classification information. In the VEC, this is meta information of the {{<vec-class DocumentVersion>}} that contains the definition (see [PDM Information]({{<relref "../../pdm-information">}})), and in some cases of the {{<vec-class PartVersion>}}.

| KBL | VEC |
|-----|-----|
| {{<kbl-class Creation>}} (`Name`, `Department`, `Date`) | {{<vec-class Creation>}} of the {{<vec-class DocumentVersion>}} |
| {{<kbl-class Approval>}} (`Name`, `Department`, `Date`, `Type_of_approval`) | {{<vec-class Approval>}} of the {{<vec-class DocumentVersion>}} |
| `Change` ({{<kbl-class Change>}}) and {{<kbl-class Change_description>}} | {{<vec-class ChangeDescription>}} of the {{<vec-class DocumentVersion>}} |
| `Copyright_note` | {{<vec-class CopyrightInformation>}} in the {{<vec-class VecContent>}}, referenced by the {{<vec-class DocumentVersion>}} / {{<vec-class PartVersion>}} |
| `Project_number`, `Car_classification_level_2` to `_4` | {{<vec-class Project>}} in the {{<vec-class VecContent>}}, referenced by the {{<vec-class PartVersion>}} |

The target {{<vec-class DocumentVersion>}} of a {{<kbl-class Creation>}}, {{<kbl-class Approval>}} or {{<kbl-class Change_description>}} is the document that describes the part referenced by `Is_applied_to`. The structures are not identical: in the VEC, persons are described by a {{<vec-class Person>}}, and some attributes are mandatory that have no KBL source (e.g. the `Status` of an {{<vec-class Approval>}}), so they have to be filled with a default value (see [Default Values]({{<relref "../../general/default-values">}})).

The title block information of the KBL {{<kbl-class Harness>}} belongs to the `HarnessDescription`. The title block information of a {{<kbl-class Module>}} or {{<kbl-class Harness_configuration>}} does not have a document of its own in the VEC, since modules and configurations are defined within the `HarnessDescription`. Where it differs from the harness, it can only be preserved on the {{<vec-class PartVersion>}} (e.g. {{<vec-class Project>}}, {{<vec-class CopyrightInformation>}}).

{{% callout note %}}
**Data Quality**: The dates in the KBL are strings without a defined format (e.g. `270115` in the example file), whereas the VEC uses `xs:date` / `xs:dateTime`. A conversion requires knowledge of the date format used in the KBL dialect.

The reference implementation does not convert the title block information yet.
{{% /callout %}}

### External References

A KBL {{<kbl-class External_reference>}} identifies a document that is not part of the KBL file (e.g. a 3D model or a drawing). Its counterpart in the VEC is a {{<vec-class DocumentVersion>}} that contains only PDM information and no specifications (see [Usages of the DocumentVersion]({{<relref "../../key-concepts/general-structure#usages-of-the-documentversion">}})). `Document_number`, `Change_level`, `Data_format`, `Creating_system` and `Location` are mapped to the attributes of the same meaning. The KBL `Document_type` literals (`part master`, `geometry model`, `harness description`, ...) have direct counterparts in the VEC {{<vec-class DocumentType>}} (`PartMaster`, `GeometryModel`, `HarnessDescription`, ...). Values outside the KBL enumeration are kept as they are.

```xml
<!-- KBL -->
    <External_reference id="External_reference_1">
        <Document_type>EKR</Document_type>
        <Document_number>ECP001706</Document_number>
        <Change_level>011112</Change_level>
        <File_name>ECP001706.CATPart</File_name>
        <Data_format>catPart</Data_format>
        <Creating_system>CATIA V5R19 SP9</Creating_system>
    </External_reference>
<!-- VEC -->
  <DocumentVersion id="DocumentVersion_External_reference_1">
    <CompanyName>ACME Inc.</CompanyName>
    <DocumentNumber>ECP001706</DocumentNumber>
    <DocumentType>EKR</DocumentType>
    <DocumentVersion>011112</DocumentVersion>
    <CreatingSystem>CATIA V5R19 SP9</CreatingSystem>
    <DataFormat>catPart</DataFormat>
    <FileName>ECP001706.CATPart</FileName>
  </DocumentVersion>
```

Two details need attention:

- The `CompanyName` is mandatory in the VEC, but the KBL {{<kbl-class External_reference>}} has no company. If the company is not known from the context, `/NULL` should be used (see [Default Values]({{<relref "../../general/default-values">}})). The value `ACME Inc.` in the example is a placeholder of the reference implementation.
- The `FileName` of a VEC {{<vec-class DocumentVersion>}} is reserved for documents that are part of the VEC package; otherwise it shall be omitted (see [External References]({{<relref "../../key-concepts/external-references">}})). The KBL `File_name` refers to a file outside of the KBL, so it should only be kept if the document is packaged together with the VEC file. The document can still be resolved via its domain key or via the `Location`, if given in the KBL.

The KBL `External_references` of a {{<kbl-class Part>}} are the documents associated with the part (e.g. its 3D model). In the VEC, this relation can be expressed with different associations; the one with the most specific semantics should be chosen (see [External References]({{<relref "../../key-concepts/external-references">}})). For documents describing the part, this is `ReferencedPart` of the referenced {{<vec-class DocumentVersion>}}. The reference implementation uses the more general `RelatedDocument` of the `PartMaster` document (see the example above).


## Part Master Data

For all components used in a wiring harness, a minimum set of part master data is required. 
A `PartMaster` document contains all {{< vec-class PartOrUsageRelatedSpecification >}}s that are required to describe the component. For a general description of this concept see  the Guideline "[Component Description]({{<relref "../component-description">}})". The specifications that have to be created are listed below. The mapping of those is described in the following sections.

{{% callout note %}}
**Data Quality**: Since the scope of the KBL is the product definition of a harness, the contained master data is limited to the bare minimum (e.g. cavities of a connector, cross section area and color of the wire). On the other hand, the VEC offers a wide range of options for a detailed component description. In a real scenario, it would therefore be more likely to enrich the data with information from a library during conversion than to transfer the master data from the KBL directly 1:1.
{{% /callout %}}

The following table defines the {{<vec-class PartOrUsageRelatedSpecification >}} that are used to define each {{<kbl-class Part>}}. Auxiliary specifications that might be required by the {{<vec-class PartOrUsageRelatedSpecification >}} for a complete definition (e.g. {{<vec-class WireReceptionSpecification>}}, {{<vec-class CavitySpecification >}} or {{<vec-class InsulationSpecification>}}) are listed in the corresponding section.

| KBL Class   | VEC PartOrUsageRelatedSpecification   | Section |
|--------------|------------------------|---------|
| {{<kbl-class Connector_housing >}} | {{<vec-class ConnectorHousingSpecification>}}, {{<vec-class PlaceableElementSpecification>}} | [Connector Housings]({{<relref "#connector-housings">}}) |
| {{<kbl-class General_Terminal >}} | {{<vec-class TerminalSpecification>}} | [Terminals]({{<relref "#terminals">}}) |
| {{<kbl-class Cavity_seal >}} | {{<vec-class CavitySealSpecification>}} | [Cavity Seals and Cavity Plugs]({{<relref "#cavity-seals-and-cavity-plugs">}}) |
| {{<kbl-class Cavity_Plug >}} | {{<vec-class CavityPlugSpecification>}} | [Cavity Seals and Cavity Plugs]({{<relref "#cavity-seals-and-cavity-plugs">}}) |
| {{<kbl-class General_wire >}} | {{<vec-class WireSpecification >}} | [Wires]({{<relref "#wires">}}) |
| {{<kbl-class Wire_Protection >}} | {{<vec-class WireProtectionSpecification>}} (or a more specific subclass), {{<vec-class PlaceableElementSpecification>}} | [Wire Protections, Fixings and Accessories]({{<relref "#wire-protections-fixings-and-accessories">}}) |
| {{<kbl-class Fixing >}} | {{<vec-class FixingSpecification>}}, {{<vec-class PlaceableElementSpecification>}} | [Wire Protections, Fixings and Accessories]({{<relref "#wire-protections-fixings-and-accessories">}}) |
| {{<kbl-class Accessory >}} | {{<vec-class PartOrUsageRelatedSpecification>}}, {{<vec-class PlaceableElementSpecification>}} | [Wire Protections, Fixings and Accessories]({{<relref "#wire-protections-fixings-and-accessories">}}) |
| {{<kbl-class Co_pack_part >}} | {{<vec-class PartOrUsageRelatedSpecification>}} | [Wire Protections, Fixings and Accessories]({{<relref "#wire-protections-fixings-and-accessories">}}) |
| {{<kbl-class Component_box >}} | {{<vec-class EEComponentSpecification>}}, {{<vec-class PlaceableElementSpecification>}} | [Component Boxes, Fuses and other E/E Components]({{<relref "#component-boxes-fuses-and-other-ee-components">}}) |
| {{<kbl-class Fuse >}} | {{<vec-class FuseSpecification>}} (an {{<vec-class EEComponentSpecification>}}) | [Component Boxes, Fuses and other E/E Components]({{<relref "#component-boxes-fuses-and-other-ee-components">}}) |
| {{<kbl-class Component >}} | {{<vec-class EEComponentSpecification>}} | [Component Boxes, Fuses and other E/E Components]({{<relref "#component-boxes-fuses-and-other-ee-components">}}) |
| {{<kbl-class Assembly_Part >}} | {{<vec-class PartStructureSpecification>}}, {{<vec-class PlaceableElementSpecification>}} | [Assembly Parts]({{<relref "#assembly-parts">}}) |

In addition, every part receives a {{<vec-class GeneralTechnicalPartSpecification>}} (see [General Technical Information]({{<relref "#general-technical-information">}})). The {{<kbl-class Harness >}}, its {{<kbl-class Module >}}s and {{<kbl-class Harness_configuration >}}s do not have a `PartMaster` document. They are defined in the `HarnessDescription` (see [Bill of Material / Part Structure]({{<relref "#bill-of-material--part-structure">}})).

The {{<vec-class PlaceableElementSpecification>}} is required for all components that are placed on the topology (see [Placement]({{<relref "#placement">}})). In the KBL, these are the components whose occurrences can be referenced by a {{<kbl-class Node>}} (`Referenced_components`), by a {{<kbl-class Fixing_assignment>}} or by a {{<kbl-class Protection_area>}}.

### General Technical Information

In this mapping, every part receives a {{<vec-class GeneralTechnicalPartSpecification >}} (this is a convention, the VEC does not require it); that is, for each instance of a KBL {{<kbl-class Part >}}, such a specification is created in its describing {{<vec-class DocumentVersion>}}. This specification covers basic technical information about the component, such as dimensions, weight, material, and dependencies to other parts.

| KBL | VEC {{<vec-class GeneralTechnicalPartSpecification>}} |
|-----|-----|
| `Mass_information` ({{<kbl-class Part>}}) | `MassInformation` |
| `Material_information` ({{<kbl-class Part>}}) | `MaterialInformation` |
| `Housing_colour` ({{<kbl-class Connector_housing>}}), `Colour` ({{<kbl-class Cavity_seal>}}, {{<kbl-class Cavity_plug>}}, {{<kbl-class Fuse>}}) | `ColorInformation` |

The XML representation for the multi-fuse of the example file looks as follows:

```xml
<!-- KBL -->
    <Assembly_part id="id_304_1">
        <Part_number>AS0105563</Part_number>
        ...
        <Mass_information id="id_380_1">
            <Unit_component>id_346_2</Unit_component>
            <Value_component>47.7</Value_component>
        </Mass_information>
        ...
<!-- VEC -->
    <Specification xsi:type="vec:GeneralTechnicalPartSpecification" id="GeneralTechnicalPartSpecification_id_304_1">
      <Identification>GTPS-AS0105563</Identification>
      <DescribedPart>PartVersion_id_304_1</DescribedPart>
      <MassInformation id="MassInformation_id_380_1">
        <Value id="NumericalValue_id_380_1">
          <UnitComponent>SIUnit_id_346_2</UnitComponent>
          <ValueComponent>47.7</ValueComponent>
        </Value>
      </MassInformation>
    </Specification>
```

In the KBL, colours and materials are plain strings. In the VEC, a {{<vec-class Color>}} and a {{<vec-class Material>}} consist of a key and the reference system that defines the meaning of the key (e.g. `RAL` for colours). The reference system is not contained in the KBL and must be known from the context of the KBL dialect (e.g. a company specific colour code).

{{% callout note %}}
The reference implementation uses the placeholder `ACME Inc.` as reference system. It also attaches the KBL `Processing_information` of a part as {{<vec-class CustomProperty>}} to the {{<vec-class PartVersion>}}. Since a {{<vec-class PartVersion>}} should contain only PDM information, the {{<vec-class GeneralTechnicalPartSpecification>}} is the better place for them (see [Custom Properties and Instructions]({{<relref "#custom-properties-and-instructions">}})).
{{% /callout %}}

### Connector Housings

A KBL {{<kbl-class Connector_housing>}} has the same basic structure as a VEC {{<vec-class ConnectorHousingSpecification>}}: the housing consists of {{<kbl-class Slot>}}s, which consist of {{<kbl-class Cavity>}}s. Both are mapped 1:1 to a {{<vec-class Slot>}} and a {{<vec-class Cavity>}}, where the `Id` of the KBL slot becomes the `SlotNumber` and the `Cavity_number` becomes the `CavityNumber`. The `Housing_code` is mapped to the {{<vec-class Coding>}} and the `Housing_type` to the `SpecialPartType` of the {{<vec-class ConnectorHousingSpecification>}}. The `Number_of_cavities` of a KBL slot can be represented by a {{<vec-class SlotSpecification>}}.

Since connectors are placed on the topology, a {{<vec-class PlaceableElementSpecification>}} with `ValidPlacementTypes=OnPoint` is added to the `PartMaster` document.

```xml
<!-- KBL -->
    <Connector_housing id="id_315_0">
        <Part_number>ECP001706</Part_number>
        ...
        <Housing_colour>schwarz</Housing_colour>
        <Housing_code>A</Housing_code>
        <Slots id="id_341_0">
            <Id>default</Id>
            <Number_of_cavities>6</Number_of_cavities>
            <Cavities id="id_370_0">
                <Cavity_number>1</Cavity_number>
            </Cavities>
            ...
        </Slots>
    </Connector_housing>
<!-- VEC -->
    <Specification xsi:type="vec:ConnectorHousingSpecification" id="ConnectorHousingSpecification_id_315_0">
      <Identification>CHS-ECP001706</Identification>
      <DescribedPart>PartVersion_id_315_0</DescribedPart>
      <Coding id="Coding_00024">
        <Coding>A</Coding>
      </Coding>
      <Slot xsi:type="vec:Slot" id="Slot_id_341_0">
        <SlotNumber>default</SlotNumber>
        <Cavity id="Cavity_id_370_0">
          <CavityNumber>1</CavityNumber>
        </Cavity>
        ...
      </Slot>
    </Specification>
    <Specification xsi:type="vec:PlaceableElementSpecification" id="PlaceableElementSpecification_id_315_0">
      <Identification>PES-ECP001706</Identification>
      <DescribedPart>PartVersion_id_315_0</DescribedPart>
      <ValidPlacementTypes>OnPoint</ValidPlacementTypes>
    </Specification>
    <Specification xsi:type="vec:GeneralTechnicalPartSpecification" id="GeneralTechnicalPartSpecification_id_315_0">
      <Identification>GTPS-ECP001706</Identification>
      <DescribedPart>PartVersion_id_315_0</DescribedPart>
      <ColorInformation id="Color_00025">
        <Key>schwarz</Key>
        <ReferenceSystem>ACME Inc.</ReferenceSystem>
      </ColorInformation>
    </Specification>
```

#### Virtual Connector Housings

Not every {{<kbl-class Connector_housing>}} in a KBL file describes a real connector. Many KBL files contain "virtual" connector housings, which are a workaround for a gap in the KBL model.

**Background.** The KBL attaches a wire to a terminal via a {{<kbl-class Contact_point>}}: the {{<kbl-class Extremity>}} of the {{<kbl-class Connection>}} references the contact point, and the contact point references the terminal (`Associated_parts`) and the cavity (`Contacted_cavity`). Contact points, however, can only be defined in a {{<kbl-class Connector_occurrence>}} (or a {{<kbl-class Component_box_occurrence>}}). The {{<kbl-class Special_terminal_occurrence>}} was introduced to describe terminals that are not inserted into a connector housing, e.g. ring terminals or cable lugs, but it cannot contain contact points. A wire therefore cannot be attached to it directly. As a workaround, a connector housing is defined whose only purpose is to provide a home for the contact point. The same workaround is used for splices and for wire ends without a connector ("danglers").

**Dialects.** The workaround has been implemented differently by the individual KBL dialects, for example:

- The virtual {{<kbl-class Connector_housing>}} has the part number of the terminal (as for the cable lugs in VOBES data) or a dummy part number.
- The virtual {{<kbl-class Connector_occurrence>}} is marked with a `Usage` (`ring terminal`, `splice`, `dangler`, `no end`) or not at all.
- The terminal is instantiated as a {{<kbl-class Special_terminal_occurrence>}}, as a {{<kbl-class Terminal_occurrence>}}, or not at all (e.g. for splices without material).
- The virtual housing has slots and cavities (sometimes with the slot `Id` `none`), which are referenced as `Contacted_cavity`.
- The node that places the element references the virtual connector occurrence or the terminal occurrence.

The example file contains such a case for the battery terminal `XA.A.1`. The part `ECP001135` is defined both as {{<kbl-class Connector_housing>}} (with one slot `none` and one cavity) and as {{<kbl-class General_terminal>}} (`cable_shoe`). In the harness, `XA.A.1` is instantiated twice: as a {{<kbl-class Connector_occurrence>}} with `Usage=ring terminal`, which contains the contact point, and as a {{<kbl-class Special_terminal_occurrence>}}, which is associated with the contact point and placed on the node.

```xml
<!-- KBL -->
    <Connector_housing id="id_315_9">
        <Part_number>ECP001135</Part_number>
        ...
        <Description>BATTERIEKLEMME_PLUS</Description>
        ...
        <Slots id="id_341_21">
            <Id>none</Id>
            <Number_of_cavities>1</Number_of_cavities>
            <Cavities id="id_370_62">
                <Cavity_number>1</Cavity_number>
            </Cavities>
        </Slots>
    </Connector_housing>
    ...
    <General_terminal id="id_326_11">
        <Part_number>ECP001135</Part_number>
        ...
        <Description>cable_shoe</Description>
        <Terminal_type>special</Terminal_type>
        <Plating_material>sn</Plating_material>
    </General_terminal>
    ...
        <Connector_occurrence id="id_316_12">
            <Id>XA.A.1</Id>
            <Usage>ring terminal</Usage>
            <Part>id_315_9</Part>
            <Contact_points id="id_372_4">
                <Id>XA.A.1-1#100_4_XA.SR1.1_1_1</Id>
                <Associated_parts>id_342_4</Associated_parts>
                <Contacted_cavity>id_370_63</Contacted_cavity>
            </Contact_points>
            ...
            <Slots id="id_341_22">
                <Part>id_341_21</Part>
                <Cavities id="id_370_63">
                    <Part>id_370_62</Part>
                </Cavities>
            </Slots>
        </Connector_occurrence>
        ...
        <Special_terminal_occurrence id="id_342_4">
            <Id>XA.A.1</Id>
            ...
            <Part>id_326_11</Part>
            ...
    <Node id="Node_15">
        ...
        <Referenced_components>id_342_4</Referenced_components>
    </Node>
```

**Mapping to the VEC.** The VEC does not have this gap: a {{<vec-class ContactPoint>}} is not contained in a connector, and it can reference a terminal without a cavity. The virtual connector housing is therefore not mapped; instead, the workaround is resolved:

{{< figure src="virtual-connector-housing.svg" title="Virtual Connector Housing in KBL and VEC" numbered="true" lightbox="true" >}}

| KBL | VEC |
|-----|-----|
| virtual {{<kbl-class Connector_housing>}} | no {{<vec-class ConnectorHousingSpecification>}}. If it has the part number of the terminal, its {{<vec-class PartVersion>}} is the one of the terminal, with a terminal specification only. A dummy part has no {{<vec-class PartVersion>}} at all. |
| {{<kbl-class General_terminal>}} | {{<vec-class PartVersion>}} with the specification of the terminal type ({{<vec-class RingTerminalSpecification>}}, {{<vec-class SpliceTerminalSpecification>}}, ...) and a {{<vec-class PlaceableElementSpecification>}} |
| virtual {{<kbl-class Connector_occurrence>}} and the terminal occurrence | **one** {{<vec-class PartOccurrence>}} of the terminal with the corresponding role (e.g. {{<vec-class RingTerminalRole>}}) and a {{<vec-class PlaceableElementRole>}}. Identification, alias ids, descriptions and installation information of both KBL occurrences are combined. The slot and cavity occurrences of the virtual housing are not mapped. |
| {{<kbl-class Contact_point>}} | {{<vec-class ContactPoint>}} with the terminal role as `MountedTerminal` and a {{<vec-class WireMounting>}} for the wire ends, but **without** {{<vec-class CavityMounting>}} (see [Wiring – Ringterminal - Splice]({{<relref "../../elog-layers/wiring#ringterminal---splice">}})) |
| `Referenced_components` of the {{<kbl-class Node>}} (virtual connector occurrence or terminal occurrence) | {{<vec-class OnPointPlacement>}} of the {{<vec-class PlaceableElementRole>}} of the terminal occurrence |

For the other kinds of virtual connectors, the same applies with a different target:

- **Splices** (`Usage=splice`): the splice is a terminal with a {{<vec-class SpliceTerminalSpecification>}} and a {{<vec-class SpliceTerminalRole>}}. If the KBL contains no terminal for the splice (e.g. for ultrasonic welding), the specification describes the process instead of a real component (see [Splices]({{<relref "../../component-types/splices">}})).
- **Wire ends without a connector** (`Usage=dangler` or `no end`): there is no component at the wire end. If the location of the open wire end is relevant, it can be described with an {{<vec-class OpenWireEndTerminalSpecification>}} and an {{<vec-class OpenWireEndTerminalRole>}}.

Whether a connector housing is virtual cannot always be decided from the KBL alone. Indications are the `Usage` of the occurrence, a part number that is also used for a terminal, a dummy part number or a slot `none`; the actual rules depend on the KBL dialect.

{{% callout note %}}
The reference implementation does not resolve virtual connector housings yet. It maps them as real connector housings, and the duplicate part numbers of housing and terminal result in two {{<vec-class PartVersion>}}s with the same identity.
{{% /callout %}}

### Terminals

A KBL {{<kbl-class General_terminal>}} is described with a few flat attributes. The VEC {{<vec-class TerminalSpecification>}} describes the inner structure of a terminal: a {{<vec-class WireReception>}} for the connection of the wire, a {{<vec-class TerminalReception>}} for the connection to the mating terminal, and an {{<vec-class InternalTerminalConnection>}} between them. The properties of the receptions are defined by a {{<vec-class WireReceptionSpecification>}} and a {{<vec-class TerminalReceptionSpecification>}}, which are auxiliary specifications in the same `PartMaster` document.

For a terminal from the KBL, this structure consists of exactly one wire reception, one terminal reception and the connection between them. The attributes of the KBL terminal are distributed as follows:

| KBL {{<kbl-class General_terminal>}} | VEC |
|-----|-----|
| `Terminal_type` | `SpecialPartType` of the {{<vec-class TerminalSpecification>}}. Special terminal types have their own specification classes, e.g. {{<vec-class RingTerminalSpecification>}} or {{<vec-class SpliceTerminalSpecification>}}. |
| `Plating_material` | `PlatingMaterial` of the {{<vec-class TerminalReceptionSpecification>}} (and of the {{<vec-class WireReceptionSpecification>}}, if it applies to the whole terminal) |
| `Cross_section_area` | `CoreCrossSectionArea` of the {{<vec-class WireReceptionSpecification>}} |
| `Outside_diameter` | `WireElementOutsideDiameter` of the {{<vec-class WireReceptionSpecification>}} |

```xml
<!-- KBL -->
    <General_terminal id="id_326_0">
        <Part_number>TER00156401</Part_number>
        ...
        <Plating_material>au</Plating_material>
    </General_terminal>
<!-- VEC -->
    <Specification xsi:type="vec:TerminalSpecification" id="TerminalSpecification_id_326_0">
      <Identification>TS-TER00156401</Identification>
      <DescribedPart>PartVersion_id_326_0</DescribedPart>
      <InternalTerminalConnection id="InternalTerminalConnection_id_326_0">
        <Identification>ITC</Identification>
        <TerminalReception>TerminalReception_id_326_0</TerminalReception>
        <WireReception>WireReception_id_326_0</WireReception>
      </InternalTerminalConnection>
      <TerminalReception id="TerminalReception_id_326_0">
        <Identification>TR</Identification>
        <TerminalReceptionSpecification>TerminalReceptionSpecification_id_326_0</TerminalReceptionSpecification>
      </TerminalReception>
      <WireReception id="WireReception_id_326_0">
        <Identification>WR</Identification>
        <WireReceptionSpecification>WireReceptionSpecification_id_326_0</WireReceptionSpecification>
      </WireReception>
    </Specification>
    <Specification xsi:type="vec:WireReceptionSpecification" id="WireReceptionSpecification_id_326_0">
      <Identification>WRS</Identification>
    </Specification>
    <Specification xsi:type="vec:TerminalReceptionSpecification" id="TerminalReceptionSpecification_id_326_0">
      <Identification>TRS</Identification>
      <PlatingMaterial id="Material_00048">
        <Key>au</Key>
        <ReferenceSystem>ACME Inc.</ReferenceSystem>
      </PlatingMaterial>
    </Specification>
```

Terminals that are used on their own and placed on the topology (KBL {{<kbl-class Special_terminal_occurrence>}}, e.g. a ring terminal at a ground bolt) additionally require a {{<vec-class PlaceableElementSpecification>}}.

{{% callout note %}}
The structure with one wire reception and one terminal reception does not fit all terminal types. An end splice, for example, has only a wire reception (see [Splices]({{<relref "../../component-types/splices">}})). If the `Terminal_type` indicates such a terminal, the structure should be adapted accordingly. The reference implementation creates the same structure for all terminals.
{{% /callout %}}

### Cavity Seals and Cavity Plugs

Cavity seals and cavity plugs are mapped to a {{<vec-class CavitySealSpecification>}} and a {{<vec-class CavityPlugSpecification>}}.

| KBL | VEC |
|-----|-----|
| {{<kbl-class Cavity_seal>}}`.Seal_type` | `SpecialPartType` of the {{<vec-class CavitySealSpecification>}} |
| {{<kbl-class Cavity_seal>}}`.Wire_size` | `WireElementOutsideDiameter` of the {{<vec-class CavitySealSpecification>}} |
| {{<kbl-class Cavity_plug>}}`.Plug_type` | `SpecialPartType` of the {{<vec-class CavityPlugSpecification>}} |
| `Colour` | `ColorInformation` of the {{<vec-class GeneralTechnicalPartSpecification>}} |

The cavity in which a seal or plug is used and the wire that is sealed are not part of the part master data. They are described by the [Connectivity]({{<relref "#connectivity">}}) of the harness.

### Wires

A KBL {{<kbl-class General_wire>}} describes a wire with flat attributes. If it is a multi-core wire, it contains a list of {{<kbl-class Core>}}s with similar attributes. The VEC describes a wire as a tree of {{<vec-class WireElement>}}s in a {{<vec-class WireSpecification>}}. Each {{<vec-class WireElement>}} references a {{<vec-class WireElementSpecification>}}, which defines its properties with a {{<vec-class ConductorSpecification>}} (here: {{<vec-class CoreSpecification>}}) and an {{<vec-class InsulationSpecification>}}. The background of this structure is explained in the guideline [Wires]({{<relref "../../component-types/wires">}}).

The instances of a wire in the harness do not reference the specifications, but the {{<vec-class WireElement>}}s (see [Instances of Components]({{<relref "#instances-of-components">}})). This is why a {{<vec-class WireElement>}} is required for every wire and every core, although it has no direct counterpart in the KBL.

**Single cores.** A {{<kbl-class General_wire>}} without {{<kbl-class Core>}}s is a single core. For single cores, the minimal representation shall be used (see [Wires – Definition of a Single Core]({{<relref "../../component-types/wires#definition-of-a-single-core">}})): one {{<vec-class WireElement>}} with one {{<vec-class WireElementSpecification>}} that references both the {{<vec-class CoreSpecification>}} and the {{<vec-class InsulationSpecification>}}.

```xml
<!-- KBL -->
    <General_wire id="id_327_1">
        <Part_number>WIR0010006</Part_number>
        ...
        <Wire_type>individual wire</Wire_type>
        <Bend_radius id="id_369_1">
            <Unit_component>id_346_1</Unit_component>
            <Value_component>4</Value_component>
        </Bend_radius>
        <Cross_section_area id="id_375_1">
            <Unit_component>id_346_0</Unit_component>
            <Value_component>0.5</Value_component>
        </Cross_section_area>
        <Outside_diameter id="id_381_1">
            <Unit_component>id_346_1</Unit_component>
            <Value_component>1</Value_component>
        </Outside_diameter>
        <Cover_colour id="id_374_1">
            <Colour_type>Grundfarbe</Colour_type>
            <Colour_value>ws</Colour_value>
        </Cover_colour>
        <Cover_colour id="id_374_2">
            <Colour_type>Kennfarbe</Colour_type>
            <Colour_value>gn</Colour_value>
        </Cover_colour>
    </General_wire>
<!-- VEC -->
    <Specification xsi:type="vec:WireSpecification" id="WireSpecification_id_327_1">
      <Identification>WS-WIR0010006</Identification>
      <DescribedPart>PartVersion_id_327_1</DescribedPart>
      <WireElement id="WireElement_id_327_1">
        <Identification>WIRE</Identification>
        <WireElementSpecification>WireElementSpecification_id_327_1</WireElementSpecification>
      </WireElement>
    </Specification>
    <Specification xsi:type="vec:WireElementSpecification" id="WireElementSpecification_id_327_1">
      <Identification>WIRE</Identification>
      <Type id="WireType_00088">
        <Type>individual wire</Type>
        <ReferenceSystem>ACME Inc.</ReferenceSystem>
      </Type>
      <MinBendRadiusStatic id="NumericalValue_id_369_1">
        ...
      </MinBendRadiusStatic>
      <OutsideDiameter id="NumericalValue_id_381_1">
        ...
      </OutsideDiameter>
      <ConductorSpecification>CoreSpecification_id_327_1</ConductorSpecification>
      <InsulationSpecification>InsulationSpecification_id_327_1</InsulationSpecification>
    </Specification>
    <Specification xsi:type="vec:InsulationSpecification" id="InsulationSpecification_id_327_1">
      <Identification>WIRE-INS</Identification>
      <BaseColor id="Color_00089">
        <Key>ws</Key>
        <ReferenceSystem>ACME Inc.</ReferenceSystem>
      </BaseColor>
      <FirstIdentificationColor id="Color_00090">
        <Key>gn</Key>
        <ReferenceSystem>ACME Inc.</ReferenceSystem>
      </FirstIdentificationColor>
    </Specification>
    <Specification xsi:type="vec:CoreSpecification" id="CoreSpecification_id_327_1">
      <Identification>WIRE-CORE</Identification>
      <CrossSectionArea id="NumericalValue_id_375_1">
        <UnitComponent>SIUnit_id_346_0</UnitComponent>
        <ValueComponent>0.5</ValueComponent>
      </CrossSectionArea>
    </Specification>
```

**Multi-core wires.** A {{<kbl-class General_wire>}} with {{<kbl-class Core>}}s becomes a {{<vec-class WireElement>}} for the whole cable with one sub wire element per core. The {{<vec-class WireElementSpecification>}} of the cable carries the properties of the cable (e.g. outside diameter, bend radius) and the {{<vec-class InsulationSpecification>}} of the jacket, but no conductor. Each core has its own {{<vec-class WireElementSpecification>}} with a {{<vec-class CoreSpecification>}} and an {{<vec-class InsulationSpecification>}}.

{{< figure src="multicore-wire.svg" title="Multi-Core Wire in KBL and VEC" numbered="true" lightbox="true" >}}

The `Id` of the core is used as identification of its {{<vec-class WireElement>}}. The following excerpt shows the structure for a two-core cable of the [KSK sample](https://github.com/4Soft-de/harness-model/tree/develop/kbl2vec/src/test/resources) of the reference implementation:

```xml
    <Specification xsi:type="vec:WireSpecification" id="WireSpecification_id_327_89">
      <Identification>WS-O10a71692144</Identification>
      ...
      <WireElement id="WireElement_id_327_89">
        <Identification>WIRE</Identification>
        <WireElementSpecification>WireElementSpecification_id_327_89</WireElementSpecification>
        <SubWireElement id="WireElement_id_317_0">
          <Identification>2-ws@N_906_581_33</Identification>
          <WireElementSpecification>WireElementSpecification_id_317_0</WireElementSpecification>
        </SubWireElement>
        <SubWireElement id="WireElement_id_317_1">
          <Identification>1-ws@N_906_581_33</Identification>
          <WireElementSpecification>WireElementSpecification_id_317_1</WireElementSpecification>
        </SubWireElement>
      </WireElement>
    </Specification>
```

The KBL cannot express further inner structures of a multi-core wire, like twisting, shields or fillers. If such information is encoded in a KBL dialect (e.g. a `Wire_type=twist` for twisted cores), it should be mapped to the corresponding VEC concepts (e.g. a {{<vec-class WireGroupSpecification>}}, see [Wires – Definition of a Multicore Wire]({{<relref "../../component-types/wires#definition-of-a-multicore-wire">}})).

**Attributes.** The attributes of a {{<kbl-class General_wire>}} and a {{<kbl-class Core>}} are mapped as follows:

| KBL {{<kbl-class General_wire>}} / {{<kbl-class Core>}} | VEC |
|-----|-----|
| `Wire_type` | `Type` of the {{<vec-class WireElementSpecification>}} |
| `Outside_diameter` | `OutsideDiameter` of the {{<vec-class WireElementSpecification>}} |
| `Bend_radius` | `MinBendRadiusStatic` of the {{<vec-class WireElementSpecification>}} |
| `Cross_section_area` | `CrossSectionArea` of the {{<vec-class CoreSpecification>}} (single cores and cores only) |
| `Cover_colour` / `Core_colour` | colours of the {{<vec-class InsulationSpecification>}}, see below |

The colours of a wire are typed in both models. The KBL `Colour_type` literals have a direct counterpart in the {{<vec-class InsulationSpecification>}}:

| KBL `Colour_type` | VEC {{<vec-class InsulationSpecification>}} |
|-----|-----|
| `base colour` | `BaseColor` |
| `first identification` | `FirstIdentificationColor` |
| `second identification` | `SecondIdentificationColor` |
| `label identification` | `LabelIdentificationColor` |

{{% callout note %}}
**Data Quality**: `Colour_type` is an open enumeration in the KBL, and some dialects use their own values (e.g. `Grundfarbe` and `Kennfarbe` in the example above). These values must be mapped to the VEC attributes with knowledge of the dialect. The reference implementation currently ignores the `Colour_type` and assigns the colours in the order of the KBL file (first colour as base colour, second colour as first identification colour, ...), which is only correct if the KBL file follows this order. As for all colours, the reference system is not contained in the KBL (see [General Technical Information]({{<relref "#general-technical-information">}})).
{{% /callout %}}

### Wire Protections, Fixings and Accessories

These components have in common that the KBL provides only a classification string and little or no technical data for them. In the VEC, they are described with the specification that matches the classification as closely as possible; the KBL classification string is kept as `SpecialPartType`.

**Wire protections.** A {{<kbl-class Wire_protection>}} becomes a {{<vec-class WireProtectionSpecification>}} with the `Protection_type` as `SpecialPartType`. The VEC distinguishes different kinds of wire protections with more specific subclasses ({{<vec-class TapeSpecification>}}, {{<vec-class TubeSpecification>}}, {{<vec-class CorrugatedPipeSpecification>}}, ...). If the `Protection_type` of a KBL dialect allows to identify the kind (e.g. `TAPE`), the more specific class should be used. This is especially relevant for tapes, since the processing information of a tape (winding type, taping direction, ...) can only be expressed with the {{<vec-class TapeRole>}} of a {{<vec-class TapeSpecification>}} (see [Tapes and Tubes]({{<relref "../../component-types/tapes-and-tubes">}})). Since wire protections are placed along the topology, the {{<vec-class PlaceableElementSpecification>}} allows the placement type `OnWay`.

The following example is taken from the [generator cable sample](https://github.com/4Soft-de/harness-model/tree/develop/kbl2vec/src/test/resources) of the reference implementation, which does not yet use the more specific classes:

```xml
<!-- KBL -->
    <Wire_protection id="Wire_protection_1">
        <Part_number>O1112a614541a2</Part_number>
        ...
        <Protection_type>TAPE</Protection_type>
    </Wire_protection>
<!-- VEC -->
    <Specification xsi:type="vec:WireProtectionSpecification" id="WireProtectionSpecification_Wire_protection_1">
      <Identification>WPS-O1112a614541a2</Identification>
      <SpecialPartType>TAPE</SpecialPartType>
      <DescribedPart>PartVersion_Wire_protection_1</DescribedPart>
    </Specification>
    <Specification xsi:type="vec:PlaceableElementSpecification" id="PlaceableElementSpecification_Wire_protection_1">
      <Identification>PES-O1112a614541a2</Identification>
      <DescribedPart>PartVersion_Wire_protection_1</DescribedPart>
      <ValidPlacementTypes>OnWay</ValidPlacementTypes>
      <ValidPlacementTypes>OnPoint</ValidPlacementTypes>
    </Specification>
```

**Fixings.** A {{<kbl-class Fixing>}} becomes a {{<vec-class FixingSpecification>}} with the `Fixing_type` as `SpecialPartType` and a {{<vec-class PlaceableElementSpecification>}} for the placement on a point of the topology. The KBL uses {{<kbl-class Fixing>}} for a broad range of components (e.g. clips, cable ducts or grommets). The VEC has dedicated specifications for some of them ({{<vec-class CableDuctSpecification>}}, {{<vec-class GrommetSpecification>}}), which should be used if the kind of fixing is known.

**Accessories and co-pack parts.** The KBL classes {{<kbl-class Accessory>}} and {{<kbl-class Co_pack_part>}} have no direct counterpart in the VEC. Following the approach for cable ties in [Fixings]({{<relref "../../component-types/fixings">}}), they are described by a not further detailed {{<vec-class PartOrUsageRelatedSpecification>}}, whose `SpecialPartType` carries the `Accessory_type` or `Part_type`. If the kind of the part is known and the VEC has a specific specification for it, that one should be used. An accessory can be placed on the topology and therefore also gets a {{<vec-class PlaceableElementSpecification>}}.

Note that the term "accessory" has a different meaning in the two models: in the KBL, {{<kbl-class Accessory>}} is a classification of a part. In the VEC, any part can be an accessory of another part, which is expressed with a {{<vec-class PartRelation>}} (see [Accessories]({{<relref "../../component-types/accessories">}})). The relation of a KBL accessory to the component it belongs to is defined on the instance level by the `Reference_element` (see [Instances of Components]({{<relref "#instances-of-components">}})).

### Component Boxes, Fuses and other E/E Components

**Component boxes.** The KBL has a dedicated class for fuse and relay boxes, the {{<kbl-class Component_box>}}. It has two kinds of interfaces: {{<kbl-class Component_box_connector>}}s, to which the harness is connected, and {{<kbl-class Component_slot>}}s, into which fuses or relays are plugged. The internal connections between the cavities of both are defined by {{<kbl-class Component_box_connection>}}s.

The VEC has no specific class for component boxes. A component box is an E/E component like any other (see [E/E Components]({{<relref "../../ee-components">}}) and [Component Boxes]({{<relref "../../ee-components/component-boxes">}})): it is described by an {{<vec-class EEComponentSpecification>}}, which has a {{<vec-class HousingComponent>}} for each interface, regardless of whether the interface is a connector for the harness or a slot for a fuse. Each {{<vec-class HousingComponent>}} references a {{<vec-class ConnectorHousingSpecification>}} that describes the slots and cavities of the interface, and has a {{<vec-class PinComponent>}} for each cavity.

{{< figure src="component-box.svg" title="Component Box in KBL and VEC" numbered="true" lightbox="true" >}}

The {{<vec-class ConnectorHousingSpecification>}}s of the interfaces are auxiliary specifications in the `PartMaster` document of the component box. They do not describe a part of their own and therefore have no `DescribedPart`. Their structure follows the KBL: the integrated {{<kbl-class Slot>}}s of a {{<kbl-class Component_box_connector>}} become the slots of the {{<vec-class ConnectorHousingSpecification>}}, a {{<kbl-class Component_slot>}} becomes a slot with the {{<kbl-class Component_cavity>}}s as cavities.

```xml
<!-- KBL -->
    <Component_box id="id_413_0">
        <Part_number>FBX001546</Part_number>
        ...
        <Component_box_connectors id="id_415_0">
            <Id>A</Id>
            <Compatible_housings>id_315_5</Compatible_housings>
            <Integrated_slots id="id_341_50" xsi:type="kbl:Slot">
                <Id>KL30 Batt+</Id>
                <Number_of_cavities>1</Number_of_cavities>
                <Cavities id="id_370_100">
                    <Cavity_number>1</Cavity_number>
                </Cavities>
            </Integrated_slots>
        </Component_box_connectors>
        ...
        <Component_slots id="id_441_0">
            <Id>F1</Id>
            <Valid_fuse_types id="id_444_0">
                <Key>Type_SF30</Key>
                <Reference_system>VOBES</Reference_system>
            </Valid_fuse_types>
            ...
            <Component_cavities id="id_370_114">
                <Cavity_number>F1-1</Cavity_number>
            </Component_cavities>
            <Component_cavities id="id_370_115">
                <Cavity_number>F1-1A</Cavity_number>
            </Component_cavities>
        </Component_slots>
        ...
        <Connections id="id_414_1" xsi:type="kbl:Component_box_connection">
            <Id>B-1A_F1-1A</Id>
            <Cavities>id_370_101</Cavities>
            <Component_cavities>id_370_115</Component_cavities>
        </Connections>
        ...
<!-- VEC -->
    <Specification xsi:type="vec:EEComponentSpecification" id="EEComponentSpecification_id_413_0">
      <Identification>EECS-FBX001546</Identification>
      <DescribedPart>PartVersion_id_413_0</DescribedPart>
      ...
      <HousingComponent id="HousingComponent_id_441_0">
        <Identification>F1</Identification>
        <HousingSpecification>ConnectorHousingSpecification_id_441_0</HousingSpecification>
        <PinComponent id="PinComponent_id_370_114">
          <Identification>F1-1</Identification>
          <ReferencedCavity>Cavity_id_370_114</ReferencedCavity>
        </PinComponent>
        <PinComponent id="PinComponent_id_370_115">
          <Identification>F1-1A</Identification>
          <ReferencedCavity>Cavity_id_370_115</ReferencedCavity>
        </PinComponent>
      </HousingComponent>
      ...
      <HousingComponent id="HousingComponent_id_415_0">
        <Identification>A</Identification>
        <HousingSpecification>ConnectorHousingSpecification_id_415_0</HousingSpecification>
        <PinComponent id="PinComponent_id_370_100">
          <Identification>1</Identification>
          <ReferencedCavity>Cavity_id_370_100</ReferencedCavity>
        </PinComponent>
      </HousingComponent>
      ...
    </Specification>
    <Specification xsi:type="vec:ConnectorHousingSpecification" id="ConnectorHousingSpecification_id_415_0">
      <Identification>A</Identification>
      <Slot xsi:type="vec:Slot" id="Slot_id_341_50">
        <SlotNumber>KL30 Batt+</SlotNumber>
        <Cavity id="Cavity_id_370_100">
          <CavityNumber>1</CavityNumber>
        </Cavity>
      </Slot>
    </Specification>
    <Specification xsi:type="vec:ConnectorHousingSpecification" id="ConnectorHousingSpecification_id_441_0">
      <Identification>F1</Identification>
      <Slot xsi:type="vec:Slot" id="Slot_id_441_0">
        <SlotNumber>F1</SlotNumber>
        <Cavity id="Cavity_id_370_114">
          <CavityNumber>F1-1</CavityNumber>
        </Cavity>
        <Cavity id="Cavity_id_370_115">
          <CavityNumber>F1-1A</CavityNumber>
        </Cavity>
      </Slot>
    </Specification>
```

In the KBL, the kind of an interface is implicit in its class. In the VEC, it is defined by the `CompatibleTypes` of the {{<vec-class HousingComponent>}} and the `SpecialPartType` of its {{<vec-class ConnectorHousingSpecification>}} (see [Connector / Interface Types]({{<relref "../../ee-components#connector--interface-types">}})). For a component box, this information can be derived from the KBL. Note that `Compatible_housings` is optional in the KBL; a connector without it is not necessarily contacted directly, so the second row is only a heuristic that should be confirmed with knowledge of the KBL dialect:

| KBL | `CompatibleTypes` | `SpecialPartType` |
|-----|-----|-----|
| {{<kbl-class Component_box_connector>}} with `Compatible_housings` | `ConnectorHousing` | `HarnessConnector` |
| {{<kbl-class Component_box_connector>}} without `Compatible_housings` (wires are contacted directly) | `Terminal` | `WiringConnector` |
| {{<kbl-class Component_slot>}} for fuses (`Type`, `Valid_fuse_types`) | `Fuse` | `FuseConnector` |
| {{<kbl-class Component_slot>}} for relays (`Type`) | `Relay` | `RelayConnector` |

The `SpecialPartType` of the {{<vec-class EEComponentSpecification>}} is `FuseOrRelayCarrier`. Which housings are compatible with a component box connector (`Compatible_housings`) can be expressed with a mapping of the interfaces (see [Coupling]({{<relref "../coupling">}})).

A KBL {{<kbl-class Node>}} can reference a {{<kbl-class Component_box_connector_occurrence>}} to place the connector of a component box in the topology. The component box therefore needs a {{<vec-class PlaceableElementSpecification>}}. Since the connectors of a component box are placed at different nodes, the specification should define a {{<vec-class PlacementPoint>}} for each connector (see [Placement]({{<relref "#placement">}})).

The internal connections ({{<kbl-class Component_box_connection>}}) are described in the VEC with a {{<vec-class ConnectionSpecification>}} of the E/E component, whose connections are traced to the {{<vec-class PinComponent>}}s (see [Internal Connectivity]({{<relref "../../ee-components/internal-connectivity">}})).

{{% callout note %}}
The reference implementation does not classify the interfaces yet. For the internal connections, it uses the {{<vec-class InternalComponentConnection>}}, which is deprecated since VEC 2.2 (the example file declares VEC version 2.1.0).
{{% /callout %}}

**Fuses and other components.** A KBL {{<kbl-class Fuse>}} is an E/E component as well. It is described by a {{<vec-class FuseSpecification>}} (a subclass of the {{<vec-class EEComponentSpecification>}}) with one {{<vec-class HousingComponent>}} and two {{<vec-class PinComponent>}}s (see [Fuses]({{<relref "../../ee-components/fuses">}})). The fuse type (`Type`) becomes the `FuseType` of the {{<vec-class FuseSpecification>}}; the VEC enumeration contains the common fuse types (e.g. `Type_SF30` in the example). The `Colour` is part of the {{<vec-class GeneralTechnicalPartSpecification>}}. A KBL {{<kbl-class Component>}} (e.g. a relay) is described by an {{<vec-class EEComponentSpecification>}}.

```xml
<!-- KBL -->
    <Component id="id_302_0" xsi:type="kbl:Fuse">
        <Part_number>MFS_740_C150</Part_number>
        ...
        <Type id="id_393_0" xsi:type="kbl:Fuse_type">
            <Key>Type_SF30</Key>
            <Reference_system>VOBES</Reference_system>
        </Type>
        <Nominal_current id="id_392_0">
            <Unit_component>id_346_3</Unit_component>
            <Value_component>150</Value_component>
        </Nominal_current>
        <Colour>zinn</Colour>
    </Component>
```

The pins of the fuse and their mapping to the cavities of the slot into which it is plugged are not defined in the KBL part. If they are not known from a library, the {{<vec-class HousingComponent>}} of the fuse can only be defined with assumed pins.

{{% callout note %}}
The reference implementation does not convert fuses and components yet: they are only described by a {{<vec-class GeneralTechnicalPartSpecification>}}. Which fuse is plugged into which slot (`Mounting` of the {{<kbl-class Component_occurrence>}}) is not converted either (see [Open Topics]({{<relref "#open-topics">}})).
{{% /callout %}}

The multi-fuse of the example file is modelled in VOBES as an {{<kbl-class Assembly_part>}} of single fuses (see [Assembly Parts]({{<relref "#assembly-parts">}})). Its representation as an E/E component of its own is described in [Multi Fuses]({{<relref "../../ee-components/multi-fuses">}}).

### Assembly Parts

A KBL {{<kbl-class Assembly_part>}} is a predefined part that consists of other parts (e.g. a pre-assembled cable). Like the {{<kbl-class Harness>}}, it contains occurrences of components. In the VEC, an assembly is described with the same concepts as any other bill of material (see [Composite Parts – Assemblies]({{<relref "../composite-parts#assemblies">}})). Its `PartMaster` document contains:

- a {{<vec-class CompositionSpecification>}} with a {{<vec-class PartOccurrence>}} for each occurrence of the {{<kbl-class Assembly_part>}} (mapped as described in [Instances of Components]({{<relref "#instances-of-components">}})),
- a {{<vec-class PartStructureSpecification>}} with `Content=Assembly`, which references all these occurrences as `InBillOfMaterial`. The KBL `Part_type` becomes its `SpecialPartType`,
- a {{<vec-class PlaceableElementSpecification>}}, if the assembly is placed on the topology.

The multi-fuse of the example file is such an assembly of six fuses:

```xml
<!-- KBL -->
    <Assembly_part id="id_304_1">
        <Part_number>AS0105563</Part_number>
        ...
        <Part_type>multifuse</Part_type>
        <Component_occurrence id="id_303_1">
            <Id>MFS_740_C150_1</Id>
            <Mounting>id_442_0</Mounting>
            <Part>id_302_0</Part>
        </Component_occurrence>
        ...
    </Assembly_part>
<!-- VEC -->
    <Specification xsi:type="vec:CompositionSpecification" id="CompositionSpecification_id_304_1">
      <Identification>COMPONENTS</Identification>
      <Component id="PartOccurrence_id_303_1">
        <Identification>MFS_740_C150_1</Identification>
        <Part>PartVersion_id_302_0</Part>
      </Component>
      ...
    </Specification>
    <Specification xsi:type="vec:PartStructureSpecification" id="PartStructureSpecification_id_304_1">
      <Identification>PSS-AS0105563</Identification>
      <SpecialPartType>multifuse</SpecialPartType>
      <DescribedPart>PartVersion_id_304_1</DescribedPart>
      <InBillOfMaterial>PartOccurrence_id_303_1 PartOccurrence_id_303_3 PartOccurrence_id_303_5 PartOccurrence_id_303_7 PartOccurrence_id_303_9 PartOccurrence_id_303_11</InBillOfMaterial>
    </Specification>
```

{{% callout note %}}
The reference implementation does not set `Content=Assembly` yet (see the example above). An {{<kbl-class Assembly_part>}} can also contain {{<kbl-class Connection>}}s, e.g. for a pre-assembled cable. Their mapping is the same as for the harness (see [Connectivity]({{<relref "#connectivity">}})), with the specifications in the `PartMaster` document of the assembly. The reference implementation does not convert them yet.
{{% /callout %}}

How an assembly is used in the harness, including the instantiation of its components, is described in [Instances of Components]({{<relref "#instances-of-components">}}).

## Harness Description

{{% callout warning %}}
Work in Progress
{{% /callout %}}

A `HarnessDescription` document contains all {{< vec-class Specification >}}s that are required to describe a Harness. The specifications in the VEC provide a more "view oriented" modelling approach than the KBL. Each specification representing a specific view on the product model, with the possibility to have links between the views. The following sections will describe the mapping topic by topic (or, in other words view by view).

A VEC derived from a single KBL contains one `HarnessDescription` document for the {{<kbl-class Harness>}} defined in the KBL.

### Instances of Components

In the KBL, the components of the harness are instances of the class {{<kbl-class Connection_or_occurrence>}} (e.g. {{<kbl-class Connector_occurrence>}}, {{<kbl-class Wire_occurrence>}}). In the VEC, each of them becomes a {{<vec-class PartOccurrence>}}, which references the {{<vec-class PartVersion>}} of the component as `Part`. The usage specific information is defined by the {{<vec-class Role>}}s of the {{<vec-class PartOccurrence>}}: for each {{<vec-class PartOrUsageRelatedSpecification>}} of the component that is relevant in the usage, the occurrence has a corresponding {{<vec-class Role>}} (see the guideline [Component Instances]({{<relref "../component-instances">}})). The {{<kbl-class Connection>}} is an exception: it is not an instance of a component and has no {{<vec-class PartOccurrence>}} (see [Connectivity]({{<relref "#connectivity">}})).

| KBL | VEC {{<vec-class Role>}}s |
|-----|-----|
| {{<kbl-class Connector_occurrence>}} | {{<vec-class ConnectorHousingRole>}}, {{<vec-class PlaceableElementRole>}} |
| {{<kbl-class Terminal_occurrence>}} | {{<vec-class TerminalRole>}} |
| {{<kbl-class Special_terminal_occurrence>}} | {{<vec-class TerminalRole>}} (or a more specific one, e.g. {{<vec-class RingTerminalRole>}}), {{<vec-class PlaceableElementRole>}} |
| {{<kbl-class Cavity_seal_occurrence>}} | {{<vec-class CavitySealRole>}} |
| {{<kbl-class Cavity_plug_occurrence>}} | {{<vec-class CavityPlugRole>}} |
| {{<kbl-class Wire_occurrence>}}, {{<kbl-class Special_wire_occurrence>}} | {{<vec-class WireRole>}} |
| {{<kbl-class Wire_protection_occurrence>}} | {{<vec-class WireProtectionRole>}} (or a more specific one, e.g. {{<vec-class TapeRole>}}), {{<vec-class PlaceableElementRole>}} |
| {{<kbl-class Fixing_occurrence>}} | {{<vec-class FixingRole>}}, {{<vec-class PlaceableElementRole>}} |
| {{<kbl-class Accessory_occurrence>}} | {{<vec-class SpecificRole>}}, {{<vec-class PlaceableElementRole>}} |
| {{<kbl-class Co_pack_occurrence>}} | {{<vec-class SpecificRole>}} |
| {{<kbl-class Component_box_occurrence>}} | {{<vec-class EEComponentRole>}}, {{<vec-class PlaceableElementRole>}} |
| {{<kbl-class Component_occurrence>}}, {{<kbl-class Fuse_occurrence>}} | {{<vec-class EEComponentRole>}} |
| {{<kbl-class Assembly_part_occurrence>}} | {{<vec-class PartWithSubComponentsRole>}}, {{<vec-class PlaceableElementRole>}} |

The {{<vec-class GeneralTechnicalPartSpecification>}} has no corresponding role. The {{<vec-class PlaceableElementRole>}} is only required if the occurrence is actually placed on the topology (see [Placement]({{<relref "#placement">}})).

The general attributes of a KBL occurrence are mapped to the {{<vec-class PartOccurrence>}}: `Id` to `Identification`, `Alias_id` to {{<vec-class AliasIdentification>}}, `Description` to `Description`, and `Installation_information` to the installation instructions or custom properties (see [Custom Properties and Instructions]({{<relref "#custom-properties-and-instructions">}})). The `Reference_element` of a KBL occurrence, which defines the component to which an occurrence (e.g. an accessory) belongs, corresponds to the `ReferenceElement` of the {{<vec-class PartOccurrence>}}. The {{<vec-class PartOccurrence>}}s are contained in a {{<vec-class CompositionSpecification>}} of the `HarnessDescription` (see [Bill of Material / Part Structure]({{<relref "#bill-of-material--part-structure">}})).

{{% callout note %}}
**Data Quality**: The `Identification` of a {{<vec-class PartOccurrence>}} is mandatory, but the `Id` is optional for many KBL occurrences (e.g. for terminals, seals and plugs). In this case, an identification must be derived. It should be derived in a reproducible way, so that the same occurrence gets the same identification when a new version of the KBL is converted. The reference implementation uses a generic counter (`GenericIdentifier-<n>`), which does not fulfil this.
{{% /callout %}}

#### Connectors, Slots and Cavities

The KBL instantiates the inner structure of a connector: a {{<kbl-class Connector_occurrence>}} contains {{<kbl-class Slot_occurrence>}}s, which contain {{<kbl-class Cavity_occurrence>}}s, each referencing its definition in the {{<kbl-class Connector_housing>}}. The VEC follows the same pattern: the {{<vec-class ConnectorHousingRole>}} contains {{<vec-class SlotReference>}}s, which contain {{<vec-class CavityReference>}}s, referencing the {{<vec-class Slot>}}s and {{<vec-class Cavity>}}s of the {{<vec-class ConnectorHousingSpecification>}}. The cavity references are required, for example, to define the contacting (see [Connectivity]({{<relref "#connectivity">}})). Only the elements that are relevant in the harness need to be instantiated (see [Instantiation of Model Structures]({{<relref "../../general/instantiation">}})).

```xml
<!-- KBL -->
        <Connector_occurrence id="id_316_0">
            <Id>XA.L2.1</Id>
            ...
            <Description>2-Faden-Lampe für Scheinwerfer rechts</Description>
            ...
            <Part>id_315_0</Part>
            ...
            <Slots id="id_341_1">
                <Part>id_341_0</Part>
                <Cavities id="id_370_6">
                    <Part>id_370_0</Part>
                </Cavities>
                ...
            </Slots>
        </Connector_occurrence>
<!-- VEC -->
      <Component id="PartOccurrence_id_316_0">
        ...
        <Identification>XA.L2.1</Identification>
        ...
        <Description xsi:type="vec:LocalizedString" id="LocalizedString_00196">
          <LanguageCode>De</LanguageCode>
          <Value>2-Faden-Lampe für Scheinwerfer rechts</Value>
        </Description>
        <Role xsi:type="vec:ConnectorHousingRole" id="ConnectorHousingRole_id_316_0">
          <Identification>XA.L2.1</Identification>
          <ConnectorHousingSpecification>ConnectorHousingSpecification_id_315_0</ConnectorHousingSpecification>
          <SlotReference xsi:type="vec:SlotReference" id="SlotReference_id_341_1">
            <Identification>default</Identification>
            <ReferencedSlot>Slot_id_341_0</ReferencedSlot>
            <CavityReference id="CavityReference_id_370_6">
              <Identification>1</Identification>
              <ReferencedCavity>Cavity_id_370_0</ReferencedCavity>
            </CavityReference>
            ...
          </SlotReference>
        </Role>
        <Role xsi:type="vec:PlaceableElementRole" id="PlaceableElementRole_id_316_0">
          <Identification>XA.L2.1</Identification>
          <PlaceableElementSpecification>PlaceableElementSpecification_id_315_0</PlaceableElementSpecification>
        </Role>
        <Part>PartVersion_id_315_0</Part>
      </Component>
```

The {{<vec-class TerminalRole>}}, {{<vec-class CavitySealRole>}} and {{<vec-class CavityPlugRole>}} reference the specifications of the respective parts. The KBL defines a plug in a cavity with the `Associated_plug` of the {{<kbl-class Cavity_occurrence>}}; in the VEC, this is the `PluggedCavityRef` of the {{<vec-class CavityPlugRole>}}. Terminals and seals are assigned to cavities and wires by the contacting (see [Connectivity]({{<relref "#connectivity">}})).

#### Wires and Cores

A {{<kbl-class Wire_occurrence>}} becomes a {{<vec-class PartOccurrence>}} with a {{<vec-class WireRole>}}. Since the KBL has no `Id` for wire occurrences, the `Wire_number` (or the `Special_wire_id` of a {{<kbl-class Special_wire_occurrence>}}) is used as identification. The usage specific information of a wire is defined for its {{<vec-class WireElement>}}s: the {{<vec-class WireRole>}} contains a {{<vec-class WireElementReference>}} for the wire, which references the root {{<vec-class WireElement>}} of the {{<vec-class WireSpecification>}} and carries the lengths and the wire ends of the wire.

The `Length_information` of the KBL occurrence becomes a {{<vec-class WireLength>}}. The KBL `Length_type` literals (`DMU`, `Production`, ...) are the same as the literals of the VEC {{<vec-class WireLengthType>}}. The wire ends ({{<vec-class WireEnd>}}) are derived from the `Extremities` of the KBL {{<kbl-class Connection>}} that uses the wire (see [Connectivity]({{<relref "#connectivity">}})).

```xml
<!-- KBL -->
        <General_wire_occurrence xsi:type="kbl:Wire_occurrence" id="id_350_1">
            <Part>id_327_1</Part>
            <Length_information id="id_388_1">
                <Length_type>DMU</Length_type>
                <Length_value id="id_387_1">
                    <Unit_component>id_346_1</Unit_component>
                    <Value_component>338.74</Value_component>
                </Length_value>
            </Length_information>
            <Wire_number>2</Wire_number>
        </General_wire_occurrence>
<!-- VEC -->
      <Component id="PartOccurrence_id_350_1">
        <Identification>2</Identification>
        <Role xsi:type="vec:WireRole" id="WireRole_id_350_1">
          <Identification>2</Identification>
          <WireSpecification>WireSpecification_id_327_1</WireSpecification>
          <WireElementReference id="WireElementReference_id_350_1">
            <Identification>2</Identification>
            <ReferencedWireElement>WireElement_id_327_1</ReferencedWireElement>
            <Signal>Signal_id_314_0</Signal>
            <WireEnd id="WireEnd_id_377_2">
              <PositionOnWire>0.0</PositionOnWire>
            </WireEnd>
            <WireEnd id="WireEnd_id_377_3">
              <PositionOnWire>1.0</PositionOnWire>
            </WireEnd>
            <WireLength id="WireLength_id_388_1">
              <LengthType>DMU</LengthType>
              <LengthValue id="NumericalValue_id_387_1">
                <UnitComponent>SIUnit_id_346_1</UnitComponent>
                <ValueComponent>338.74</ValueComponent>
              </LengthValue>
            </WireLength>
          </WireElementReference>
        </Role>
        <Part>PartVersion_id_327_1</Part>
      </Component>
```

For a multi-core wire ({{<kbl-class Special_wire_occurrence>}}), the {{<vec-class WireRole>}} contains an additional {{<vec-class WireElementReference>}} for each {{<kbl-class Core_occurrence>}}. It references the {{<vec-class WireElement>}} of the core and uses the `Wire_number` of the core occurrence as identification. The lengths, wire ends and signals of the cores are defined there. The `Unconnected` flag of a KBL core occurrence corresponds to the `Unconnected` attribute of the {{<vec-class WireElementReference>}}.

#### Wire Protections

The {{<vec-class WireProtectionRole>}} carries the `Protection_length` of the {{<kbl-class Wire_protection_occurrence>}} as `ProtectionLength`. For tapes, the {{<vec-class TapeRole>}} additionally defines the processing of the tape: the `Winding_type` and `Winding_firmness` of the KBL occurrence and the `Taping_direction` and `Gradient`, which the KBL defines per {{<kbl-class Protection_area>}}. The KBL values are strings with recommended values (e.g. `overlap`, `spiral`), the VEC values are enumeration literals (e.g. `Overlap`, `Spiral`), so a value mapping is required. Where the protection is applied is defined by its placement (see [Placement]({{<relref "#placement">}})).

{{% callout note %}}
The reference implementation does not yet map the `Protection_length` and the tape processing attributes.
{{% /callout %}}

#### Component Boxes and other E/E Components

The usage of an E/E component is defined by an {{<vec-class EEComponentRole>}}. Its structure follows the structure of the {{<vec-class EEComponentSpecification>}}: for each interface used in the harness, the role contains a {{<vec-class HousingComponentReference>}}, which contains a {{<vec-class ConnectorHousingRole>}} with the slot and cavity references of the interface and a {{<vec-class PinComponentReference>}} for each pin. The KBL {{<kbl-class Component_box_occurrence>}} has the same structure: it contains {{<kbl-class Component_box_connector_occurrence>}}s and {{<kbl-class Component_slot_occurrence>}}s with their cavity occurrences.

```xml
<!-- KBL -->
            <Component_slots id="id_442_0" xsi:type="kbl:Component_slot_occurrence">
                <Id>SR1.1-F1</Id>
                <Part>id_441_0</Part>
                <Component_cavities id="id_370_138" xsi:type="kbl:Component_cavity_occurrence">
                    <Part>id_370_114</Part>
                </Component_cavities>
                <Component_cavities id="id_370_139" xsi:type="kbl:Component_cavity_occurrence">
                    <Part>id_370_115</Part>
                </Component_cavities>
            </Component_slots>
<!-- VEC -->
        <Role xsi:type="vec:EEComponentRole" id="EEComponentRole_id_417_0">
          <Identification>XJ.SR1.1</Identification>
          <EEComponentSpecification>EEComponentSpecification_id_413_0</EEComponentSpecification>
          <HousingComponentRef id="HousingComponentReference_id_442_0">
            <Identification>SR1.1-F1</Identification>
            <HousingComponent>HousingComponent_id_441_0</HousingComponent>
            <ConnectorHousingRole id="ConnectorHousingRole_id_442_0">
              <Identification>SR1.1-F1</Identification>
              <ConnectorHousingSpecification>ConnectorHousingSpecification_id_441_0</ConnectorHousingSpecification>
              <SlotReference xsi:type="vec:SlotReference" id="SlotReference_id_442_0">
                <Identification>SR1.1-F1</Identification>
                <ReferencedSlot>Slot_id_441_0</ReferencedSlot>
                <CavityReference id="CavityReference_id_370_138">
                  <Identification>F1-1</Identification>
                  <ReferencedCavity>Cavity_id_370_114</ReferencedCavity>
                </CavityReference>
                ...
              </SlotReference>
            </ConnectorHousingRole>
            <PinComponentRef id="PinComponentReference_id_370_138">
              <Identification>F1-1</Identification>
              <PinComponent>PinComponent_id_370_114</PinComponent>
            </PinComponentRef>
            ...
          </HousingComponentRef>
          ...
        </Role>
```

The two parallel references reflect two different aspects: the {{<vec-class CavityReference>}}s are the mechanical view, which is used for contacting the wires of the harness or for the coupling with a mating connector; the {{<vec-class PinComponentReference>}}s are the electrical view, which is used, for example, for the internal connectivity of the component.

#### Assemblies

An {{<kbl-class Assembly_part_occurrence>}} becomes a {{<vec-class PartOccurrence>}} with a {{<vec-class PartWithSubComponentsRole>}}, which references the {{<vec-class PartStructureSpecification>}} of the assembly. If the KBL instantiates components of the assembly in the harness (`Specified_..._occurrence`s such as {{<kbl-class Specified_component_occurrence>}}, with `Related_assembly` and `Related_occurrence`), these become {{<vec-class PartOccurrence>}}s in the harness as well:

- The `Related_occurrence` (the occurrence in the {{<kbl-class Assembly_part>}}) becomes the `InstanciatedOccurrence`.
- The occurrence is referenced as `SubComponent` by the {{<vec-class PartWithSubComponentsRole>}} of the assembly occurrence (`Related_assembly`).

This corresponds to the instantiation of assemblies described in [Composite Parts – Usage of an Assembly]({{<relref "../composite-parts#usage-of-an-assembly">}}).

```xml
<!-- KBL -->
        <Assembly_part_occurrence id="id_305_0">
            <Id>MF1</Id>
            ...
            <Part>id_304_1</Part>
        </Assembly_part_occurrence>
        ...
        <Component_occurrence id="id_303_0" xsi:type="kbl:Specified_component_occurrence">
            <Id>MF1_F1</Id>
            ...
            <Part>id_302_0</Part>
            <Related_assembly>id_305_0</Related_assembly>
            <Related_occurrence>id_303_1</Related_occurrence>
        </Component_occurrence>
<!-- VEC -->
      <Component id="PartOccurrence_id_305_0">
        <Identification>MF1</Identification>
        ...
        <Role xsi:type="vec:PartWithSubComponentsRole" id="PartWithSubComponentsRole_id_305_0">
          <Identification>MF1</Identification>
          <PartStructureSpecification>PartStructureSpecification_id_304_1</PartStructureSpecification>
          <SubComponent>PartOccurrence_id_303_0 PartOccurrence_id_303_2 PartOccurrence_id_303_4 PartOccurrence_id_303_6 PartOccurrence_id_303_8 PartOccurrence_id_303_10</SubComponent>
        </Role>
        ...
        <Part>PartVersion_id_304_1</Part>
      </Component>
      <Component id="PartOccurrence_id_303_0">
        <Identification>MF1-MF1_F1</Identification>
        ...
        <InstanciatedOccurrence>PartOccurrence_id_303_1</InstanciatedOccurrence>
        <Part>PartVersion_id_302_0</Part>
      </Component>
```

Since the instantiated occurrences of all assemblies are contained in the same {{<vec-class CompositionSpecification>}}, their identifications must be unique within it. The reference implementation therefore prefixes the identification with the identification of the assembly occurrence (`MF1-MF1_F1`).

### Bill of Material / Part Structure

{{< gh-review "1174" >}}

{{< gh-review "1178" >}}

One central view on the product is the bill of material (BoM) or part structure. It defines which parts (components) are used for the harness, its variants and modules.

The KBL has a very explicit definition of the part structure with predefined levels and semantics, compare the diagram below (_Note: The diagram is, for the sake of simplicity, conceptually, and not precisely KBL syntax_):

- {{< kbl-class Harness >}}: The container for all variants and part occurrences that compose a harness description (150% definition).
- {{< kbl-class Module >}}: A subset of part occurrences that is used for variant management within the harness (< 100%).
- {{< kbl-class Harness_configuration >}}: A set of {{< kbl-class Module >}}s used to define specific variants of a harness (= 100%)
- {{< kbl-class Module_configuration >}}: A subset of part occurrences without part number (< 100%).
- {{< kbl-class Assembly_part >}}: A predefined part consisting of multiple parts, that is used within a harness (e.g. a USB-Cable).
- {{< kbl-class Connection_or_Occurrence >}}: An occurrence (usage) of a part/component within the harness with capability to define usage specific information (e.g. wire length).

{{< figure src="kbl-bom-structure.svg" title="Part Structure in the KBL" numbered="true" lightbox="true" >}}

In contrast, the VEC provides a highly generic and flexible concept for representing Bills of Material (BoMs). While a strictly defined and semantically precise model, like the one in KBL, has clear advantages — such as unambiguous interpretation and validation — it must also be capable of reflecting real-world complexity. The rigid semantics of the KBL work well within its original scope, but become increasingly insufficient when moving beyond it.

In broader application scenarios, additional concepts are often required, such as production modules, lead sets, or vehicle configurations e.g. for cost and variant calculations. Furthermore, the interpretation of certain concepts may vary depending on the stakeholder’s perspective. For example, an OEM might define a structure as an assembly, whereas a Tier1-supplier may regard the same structure as a module. This highlights the need for more adaptable and context-aware modeling approaches, as supported by the VEC. The basic concepts are illustrated in the following diagram:

{{< figure src="vec-bom-concept.svg" title="Part Structure in the VEC" numbered="true" lightbox="true" >}}
The {{< vec-class CompositionSpecification >}} serves as a container for defining {{< vec-class PartOccurrence >}}s. At this stage, it is not yet associated with any specific part and does not represent a configuration of parts. Such an independent container is necessary, particularly when describing variant-rich (150%) products, where individual occurrences of parts cannot always be uniquely assigned to a single configuration unit and may be reused in multiple contexts (150% definition).

Using the {{< vec-class PartStructureSpecification >}}, subsets of the previously defined {{< vec-class PartOccurrence >}}s can now be selected and defined as the Bill of Material (BoM) for a specific {{< vec-class PartVersion >}}. These {{< vec-class PartVersion >}}s can, in turn, be instantiated as {{< vec-class PartOccurrence >}}s to define another level of the BoM.

This recursive structure allows for the representation of hierarchical BoMs of arbitrary depth, as well as parallel BoM structures—for example, engineering BoM (EBOM) and manufacturing BoM (MBOM).

The assignment to semantics commonly used in harness development (such as harness, module, etc.) is done via the `content` attribute of the {{< vec-class PartStructureSpecification >}} with literals defined in {{< vec-class "PartStructureContentType">}}. This classification then implies semantic constraints — for example, with respect to completeness (e.g. 100%, 150%) and the types of elements that are allowed.

A typical example: a variant usually consists of modules, which means that only {{< vec-class PartOccurrence >}}s representing modules may be referenced in a variant’s BoM.
 
As shown in the first diagram above, the Bill of Materials (BoM) structure in KBL essentially consists of three levels:

1. **{{<kbl-class Harness >}} / {{<kbl-class Harness_Configuration >}}**: This represents the top level of the hierarchical BoM. The interpretation of the {{<kbl-class Harness >}} element varies depending on whether the context is a staged wiring harness (Stufenleitungssatz) or a customer-specific harness (KSK):

    * In the case of a KSK, the {{<kbl-class Harness >}} represents a 150% BoM of all orderable modules. Existing {{<kbl-class Harness_Configuration >}} elements are orthogonal to this and typically represent predefined variants, e.g., for calculation purposes.
    * For staged harnesses, the {{<kbl-class Harness >}} element merely serves as a container for defining the various variants, which are modeled as {{<kbl-class Harness_Configuration >}} elements.
2. **{{<kbl-class Module>}}s**: Break down the complete set of all occurrences (150%) into smaller subsets suitable for variant management.
3. **{{<kbl-class Connection_or_Occurrence >}}**: All instances of the harness components (e.g. connectors, wires)

The basic mapping of those concepts into the generic approach of the VEC is illustrated in the diagram below.

{{< figure src="bom-layers.svg" title="Mapping of the KBL Part Structure Layers" numbered="true" lightbox="true" >}}
Each layer consists of a part master definition ({{<vec-class PartVersion>}}), that is used to create instances ({{<vec-class "PartOccurrence">}}) within a container for the layer ({{<vec-class CompositionSpecification>}}). Each layer defines its own container (see [Composite Parts – Layers and Control Information]({{< relref "../composite-parts#layers-and-control-information" >}})). The {{<vec-class "PartOccurrence">}} of one layer are then used to define the part master definition of the next layer ({{<vec-class PartStructureSpecification>}} and {{<vec-class PartVersion>}}).

{{% callout note %}}
A detail not shown in the diagram above is the instantiation of the subcomponents of a BoM part. In the case of library parts (i.e., {{<kbl-class Assembly_part >}} in KBL), subcomponents that are relevant in the using context are represented by distinct {{<vec-class PartOccurrence >}} instances, separate from those used to define the part’s structure, and referenced as `SubComponent` by the instance of the BoM part.

In contrast, for modules within a wiring harness, the same {{<vec-class PartOccurrence >}} instances are reused, both to define the structure and for instantiation. This distinction reflects different instantiation approaches and has important implications for reuse and traceability. A detailed explanation of these modeling approaches can be found in the VEC specification under: {{<vec-diagram "composite-part-descriptions/instantiation-approaches">}}

{{% /callout %}}

#### Mapping KBL Classification to `PartStructureContentType`

The following table defines the Mapping between KBL classifications and {{<vec-class PartStructureContentType>}}s.

| KBL Classification | `PartStructureContentType` |
| -------- | ------- |
| {{<kbl-class harness>}}  | `Harness`    |
| {{<kbl-class harness_configuration >}} | `Variant`    |
| {{<kbl-class module >}}    | `Module`    |
| {{<kbl-class module >}} with `Content=variant` | `Variant`    |
| {{<kbl-class Assembly_part >}}    | `Assembly`    |

A KBL {{<kbl-class module >}} with `Content=variant` defines a variant directly as a set of components. Unlike the typical variant, which consists of modules, its {{<vec-class PartStructureSpecification>}} therefore references component occurrences. Its occurrence is created in the module layer like any other module.

#### XML Representation

{{< gh-review "1174" >}}

{{< gh-review "1178" >}}

The following XML listings explain the BoM mapping in detail. They start from the lowest level (the components) and end at the top (the harness).

The first step is to create the basic occurrences for the harness. For every {{<kbl-class Connection_or_occurrence >}} in the KBL {{<kbl-class Harness >}} a {{<vec-class PartOccurrence >}} is created. An exception is the KBL {{<kbl-class Connection >}}, which is not representing an occurrence of a component, and therefore no {{<vec-class PartOccurrence >}} is created in the VEC. The {{<vec-class Role>}}s are omitted in the snippet below, as this a separate topic, handled in [Instances of Components]({{<relref "#instances-of-components">}}). The `Identification` used for the {{<vec-class CompositionSpecification >}} is `COMPONENTS`. The identifications `COMPONENTS` and `MODULES` are a recommendation for this mapping and not a general VEC convention.

```xml
    <Specification xsi:type="vec:CompositionSpecification" id="CompositionSpecification_id_328_0_1">
      <Identification>COMPONENTS</Identification>
      ...
      <Component id="PartOccurrence_id_316_0">
        ...
        <Identification>XA.L2.1</Identification>
        ...
        <Part>PartVersion_id_315_0</Part>
      </Component>
      ...
      <Component id="PartOccurrence_id_350_1">
        <Identification>2</Identification>
        ...
        <Part>PartVersion_id_327_1</Part>
      </Component>
      ...
    </Specification>
```

For each module, a {{<vec-class PartStructureSpecification >}} is created, referencing the occurrences that belong to the module, defined above. These are the `Controlled_components` of the {{<kbl-class Module_configuration>}} of the {{<kbl-class Module>}}, without the {{<kbl-class Connection>}}s.

```xml
    <Specification xsi:type="vec:PartStructureSpecification" id="PartStructureSpecification_id_353_0">
      <Identification>PSS-MDL123456</Identification>
      <DescribedPart>PartVersion_id_331_0</DescribedPart>
      <Content>Module</Content>
      <InBillOfMaterial>PartOccurrence_id_312_0 PartOccurrence_id_312_1 PartOccurrence_id_312_2 PartOccurrence_id_316_1 ...</InBillOfMaterial>
    </Specification>
```
To define the next layer, instances of the modules are required. Those are created within a separate  {{<vec-class CompositionSpecification >}} with the `Identification = 'MODULES'` (a recommendation for this mapping, see above). The module {{<vec-class PartOccurrence >}} references the module's {{<vec-class PartStructureSpecification >}}, whose `InBillOfMaterial` are the component {{<vec-class PartOccurrence >}}s defined above. No component occurrences are cloned for the module occurrence. This is, because modules are normally defined in-place (see {{<vec-diagram "composite-part-descriptions/instantiation-approaches">}}). As the composition of the module is already defined by its {{<vec-class PartStructureSpecification >}}, the {{<vec-class PartWithSubComponentsRole >}} of the module occurrence should not reference the component occurrences as `SubComponent` (see [Composite Parts]({{< relref "../composite-parts#details" >}})).

```xml
    <Specification xsi:type="vec:CompositionSpecification" id="CompositionSpecification_id_328_0">
      <Identification>MODULES</Identification>
      <Component id="PartOccurrence_id_331_0">
        <Identification>MDL123456</Identification>
        <Role xsi:type="vec:PartWithSubComponentsRole" id="PartWithSubComponentsRole_id_353_0">
          <Identification>MDL123456</Identification>
          <PartStructureSpecification>PartStructureSpecification_id_353_0</PartStructureSpecification>
        </Role>
        <Part>PartVersion_id_331_0</Part>
      </Component>
    </Specification>
```

{{% callout note %}}
The reference implementation still references the component occurrences as `SubComponent` of the module occurrence. This reference is omitted in the snippet above.
{{% /callout %}}

As a Module is now a regular {{<vec-class PartOccurrence >}} the generic concepts in the VEC for {{<vec-class PartOccurrence >}}s can now be applied (e.g. Variant Management, see below) and no module specific modelling concepts, like the KBL `Logistic_control_information` are required.

Based on the module {{<vec-class PartOccurrence >}}s, now a {{<vec-class PartStructureSpecification >}} for the harness can be defined.

```xml
    <Specification xsi:type="vec:PartStructureSpecification" id="PartStructureSpecification_id_328_0">
      <Identification>PSS-LTG0011200</Identification>
      <DescribedPart>PartVersion_id_328_0</DescribedPart>
      <Content>Harness</Content>
      <InBillOfMaterial>PartOccurrence_id_331_0</InBillOfMaterial>
    </Specification>
```

{{% callout warning %}}
**To be decided:** In the KBL, not all occurrences of a harness belong to a module (in the example file, e.g., the multi-fuse `MF1`, the connector `XA.L2.1` and the splice `D50`). Such occurrences are part of the harness in any case or carry their own control information (see [Composite Parts – Layers and Control Information]({{< relref "../composite-parts#layers-and-control-information" >}})). Since they are not contained in any module, they would not be part of any bill of material if the harness {{<vec-class PartStructureSpecification >}} references only the module occurrences. It is proposed that these occurrences are referenced directly as `InBillOfMaterial` by the {{<vec-class PartStructureSpecification >}} of the harness. Instantiated subcomponents of assemblies (the `Specified_..._occurrence`s, e.g. `MF1_F1`) are excluded: only the occurrence of the assembly itself is part of the bill of material (see [Composite Parts – Usage of an Assembly]({{< relref "../composite-parts#usage-of-an-assembly" >}})). The reference implementation currently references only the module occurrences.
{{% /callout %}}

**Harness configurations.** A {{<kbl-class Harness_configuration>}} defines a variant of the harness as a set of modules. It is mapped like a module on the next level: a {{<vec-class PartVersion>}} for the configuration and a {{<vec-class PartStructureSpecification>}} with `Content=Variant`, which references the module {{<vec-class PartOccurrence >}}s of the `Modules` of the configuration as `InBillOfMaterial`. The reference implementation does not convert harness configurations yet.

### Variant Management (Logistic Control Information)

{{< gh-review "1178" >}}

The KBL uses the {{<kbl-class Module_configuration >}} element and its `Logistic_control_information` attribute to define variant management information. In contrast, the VEC offers a more flexible approach, allowing variant management data to be associated with almost any element that is a subclass of {{<vec-class ConfigurableElement >}}. Additionally, the VEC introduces an indirection layer, enabling elements to be supplemented with variant management information either retrospectively or externally. It is also possible to assign different control information to an element depending on the context.

As a result, the single `Logistic_control_information` attribute in the KBL is mapped to a more comprehensive set of classes and attributes in the VEC, providing greater flexibility and specificity in variant management. Specifically, two specifications are required for this purpose, with one instance of each per harness description ({{<vec-class DocumentVersion>}} with `DocumentType=HarnessDescription`):

1. The {{<vec-class VariantConfigurationSpecification >}} defines the set of configuration terms used. For each distinct `Logistic_control_information` string, a corresponding {{<vec-class VariantConfiguration >}} should be created.
2. The {{<vec-class ConfigurationConstraintSpecification >}} assigns these terms to specific elements. For each {{<kbl-class Module >}} with a `Logistic_control_information`, a {{<vec-class ConfigurationConstraint >}} should be created to link the corresponding {{<vec-class PartOccurrence>}} to the appropriate {{<vec-class VariantConfiguration>}}.

The following XML snippet illustrates the required specifications and their relationships.

```xml
    <Specification xsi:type="vec:VariantConfigurationSpecification" id="VariantConfigurationSpecification_id_328_0">
      <Identification>VCS-LTG0011200</Identification>
      <VariantConfiguration id="VariantConfiguration_id_353_0">
        <Identification>VarConf_MDL123456</Identification>
        <LogisticControlExpression>L0L+ALL</LogisticControlExpression>
        <ConfigurationType>Logistic</ConfigurationType>
      </VariantConfiguration>
    </Specification>
    <Specification xsi:type="vec:ConfigurationConstraintSpecification" id="ConfigurationConstraintSpecification_id_328_0">
      <Identification>CCS-LTG0011200</Identification>
      <ConfigurationConstraint id="ConfigurationConstraint_id_353_0">
        <Identification>ConfConstraint_MDL123456</Identification>
        <ConfigInfo>VariantConfiguration_id_353_0</ConfigInfo>
        <ConstrainedElements>PartOccurrence_id_331_0</ConstrainedElements>
      </ConfigurationConstraint>
    </Specification>
    ...
    <Specification xsi:type="vec:CompositionSpecification" id="CompositionSpecification_id_328_0">
      <Identification>MODULES</Identification>
      <Component id="PartOccurrence_id_331_0">
        <Identification>MDL123456</Identification>
        <Role xsi:type="vec:PartWithSubComponentsRole" id="PartWithSubComponentsRole_id_353_0">
          <Identification>MDL123456</Identification>
          <PartStructureSpecification>PartStructureSpecification_id_353_0</PartStructureSpecification>
        </Role>
        <Part>PartVersion_id_331_0</Part>
      </Component>
    </Specification>
```

{{%callout note %}}
As mentioned before, the KBL {{<kbl-class Module >}} is split up in the VEC into its part definition aspects (i.e. {{<vec-class PartStructureSpecification >}}) and in its instance/usage aspects (i.e. {{<vec-class PartOccurrence >}}). The variant management is always attached to usage context of something. Therefore, the {{<vec-class configurationConstraint >}} is pointing to the {{<vec-class PartOccurrence>}}.
{{%/callout %}}

{{% callout note %}}
The reference implementation creates one {{<vec-class VariantConfiguration>}} per {{<kbl-class Module_configuration>}}, i.e. modules with the same `Logistic_control_information` get separate {{<vec-class VariantConfiguration>}}s.
{{% /callout %}}

The {{<vec-class VariantConfiguration>}} offers two attributes for the control information: the `LogisticControlExpression` for a Boolean term and the `LogisticControlString` for control information that is not expressed by Boolean logic. Which one is used depends on the KBL dialect. In the example, the VOBES expression `L0L+ALL` is a Boolean term and therefore a `LogisticControlExpression`. The `ConfigurationType=Logistic` classifies the configuration as logistic control information, which corresponds to the meaning of the KBL attribute.

#### Module Configurations Defined Directly under the Harness

Besides the {{<kbl-class Module_configuration>}} of a {{<kbl-class Module>}}, the KBL allows {{<kbl-class Module_configuration>}}s that are defined directly under the {{<kbl-class Harness>}}. They control components that do not belong to a module, or that are only required for certain combinations of modules. The `Configuration_type` defines how the `Logistic_control_information` is to be interpreted, which results in different representations in the VEC:

| `Configuration_type` | VEC |
|-----|-----|
| `option code` (or not defined) | A {{<vec-class VariantConfiguration>}} for the `Logistic_control_information` and a {{<vec-class ConfigurationConstraint>}} that references the `Controlled_components` directly as `ConstrainedElements`. The components carry their own control information (see [Composite Parts – Layers and Control Information]({{< relref "../composite-parts#layers-and-control-information" >}})). |
| `module list` | A {{<vec-class ModuleList>}} in a {{<vec-class ModuleListSpecification>}}. The `Controlled_components` become the `CompletionComponents`, the modules of the list become `ModuleInList`. |

The {{<vec-class ModuleList>}} references the modules by their {{<vec-class PartWithSubComponentsRole>}}s. Its semantics in the VEC are: if at least one of the modules in the list is part of a variant, the completion components are part of it as well. The KBL documentation describes the `Logistic_control_information` of a module list as a Boolean expression for the combination of modules. In VOBES data, it contains the XML ids of the modules, as in the following example from the [KSK sample](https://github.com/4Soft-de/harness-model/tree/develop/kbl2vec/src/test/resources) of the reference implementation. If the modules cannot be identified from the `Logistic_control_information`, the module list should be mapped like an option code.

```xml
<!-- KBL -->
        <Module_configuration id="id_353_102">
            <Logistic_control_information>id_331_0 id_331_22 id_331_23 id_331_24 id_331_25</Logistic_control_information>
            <Configuration_type>module list</Configuration_type>
            <Controlled_components>id_316_16</Controlled_components>
        </Module_configuration>
<!-- VEC -->
    <Specification xsi:type="vec:ModuleListSpecification" id="ModuleListSpecification_id_328_0">
      <Identification>ModuleLists</Identification>
      <ModuleListConfiguration id="ModuleList_id_353_102">
        <Identification>ModuleList-id_353_102</Identification>
        <CompletionComponents>PartOccurrence_id_316_16</CompletionComponents>
        <ModuleInList>PartWithSubComponentsRole_id_353_0 PartWithSubComponentsRole_id_353_22 PartWithSubComponentsRole_id_353_23 PartWithSubComponentsRole_id_353_24 PartWithSubComponentsRole_id_353_25</ModuleInList>
      </ModuleListConfiguration>
      ...
    </Specification>
```

#### Module Families

A {{<kbl-class Module_family>}} groups modules that exclude each other (e.g. the left-hand and right-hand drive variants of a module). It becomes a {{<vec-class ModuleFamily>}} in a {{<vec-class ModuleFamilySpecification>}}, which references the {{<vec-class PartWithSubComponentsRole>}}s of the modules whose `Of_family` points to the {{<kbl-class Module_family>}}.

```xml
    <Specification xsi:type="vec:ModuleFamilySpecification" id="ModuleFamilySpecification_id_328_0">
      <Identification>Families</Identification>
      <ModuleFamily id="ModuleFamily_id_332_0">
        <Identification>000</Identification>
        <Description xsi:type="vec:LocalizedString" id="LocalizedString_00143">
          <LanguageCode>De</LanguageCode>
          <Value>LEITUNGSSTRANG</Value>
        </Description>
        <ModuleInFamily>PartWithSubComponentsRole_id_353_0</ModuleInFamily>
      </ModuleFamily>
    </Specification>
```

#### Harness Configurations

A {{<kbl-class Harness_configuration>}} can carry a `Logistic_control_information` as well, which defines when the variant is used. As for modules, this control information belongs to the usage of the variant. It therefore requires an occurrence of the variant ({{<vec-class PartOccurrence>}} of the {{<vec-class PartVersion>}} of the harness configuration, in a {{<vec-class CompositionSpecification>}} of its own), to which the {{<vec-class ConfigurationConstraint>}} is attached (see [Composite Parts – Layers and Control Information]({{< relref "../composite-parts#layers-and-control-information" >}})). The reference implementation does not convert harness configurations yet.

### Connectivity

In the KBL, the electrical connectivity of the harness is defined by two concepts:

- A {{<kbl-class Connection>}} defines which wire (or core) connects which points of the harness. It references the wire occurrence (`Wire`) and has two or more {{<kbl-class Extremity>}}s, each of which references a {{<kbl-class Contact_point>}}. The connection can carry a signal (`Signal_name`).
- A {{<kbl-class Contact_point>}} of a connector occurrence defines what happens at a cavity: it references the cavity (`Contacted_cavity`) and the parts used for the contacting (`Associated_parts`, e.g. terminal and seal).

The VEC describes the same information in the wiring layer (see [Wiring]({{<relref "../../elog-layers/wiring">}})): the ends of a wire are {{<vec-class WireEnd>}}s of its {{<vec-class WireElementReference>}} (see [Instances of Components]({{<relref "#wires-and-cores">}})), and a {{<vec-class ContactPoint>}} in the {{<vec-class ContactingSpecification>}} of the harness description defines the contacting. One {{<vec-class ContactingSpecification>}} contains all {{<vec-class ContactPoint>}}s of the harness.

{{< figure src="connectivity.svg" title="Connectivity in KBL and VEC" numbered="true" lightbox="true" >}}

The mapping is as follows:

| KBL | VEC |
|-----|-----|
| {{<kbl-class Connection>}} | no element of its own; its information is distributed to the {{<vec-class WireElementReference>}} of the wire (`Wire`), the {{<vec-class WireEnd>}}s and the {{<vec-class Signal>}} |
| {{<kbl-class Extremity>}} | {{<vec-class WireEnd>}} of the {{<vec-class WireElementReference>}} (`Position_on_wire` becomes `PositionOnWire`) |
| {{<kbl-class Contact_point>}} | {{<vec-class ContactPoint>}} |
| `Contacted_cavity` | {{<vec-class CavityMounting>}} with the {{<vec-class CavityReference>}} as `EquippedCavityRef` |
| `Extremity.Contact_point` | {{<vec-class WireMounting>}} that references the {{<vec-class WireEnd>}}s as `ReferencedWireEnd` |
| `Associated_parts`: terminal | `MountedTerminal` ({{<vec-class TerminalRole>}}) of the {{<vec-class ContactPoint>}} |
| `Associated_parts`: cavity seal | `MountedCavitySeal` ({{<vec-class CavitySealRole>}}) of the {{<vec-class WireMounting>}} |
| `Replacing` of a terminal or seal, which replaces a plug ({{<kbl-class Part_substitution>}}) | `ReplacedPlug` ({{<vec-class CavityPlugRole>}}) of the {{<vec-class CavityMounting>}} |

Note that the direction of the references is inverted: in the KBL, the {{<kbl-class Extremity>}} of the connection references the {{<kbl-class Contact_point>}}; in the VEC, the {{<vec-class WireMounting>}} of the {{<vec-class ContactPoint>}} references the {{<vec-class WireEnd>}}.

The following example shows a connection of the example file, the wire of which is shown in [Instances of Components]({{<relref "#wires-and-cores">}}). One end is contacted with a terminal in a cavity of the connector `XA.L1.1`:

```xml
<!-- KBL -->
        <Connection id="id_314_1">
            <Id>1_D50_1_1</Id>
            <Signal_name>1</Signal_name>
            <Wire>id_350_1</Wire>
            <Extremities id="id_377_2">
                <Position_on_wire>0</Position_on_wire>
                <Contact_point>id_372_6</Contact_point>
            </Extremities>
            <Extremities id="id_377_3">
                <Position_on_wire>1</Position_on_wire>
                <Contact_point>id_372_7</Contact_point>
            </Extremities>
        </Connection>
        ...
            <Contact_points id="id_372_7">
                <Id>XA.L1.1-5#2_1_D50_1_1</Id>
                <Associated_parts>id_344_1</Associated_parts>
                <Contacted_cavity>id_370_16</Contacted_cavity>
            </Contact_points>
<!-- VEC -->
      <ContactPoint id="ContactPoint_id_372_7">
        <Identification>XA.L1.1-5#2_1_D50_1_1</Identification>
        <MountedTerminal>TerminalRole_id_344_1</MountedTerminal>
        <CavityMounting id="CavityMounting_id_372_7">
          <EquippedCavityRef>CavityReference_id_370_16</EquippedCavityRef>
        </CavityMounting>
        <WireMounting id="WireMounting_id_372_7">
          <ReferencedWireEnd>WireEnd_id_377_3</ReferencedWireEnd>
        </WireMounting>
      </ContactPoint>
```

**Multi-crimps and splices.** If several extremities reference the same {{<kbl-class Contact_point>}}, the {{<vec-class WireMounting>}} references all their {{<vec-class WireEnd>}}s (see [Wiring – Multi Crimp Contact]({{<relref "../../elog-layers/wiring#multi-crimp-contact">}})). The other end of the connection above is such a contact point: it belongs to the splice `D50`, which is modelled in the KBL as a "virtual" connector (`Usage=splice`, see [Virtual Connector Housings]({{<relref "#virtual-connector-housings">}})). In the VEC, a splice is a terminal and has no cavities, so its {{<vec-class ContactPoint>}} has no {{<vec-class CavityMounting>}} (see [Wiring – Ringterminal - Splice]({{<relref "../../elog-layers/wiring#ringterminal---splice">}})). The reference implementation does not take this into account yet:

```xml
      <ContactPoint id="ContactPoint_id_372_6">
        <Identification>D50-1#1_1_XA.L2.1_6_1#2_1_D50_1_1#6_1_XJ.SR1.1_4A_1</Identification>
        <CavityMounting id="CavityMounting_id_372_6">
          <EquippedCavityRef>CavityReference_id_370_65</EquippedCavityRef>
        </CavityMounting>
        <WireMounting id="WireMounting_id_372_6">
          <ReferencedWireEnd>WireEnd_id_377_1 WireEnd_id_377_11 WireEnd_id_377_2</ReferencedWireEnd>
        </WireMounting>
      </ContactPoint>
```

A VEC {{<vec-class ContactPoint>}} represents exactly one contacting variant: all participants exist together in a harness or none of them. The KBL does not have this restriction. If the wires at a KBL contact point belong to different modules (a 150% splice), the contact point must be split (see [Splices]({{<relref "../../component-types/splices">}})): into one {{<vec-class ContactPoint>}} per contacting variant, if the variants are known, or otherwise into one {{<vec-class ContactPoint>}} per {{<vec-class WireEnd>}}. Since the KBL only provides the module membership of the wires and not the valid combinations, the second case is the usual one for a KBL file.

**Signals.** The `Signal_name` of a KBL {{<kbl-class Connection>}} becomes a {{<vec-class Signal>}} in a {{<vec-class SignalSpecification>}}, which is referenced by the {{<vec-class WireElementReference>}} of the wire. Connections with the same signal name reference the same {{<vec-class Signal>}}. The `Signal_type` and `Nominal_voltage` of the connection correspond to the `SignalType` and `NominalVoltage` of the {{<vec-class Signal>}}. The KBL values are free strings, whereas the VEC attributes are enumerations (e.g. `Information`, `Energy`, `Ground` and `12V`, `48V`, `HV`), so a value mapping is required. The {{<vec-class SignalSpecification>}} can be contained in the harness description. If the signals are managed as a catalogue of their own, a document with `DocumentType=MasterDataDefinition` is used (see [Master Data Definition]({{<relref "../../key-concepts/general-structure#master-data-definition">}})).

{{% callout note %}}
The reference implementation creates a separate document with the custom document type `SignalList` and a placeholder identity for the signals, and converts only the signal names.
{{% /callout %}}

**Connections in the VEC.** The VEC also has a class {{<vec-class Connection>}}. It is not the counterpart of the KBL {{<kbl-class Connection>}}: a VEC {{<vec-class Connection>}} is a logical connection between the ports of components in a system schematic (see [System Schematic]({{<relref "../../elog-layers/system-schematic">}})). The closest KBL concept is the {{<kbl-class Schematic_connection>}}, which is not yet covered by this guideline (see [Open Topics]({{<relref "#open-topics">}})).

### Topology

A KBL {{<kbl-class Node>}} or {{<kbl-class Segment>}} contains information that belongs to three different views in the VEC:

| View | VEC | KBL information | Section |
|-----|-----|-----|-----|
| Topology (the graph of the harness) | {{<vec-class TopologySpecification>}} with {{<vec-class TopologyNode>}}s and {{<vec-class TopologySegment>}}s | `Id`, `Alias_id`, `Start_node`, `End_node`, lengths, cross section areas, `Form` | this section |
| Geometry (the coordinates) | {{<vec-class BuildingBlockSpecification3D>}} / {{<vec-class BuildingBlockSpecification2D>}} with geometry nodes and segments | `Cartesian_point`, `Center_curve`, `Start_vector`, `End_vector` | [Geometry]({{<relref "#geometry">}}) |
| Placement of components | {{<vec-class PlacementSpecification>}} | `Referenced_components` of the node, {{<kbl-class Fixing_assignment>}}s and {{<kbl-class Protection_area>}}s of the segment | [Placement]({{<relref "#placement">}}) |

This separation makes the topology independent of a specific geometry: routings and placements refer to the topology only, and the same topology can have a 2D and a 3D geometry.

The KBL file defines exactly one topology for the harness. It becomes one {{<vec-class TopologySpecification>}} in the harness description. Each {{<kbl-class Node>}} becomes a {{<vec-class TopologyNode>}} and each {{<kbl-class Segment>}} a {{<vec-class TopologySegment>}}, which references its start and end node. The `Id` of the KBL element is used as identification.

The lengths and cross section areas of a {{<kbl-class Segment>}} have the same semantics in both models:

| KBL {{<kbl-class Segment>}} | VEC {{<vec-class TopologySegment>}} |
|-----|-----|
| `Virtual_length` | {{<vec-class SegmentLength>}} with `Classification=Designed` |
| `Physical_length` | {{<vec-class SegmentLength>}} with `Classification=Adapted` |
| `Form` (`circular`, `noncircular`) | `Form` (`Circular`, `NonCircular`) |
| `Cross_section_area_information` with `Value_determination=calculated` | {{<vec-class SegmentCrossSectionArea>}} with `ValueDetermination=Calculated`, `CrossSectionAreaType=Real` |
| `Cross_section_area_information` with `Value_determination=measured` | {{<vec-class SegmentCrossSectionArea>}} with `ValueDetermination=Measured`, `CrossSectionAreaType=Real` |
| `Cross_section_area_information` with `Value_determination=reserved` | {{<vec-class SegmentCrossSectionArea>}} with `ValueDetermination=Estimated`, `CrossSectionAreaType=Reserved` |

The KBL value `reserved` mixes two aspects that are separated in the VEC: the kind of the cross section area (a reserved space instead of the real cross section) and the way the value was determined. Since the KBL does not tell how a reserved value was determined, `Estimated` is a reasonable assumption.

```xml
<!-- KBL -->
    <Segment id="Segment_1">
        <Id>ROUTING_HUT_TF01_MULTI-FUSE_V01VW-Multi-branchable1/ElecRouteBody.1/Flexible Curve.1</Id>
        ...
        <Virtual_length id="Virtual_length_1">
            <Unit_component>id_346_1</Unit_component>
            <Value_component>188.788275</Value_component>
        </Virtual_length>
        <Form>circular</Form>
        <End_node>Node_2</End_node>
        <Start_node>Node_1</Start_node>
        ...
        <Cross_section_area_information id="Cross_section_area_1">
            <Value_determination>reserved</Value_determination>
            <Area id="Area_1">
                <Unit_component>id_346_0</Unit_component>
                <Value_component>7.068583</Value_component>
            </Area>
        </Cross_section_area_information>
    </Segment>
<!-- VEC -->
      <TopologySegment id="TopologySegment_Segment_1">
        <Identification>ROUTING_HUT_TF01_MULTI-FUSE_V01VW-Multi-branchable1/ElecRouteBody.1/Flexible Curve.1</Identification>
        <Form>Circular</Form>
        <EndNode>TopologyNode_Node_2</EndNode>
        <StartNode>TopologyNode_Node_1</StartNode>
        <CrossSectionAreaInformation id="SegmentCrossSectionArea_Cross_section_area_1">
          <Area id="NumericalValue_Area_1">
            <UnitComponent>SIUnit_id_346_0</UnitComponent>
            <ValueComponent>7.068583</ValueComponent>
          </Area>
          <ValueDetermination>Estimated</ValueDetermination>
          <CrossSectionAreaType>Reserved</CrossSectionAreaType>
        </CrossSectionAreaInformation>
        <LengthInformation id="SegmentLength_00121">
          <Length id="NumericalValue_Virtual_length_1">
            <UnitComponent>SIUnit_id_346_1</UnitComponent>
            <ValueComponent>188.788275</ValueComponent>
          </Length>
          <Classification>Designed</Classification>
        </LengthInformation>
      </TopologySegment>
```

The `Bend_radius` and `Folding_direction` of a KBL {{<kbl-class Node>}} have no direct counterpart in the {{<vec-class TopologyNode>}} (see [Open Topics]({{<relref "#open-topics">}})). The KBL has no concept of usage nodes, so the `RealizedUsageNode` of a {{<vec-class TopologyNode>}} is not set (see [Usage Nodes]({{<relref "../../key-concepts/usage-nodes">}})).

### Geometry

The KBL contains one geometry of the harness. Whether it is a 3D geometry (e.g. from a DMU) or a 2D geometry (e.g. of a formboard drawing) is implicit in the number of coordinates of the {{<kbl-class Cartesian_point>}}s. The VEC can contain both in parallel and distinguishes them explicitly:

| | 3D | 2D |
|-----|-----|-----|
| Container | {{<vec-class HarnessGeometrySpecification3D>}} | {{<vec-class HarnessDrawingSpecification2D>}} |
| Geometry | {{<vec-class BuildingBlockSpecification3D>}} | {{<vec-class BuildingBlockSpecification2D>}} |
| {{<kbl-class Node>}} | {{<vec-class GeometryNode3D>}} | {{<vec-class GeometryNode2D>}} |
| {{<kbl-class Segment>}} | {{<vec-class GeometrySegment3D>}} | {{<vec-class GeometrySegment2D>}} |
| Occurrence `Placement` | {{<vec-class OccurrenceOrUsageViewItem3D>}} | {{<vec-class OccurrenceOrUsageViewItem2D>}} |

The geometry of the harness is defined in a building block, which is positioned in the harness geometry by a {{<vec-class BuildingBlockPositioning3D>}} (or 2D). Since the KBL contains a single geometry, a single building block is sufficient and its positioning has no transformation. The geometry nodes and segments reference the {{<vec-class TopologyNode>}}s and {{<vec-class TopologySegment>}}s they represent, and use the same identifications.

```xml
    <Specification xsi:type="vec:HarnessGeometrySpecification3D" id="HarnessGeometrySpecification3D_id_328_0">
      <Identification>GEOMETRY</Identification>
      <Type>Dmu</Type>
      <BuildingBlockPositionings id="BuildingBlockPositioning3D_id_328_0">
        <Referenced3DBuildingBlock>BuildingBlockSpecification3D_id_328_0</Referenced3DBuildingBlock>
      </BuildingBlockPositionings>
    </Specification>
    <Specification xsi:type="vec:BuildingBlockSpecification3D" id="BuildingBlockSpecification3D_id_328_0">
      <Identification>BB_SPEC_3D</Identification>
      <BaseUnit>SIUnit_id_346_1</BaseUnit>
      <CartesianPoint id="CartesianPoint3D_Cartesian_point_1">
        ...
      <GeometryNode id="GeometryNode3D_Node_1">
        <Identification>ROUTING_HUT_TF01_MULTI-FUSE_V01VW-Multi-branchable1/ElecRouteBody.1/Flexible Curve.1/ElecBundleSegmentExtremity.1 ST_SBBR_1</Identification>
        <ReferenceNode>TopologyNode_Node_1</ReferenceNode>
        <CartesianPoint>CartesianPoint3D_Cartesian_point_170</CartesianPoint>
      </GeometryNode>
      ...
```

{{% callout note %}}
**Data Quality**: The coordinates in the KBL have no explicit unit, but the `BaseUnit` of a VEC building block is mandatory. It must be known from the context of the KBL dialect (usually millimetre, as the unit of the segment lengths). In 2D, the `BoundingBox` of the {{<vec-class BuildingBlockSpecification2D>}} is mandatory as well; it has no KBL source and must be derived from the extent of the coordinates.

The reference implementation does not decide between 2D and 3D by the number of coordinates, but by a heuristic based on the segments: a geometry is treated as 3D if the segments have a `Form` and all of them have a centre curve.
{{% /callout %}}

**Centre curves.** The `Center_curve` of a KBL {{<kbl-class Segment>}} is a {{<kbl-class B_spline_curve>}} defined by its degree and control points. In 3D, it becomes a {{<vec-class NURBSCurve>}} of the {{<vec-class GeometrySegment3D>}} with the same degree and control points (all with `Weight=1.0`). The KBL restricts the curves to uniform B-splines, whose knot vector is implicit ("the knot spacing is 1.0, starting at -d, where d is the degree"). The VEC requires the knots explicitly: a uniform knot vector with `number of control points + degree + 1` values. The offset of the knot values is irrelevant for the shape of the curve. Note that the curve of a uniform (unclamped) B-spline does not start and end at its first and last control point. The `Start_vector` and `End_vector` of the KBL segment become the `StartVector` and `EndVector` of the geometry segment.

```xml
      <GeometrySegment id="GeometrySegment3D_Segment_1">
        <Identification>ROUTING_HUT_TF01_MULTI-FUSE_V01VW-Multi-branchable1/ElecRouteBody.1/Flexible Curve.1</Identification>
        <ReferenceSegment>TopologySegment_Segment_1</ReferenceSegment>
        <StartVector id="Cartesiantor3D_00144">
          <X>0.989368</X>
          <Y>0.0</Y>
          <Z>-0.145435</Z>
        </StartVector>
        ...
        <EndNode>GeometryNode3D_Node_2</EndNode>
        <StartNode>GeometryNode3D_Node_1</StartNode>
        <Curve xsi:type="vec:NURBSCurve" id="NURBSCurve_Center_curve_1">
          <Degree>6</Degree>
          <Knots>0.0</Knots>
          <Knots>1.0</Knots>
          ...
          <Knots>13.0</Knots>
          <ControlPoint id="NURBSControlPoint_Cartesian_point_16">
            <Weight>1.0</Weight>
            <CartesianPoint3D>CartesianPoint3D_Cartesian_point_16</CartesianPoint3D>
          </ControlPoint>
          ...
```

In 2D, the shape of a segment is described by the path segments of the {{<vec-class GeometrySegment2D>}}.

**Placement of occurrences.** The `Placement` of a KBL occurrence (e.g. of a connector) defines its position and orientation in the geometry. It becomes a view item of the {{<vec-class PartOccurrence>}} in the building block (in 3D an {{<vec-class OccurrenceOrUsageViewItem3D>}}, XML element `PlacedElementViewItem3D`), whose `Orientation` is a {{<vec-class Transformation3D>}}. The `Cartesian_point` of the KBL placement becomes the `Origin`. The orientation is given in the KBL by two direction vectors `U` and `V`, in the VEC by a 3 × 3 matrix.

```xml
<!-- KBL -->
            <Placement id="Placement_1">
                <U>-0.145435</U>
                <U>0.000000</U>
                <U>-0.989368</U>
                <V>0.000000</V>
                <V>1.000000</V>
                <V>0.000000</V>
                <Cartesian_point>Cartesian_point_1</Cartesian_point>
            </Placement>
<!-- VEC -->
      <PlacedElementViewItem3D id="OccurrenceOrUsageViewItem3D_id_316_0">
        <Identification>XA.L2.1</Identification>
        <OccurrenceOrUsage>PartOccurrence_id_316_0</OccurrenceOrUsage>
        <Orientation id="Transformation3D_Placement_1">
          <A11>-0.145435</A11>
          <A12>0.0</A12>
          <A13>0.989368</A13>
          <A21>0.0</A21>
          <A22>1.0</A22>
          <A23>0.0</A23>
          <A31>-0.989368</A31>
          <A32>0.0</A32>
          <A33>-0.145435</A33>
          <Origin>CartesianPoint3D_Cartesian_point_1</Origin>
        </Orientation>
      </PlacedElementViewItem3D>
```

{{% callout warning %}}
**To be clarified:** The reference implementation interprets `U` and `V` as the directions of the local x and y axes and uses them as the first and second column of the matrix; the third column is the cross product `U × V`. The KBL documentation, however, describes `U` as "the rotation by means of the y-axis" and `V` as "the rotation by means of the z-axis". The interpretation of the KBL transformation needs to be clarified before the mapping of the matrix can be defined in this guideline. In addition, the reference implementation uses the transposed matrix for 2D.
{{% /callout %}}

### Placement

The placement defines where a component is located in the topology of the harness, independent of a specific geometry. In the KBL, this information is attached to the topology elements. In the VEC, it is defined in a {{<vec-class PlacementSpecification>}} of the harness description, whose placements reference the {{<vec-class PlaceableElementRole>}} of the placed occurrence and one or more locations in the topology (see [Placements and Dimensions]({{<relref "../../topology/placement-and-dimensions">}})).

| KBL | VEC |
|-----|-----|
| `Referenced_components` of a {{<kbl-class Node>}} | {{<vec-class OnPointPlacement>}} with a {{<vec-class NodeLocation>}} |
| {{<kbl-class Fixing_assignment>}} of a {{<kbl-class Segment>}} | {{<vec-class OnPointPlacement>}} with a {{<vec-class SegmentLocation>}} |
| {{<kbl-class Protection_area>}} of a {{<kbl-class Segment>}} | {{<vec-class OnWayPlacement>}} with a start and an end {{<vec-class SegmentLocation>}} |

A component that is referenced by several nodes or fixing assignments (e.g. a fixing that is placed on several segments) gets one placement with several locations.

**Placement on nodes.** Connectors and other components that are referenced by a {{<kbl-class Node>}} are placed on the corresponding {{<vec-class TopologyNode>}}:

```xml
    <Specification xsi:type="vec:PlacementSpecification" id="PlacementSpecification_id_328_0">
      <Identification>PLACEMENT</Identification>
      <Placement xsi:type="vec:OnPointPlacement" id="OnPointPlacement_id_316_0">
        <Identification>XA.L2.1</Identification>
        <PlacedElement>PlaceableElementRole_id_316_0</PlacedElement>
        <Location xsi:type="vec:NodeLocation" id="NodeLocation_Node_1">
          <Identification>ROUTING_HUT_TF01_MULTI-FUSE_V01VW-Multi-branchable1/ElecRouteBody.1/Flexible Curve.1/ElecBundleSegmentExtremity.1 ST_SBBR_1</Identification>
          <ReferencedNode>TopologyNode_Node_1</ReferencedNode>
        </Location>
      </Placement>
      ...
```

**Placement on segments.** The locations on a segment are defined differently in both models. The KBL defines a location relative to the segment by a value between 0.0 and 1.0 (`Location`, `Start_location`, `End_location`), and optionally as an absolute value (`Absolute_location`, ...). The VEC defines a {{<vec-class SegmentLocation>}} by an absolute `Offset` from one of the nodes of the segment (`Anchor`: `FromStartNode` or `FromEndNode`).

- If the KBL defines an absolute location, it should be used as offset.
- Otherwise, the offset must be calculated from the relative location and the length of the segment. Note that the relative location in the KBL is a curve parameter, which is in general not proportional to the length of the curve; the calculated offset is an approximation.
- The anchor should be chosen so that the location keeps its meaning when the segment length changes. The relative locations `0.0` and `1.0` are the start node and the end node of the segment, i.e. an offset of 0 from the respective node. For a wire protection, the start and end location should refer to different nodes, so that the protected area adapts to changes of the segment length (see [Placements and Dimensions – Basic Wire Protection]({{<relref "../../topology/placement-and-dimensions#basic-wire-protection">}})).

The following example from the [generator cable sample](https://github.com/4Soft-de/harness-model/tree/develop/kbl2vec/src/test/resources) shows a fixing and a wire protection on the same segment. The reference implementation calculates all offsets from the start node; the end location of the protection (`1.0`) is therefore not anchored at the end node as recommended above.

```xml
<!-- KBL -->
        <Fixing_assignment id="Fixing_assignment_1">
            <Location>0.886766</Location>
            ...
            <Fixing>Fixing_occurrence_1</Fixing>
        </Fixing_assignment>
        <Protection_area id="Protection_area_1">
            <Start_location>0.045496</Start_location>
            <End_location>1.000000</End_location>
            <Associated_protection>Wire_protection_occurrence_1</Associated_protection>
        </Protection_area>
<!-- VEC -->
      <Placement xsi:type="vec:OnWayPlacement" id="OnWayPlacement_Protection_area_1">
        <Identification>N___105_343_01.1-ROUTING_BAUKST_LTGS_GENERATOR-Multi-branchable142/ElecRouteBody.1/Flexible Curve.1</Identification>
        <PlacedElement>PlaceableElementRole_Wire_protection_occurrence_1</PlacedElement>
        <EndLocation xsi:type="vec:SegmentLocation" id="SegmentLocation_Protection_area_1">
          <Identification>END</Identification>
          <Offset id="NumericalValue_00064">
            <UnitComponent>SIUnit_id_346_1</UnitComponent>
            <ValueComponent>219.800924</ValueComponent>
          </Offset>
          <Anchor>FromStartNode</Anchor>
          <ReferencedSegment>TopologySegment_Segment_1</ReferencedSegment>
        </EndLocation>
        <StartLocation xsi:type="vec:SegmentLocation" id="SegmentLocation_Protection_area_1_1">
          <Identification>START</Identification>
          <Offset id="NumericalValue_00065">
            <UnitComponent>SIUnit_id_346_1</UnitComponent>
            <ValueComponent>10.000062838304</ValueComponent>
          </Offset>
          <Anchor>FromStartNode</Anchor>
          <ReferencedSegment>TopologySegment_Segment_1</ReferencedSegment>
        </StartLocation>
      </Placement>
      ...
      <Placement xsi:type="vec:OnPointPlacement" id="OnPointPlacement_Fixing_occurrence_1">
        <Identification>CL_01_Gen</Identification>
        <PlacedElement>PlaceableElementRole_Fixing_occurrence_1</PlacedElement>
        <Location xsi:type="vec:SegmentLocation" id="SegmentLocation_Fixing_assignment_1">
          <Identification>FIXING-0</Identification>
          ...
```

**Wire protections over several segments.** The KBL requires a {{<kbl-class Protection_area>}} per segment. A wire protection that covers several segments therefore has several protection areas. In the VEC, a continuous wire protection is described by one {{<vec-class OnWayPlacement>}} with a start and an end location and a `Path` over the segments in between (see [Placements and Dimensions – Wire Protection covering multiple Topology Segments]({{<relref "../../topology/placement-and-dimensions#wire-protection-covering-multiple-topology-segments">}})). Adjacent protection areas of the same wire protection should therefore be combined into one placement. The `Is_on_top_of` of a KBL {{<kbl-class Protection_area>}} corresponds to the `IsOnTopOf` of the VEC {{<vec-class Placement>}}.

{{% callout note %}}
The reference implementation creates one {{<vec-class OnWayPlacement>}} per KBL {{<kbl-class Protection_area>}} and does not map `Is_on_top_of` yet.
{{% /callout %}}

**Placement points.** If a component is placed at several locations, the VEC can define which point of the component is placed at which location ({{<vec-class PlacementPoint>}}, see [Placements and Dimensions – Multiple Locations with Dimensions]({{<relref "../../topology/placement-and-dimensions#multiple-locations-with-dimensions">}})). The KBL has no such concept, so this information cannot be derived.

### Routing

{{% callout warning %}}
Work in Progress
{{% /callout %}}

## Basic Data Types

### Numerical Values

{{% callout warning %}}
Work in Progress
{{% /callout %}}

### Strings and Localized Strings

{{% callout warning %}}
Work in Progress

The locale of KBL strings must be guessed.
{{% /callout %}}

### Custom Properties and Instructions

{{% callout warning %}}
Work in Progress

KBL installation information is not always used as custom property.
{{% /callout %}}

### Units

To define numerical values, both the VEC and the KBL require units. If the attributes `Si_unit_name`, `Si_prefix`, and `Si_dimension` have been used to define a KBL {{< kbl-class Unit>}}, it can be mapped straight forward to a {{<vec-class SIUnit>}} in the VEC.

{{% callout note %}}
**Data Quality**: The KBL supports only a very limited set of SI units (see {{< kbl-class Si_unit_name >}}) and, in particular, does not support composite units (e.g., g/m). Such units are typically defined using the freely selectable `Unit_name`. When translating this into the VEC, those units can only be mapped to a VEC {{< vec-class "CustomUnit" >}}.
{{% /callout  %}}

## Open Topics

The following KBL concepts are not yet covered by this guideline:

- **Mounting of components in component slots**: The `Mounting` of a {{<kbl-class Component_occurrence>}} defines into which {{<kbl-class Component_slot_occurrence>}} a fuse or relay is plugged. In the VEC, this is a coupling between the E/E component and the component box (see [Coupling]({{<relref "../coupling">}})).
- **Schematic connections**: A {{<kbl-class Schematic_connection>}} is a logical connection between cavities, which is realized by one or more {{<kbl-class Connection>}}s (`Realized_schematic_connection`). It is the closest KBL concept to a VEC {{<vec-class Connection>}}, but mapping it requires a system schematic with components and ports, which the KBL does not provide.
- **Dimensions and tolerances**: The KBL {{<kbl-class Dimension_specification>}} and {{<kbl-class Default_dimension_specification>}} correspond to the {{<vec-class Dimension>}}s of a {{<vec-class PlacementSpecification>}} and to the {{<vec-class DefaultDimensionSpecification>}} (see [Placements and Dimensions]({{<relref "../../topology/placement-and-dimensions">}})). Note that the limits of a KBL {{<kbl-class Tolerance>}} are absolute values, whereas the boundaries of a VEC {{<vec-class Tolerance>}} are deviations from the nominal value.
- **Bend radius and folding direction of nodes**: The `Bend_radius` and `Folding_direction` of a {{<kbl-class Node>}} have no direct counterpart in the {{<vec-class TopologyNode>}}. Bending restrictions are defined in the VEC along a path of the topology ({{<vec-class TopologyBendingRestriction>}}).