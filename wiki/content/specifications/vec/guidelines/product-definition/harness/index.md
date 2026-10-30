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
| {{<kbl-class Component_box >}} | {{<vec-class EEComponentSpecification>}} | [Component Boxes, Fuses and other E/E Components]({{<relref "#component-boxes-fuses-and-other-ee-components">}}) |
| {{<kbl-class Fuse >}} | {{<vec-class EEComponentSpecification>}}, {{<vec-class FuseSpecification>}} | [Component Boxes, Fuses and other E/E Components]({{<relref "#component-boxes-fuses-and-other-ee-components">}}) |
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

{{% callout warning %}}
Work in Progress
{{% /callout %}}

### Assembly Parts

{{% callout warning %}}
Work in Progress
{{% /callout %}}

## Harness Description

{{% callout warning %}}
Work in Progress
{{% /callout %}}

A `HarnessDescription` document contains all {{< vec-class Specification >}}s that are required to describe a Harness. The specifications in the VEC provide a more "view oriented" modelling approach than the KBL. Each specification representing a specific view on the product model, with the possibility to have links between the views. The following sections will describe the mapping topic by topic (or, in other words view by view).

A VEC derived from a single KBL contains one `HarnessDescription` document for the {{<kbl-class Harness>}} defined in the KBL.

### Instances of Components

{{% callout warning %}}
Work in Progress

Identification is mandatory for a {{<vec-class PartOccurrence >}}, but not all KBL occurrences have an `Id`.
{{% /callout %}}

### Bill of Material / Part Structure

{{< gh-review "1174" >}}

{{< gh-review "1178" >}}

One central view on the product is the bill of material (BoM) or part structure. The information which parts (components) are used for the harness, its variants and modules.

The KBL has a very explicit definition of the part structure with predefined levels and semantics, compare the diagram below (_Note: The diagram is, for the sake of simplicity, conceptually, and not precisely KBL syntax_):

- {{< kbl-class Harness >}}: The container for all variants and part occurrences that compose a harness description (150% definition).
- {{< kbl-class Module >}}: A subset of part occurrences the is used for variant management within the harness (< 100%).
- {{< kbl-class Harness_configuration >}}: A set of {{< kbl-class Module >}}s used to define specific variants of a harness (= 100%)
- {{< kbl-class Module_configuration >}}: A subset of part occurrences without part number (< 100%).
- {{< kbl-class Assembly_part >}}: A predefined part consisting of multiple parts, that is used within a harness (e.g. a USB-Cable).
- {{< kbl-class Connection_or_Occurrence >}}: An occurrence (usage) of a part/component within the harness with capability to define usage specific information (e.g. wire length).

```mermaid
graph LR;
  H[Harness];
  O[Occurrence]
  P[Part]
  M[Module]
  HC[Harness_configuration]
  MC[Module_configuration]
  A[Assembly_part]
  H -- contains --> M & HC & MC & O;
  M & MC & A -- uses --> O;
  HC -- uses --> M;
  O -- instance of --> P;
```

In contrast, the VEC provides a highly generic and flexible concept for representing Bills of Material (BoMs). While a strictly defined and semantically precise model, like the one in KBL, has clear advantages — such as unambiguous interpretation and validation — it must also be capable of reflecting real-world complexity. The rigid semantics of the KBL work well within its original scope, but become increasingly insufficient when moving beyond it.

In broader application scenarios, additional concepts are often required, such as production modules, lead sets, or vehicle configurations e.g. for cost and variant calculations. Furthermore, the interpretation of certain concepts may vary depending on the stakeholder’s perspective. For example, an OEM might define a structure as an assembly, whereas a Tier1-supplier may regard the same structure as a module. This highlights the need for more adaptable and context-aware modeling approaches, as supported by the VEC. The basic concepts are illustrated in the following diagram:

```mermaid
graph LR;
  CS[CompositionSpecification];
  O[PartOccurrence];
  P[PartVersion];
  PS[PartStructure];
  CS -- contains --> O;
  O -- instance of --> P;
  PS -- describes --> P;
  PS -- "bill of material" --> O;
```
The {{< vec-class CompositionSpecification >}} serves as a container for defining {{< vec-class PartOccurrence >}}s. At this stage, it is not yet associated with any specific part and does not represent a configuration of parts. Such an independent container is necessary, particularly when describing variant-rich (150%) products, where individual occurrences of parts cannot always be uniquely assigned to a single configuration unit and may be reused in multiple contexts (150% definition).

Using the {{< vec-class PartStructureSpecification >}}, subsets of the previously defined {{< vec-class PartOccurrence >}}s can now be selected and defined as the Bill of Material (BoM) for a specific {{< vec-class PartVersion >}}. These {{< vec-class PartVersion >}}s can, in turn, be instantiated as {{< vec-class PartOccurrence >}}s to define another level of the BoM.

This recursive structure allows for the representation of hierarchical BoMs of arbitrary depth, as well as parallel BoM structures—for example, engineering BoM (EBOM) and manufacturing BoM (MBOM).

The assignment to semantics commonly used in harness development (such as harness, module, etc.) is done via the `content` attribute of the {{< vec-class PartStructureSpecification >}} with literals defined in {{< vec-class "PartStructureContentType">}}. This classification then implies semantic constraints — for example, with respect to completeness (e.g. 100%, 150%) and the types of elements that are allowed.

A typical example: a variant usually consists of modules, which means that only {{< vec-class PartOccurrence >}}s representing modules may be referenced in a variant’s BoM.
 
As shown in the diagram above, the Bill of Materials (BoM) structure in KBL essentially consists of three levels:

1. **{{<kbl-class Harness >}} / {{<kbl-class Harness_Configuration >}}**: This represents the top level of the hierarchical BoM. The interpretation of the {{<kbl-class Harness >}} element varies depending on whether the context is a staged wiring harness (Stufenleitungssatz) or a customer-specific harness (KSK):

    * In the case of a KSK, the {{<kbl-class Harness >}} represents a 150% BoM of all orderable modules. Existing {{<kbl-class Harness_Configuration >}} elements are orthogonal to this and typically represent predefined variants, e.g., for calculation purposes.
    * For staged harnesses, the {{<kbl-class Harness >}} element merely serves as a container for defining the various variants, which are modeled as {{<kbl-class Harness_Configuration >}} elements.
2. **{{<kbl-class Module>}}s**: Break down the complete set of all occurrences (150%) into smaller subsets suitable for variant management.
3. **{{<kbl-class Connection_or_Occurrence >}}**: All instances of the harness components (e.g. connectors, wires)

The basic mapping of those concepts into the generic approach of the VEC is illustrated in the diagram below.

```mermaid
graph LR;
  OC["PartOccurrence"];
  CSC["CompositionSpecification"];
  PSM["PartStructureSpecification"];
  PVM["PartVersion"];
  CSM["CompositionSpecification"];
  OM["PartOccurrence"];
  PVH["PartVersion"]
  PSH["PartStructureSpecification"];

  PSM -- "bill of material" --> OC;
  OM -- instance of --> PVM;
  subgraph "Components (Part Master Definition)"
    PVO["PartVersion"];
  end 
  subgraph "Components (Instances)"
    OC -- instance of --> PVO;
    CSC -- contains --> OC;
  end
  subgraph "Modules (Instances)"  
    CSM -- contains --> OM;
  end
  subgraph "Modules (Part Master Definition)"
    PSM -- describes --> PVM;
  end
  subgraph Harness/HarnessConfiguration
    PSH -- describes --> PVH;
    PSH -- "bill of material" --> OM;
  end
```
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
| {{<kbl-class Assembly_part >}}    | `Assembly`    |

#### XML Representation

{{< gh-review "1174" >}}

{{< gh-review "1178" >}}

The following XML listings explain the BoM mapping in detail. They start from the lowest level (the components) and the end at the top (the harness).

The first step is to create the basic occurrences for the harness. For every {{<kbl-class Connection_or_occurrence >}} in the KBL {{<kbl-class Harness >}} a {{<vec-class PartOccurrence >}} is created. An exception is the KBL {{<kbl-class Connection >}}, which is not representing an occurrence of a component, and therefore no {{<vec-class PartOccurrence >}} is created in the VEC. The {{<vec-class Role>}}s are omitted in the snippet below, as this a separate topic, handled in [Instances of Components]({{<relref "#instances-of-components">}}). The `Identification` used for the {{<vec-class CompositionSpecification >}} is `COMPONENTS`. The identifications `COMPONENTS` and `MODULES` are a recommendation for this mapping and not a general VEC convention.

```xml
    <Specification xsi:type="vec:CompositionSpecification" id="CompositionSpecification_00289">
      <Identification>COMPONENTS</Identification>
      <Component id="PartOccurrence_00290">
        <Identification>GenericIdentifier-0</Identification>
        <Part>PartVersion_00375</Part>
        ...
      </Component>
      <Component id="PartOccurrence_00291">
        <Identification>GenericIdentifier-1</Identification>
        <Part>PartVersion_00375</Part>
        ...
      </Component>
      ...
    </Specification>
```

For each module, a {{<vec-class PartStructureSpecification >}} is created, referencing the occurrences that belong to the module, defined above.

```xml
    <Specification xsi:type="vec:PartStructureSpecification" id="PartStructureSpecification_00368">
      <Identification>PSS-MDL123456</Identification>
      <DescribedPart>PartVersion_00504</DescribedPart>
      <Content>Module</Content>
      <InBillOfMaterial>PartOccurrence_00291 PartOccurrence_00290 ...</InBillOfMaterial>
    </Specification>
```
To define the next layer, instances of the modules are required. Those are created within a separate  {{<vec-class CompositionSpecification >}} with the `Identification = 'MODULES'` (a recommendation for this mapping, see above). The module {{<vec-class PartOccurrence >}} references the module's {{<vec-class PartStructureSpecification >}}, whose `InBillOfMaterial` are the component {{<vec-class PartOccurrence >}}s defined above. No component occurrences are cloned for the module occurrence. This is, because modules are normally defined in-place (see {{<vec-diagram "composite-part-descriptions/instantiation-approaches">}}). As the composition of the module is already defined by its {{<vec-class PartStructureSpecification >}}, the {{<vec-class PartWithSubComponentsRole >}} of the module occurrence should not reference the component occurrences as `SubComponent` (see [Composite Parts]({{< relref "../composite-parts#details" >}})).

```xml
    <Specification xsi:type="vec:CompositionSpecification" id="CompositionSpecification_00286">
      <Identification>MODULES</Identification>
      <Component id="PartOccurrence_00287">
        <Identification>MDL123456</Identification>
        <Role xsi:type="vec:PartWithSubComponentsRole" id="PartWithSubComponentsRole_00288">
          <Identification>MDL123456</Identification>
          <PartStructureSpecification>PartStructureSpecification_00368</PartStructureSpecification>
        </Role>
        <Part>PartVersion_00504</Part>
      </Component>
    </Specification>
```
As a Module is now a regular {{<vec-class PartOccurrence >}} the generic concepts in the VEC for {{<vec-class PartOccurrence >}}s can now be applied (e.g. Variant Management, see below) and no module specific modelling concepts, like the KBL `Logistic_control_information` are required.

Based on the module {{<vec-class PartOccurrence >}}s, now a {{<vec-class PartStructureSpecification >}} for the harness can be defined.

```xml
    <Specification xsi:type="vec:PartStructureSpecification" id="PartStructureSpecification_00367">
      <Identification>PSS-LTG0011200</Identification>
      <DescribedPart>PartVersion_00500</DescribedPart>
      <Content>Harness</Content>
      <InBillOfMaterial>PartOccurrence_00287 ...</InBillOfMaterial>
    </Specification>
```

### Variant Management (Logistic Control Information)

{{< gh-review "1178" >}}

The KBL uses the {{<kbl-class Module_configuration >}} element and its `Logistic_control_information` attribute to define variant management information. In contrast, the VEC offers a more flexible approach, allowing variant management data to be associated with almost any element that is a subclass of {{<vec-class ConfigurableElement >}}. Additionally, the VEC introduces an indirection layer, enabling elements to be supplemented with variant management information either retrospectively or externally. It is also possible to assign different control information to an element depending on the context.

As a result, the single `Logistic_control_information` attribute in the KBL is mapped to a more comprehensive set of classes and attributes in the VEC, providing greater flexibility and specificity in variant management. Specifically, two specifications are required for this purpose, with one instance of each per harness description ({{<vec-class DocumentVersion>}} with `DocumentType=HarnessDescription`):

1. The {{<vec-class VariantConfigurationSpecification >}} defines the set of configuration terms used. For each distinct `Logistic_control_information` string, a corresponding {{<vec-class VariantConfiguration >}} should be created.
2. The {{<vec-class ConfigurationConstraintSpecification >}} assigns these terms to specific elements. For each {{<kbl-class Module >}} with a `Logistic_control_information`, a {{<vec-class ConfigurationConstraint >}} should be created to link the corresponding {{<vec-class PartOccurrence>}} to the appropriate {{<vec-class VariantConfiguration>}}.

The following XML snippet illustrates the required specifications and their relationships.

```xml
    <Specification xsi:type="vec:VariantConfigurationSpecification" id="VariantConfigurationSpecification_00403">
      <Identification>VCS-LTG0011200</Identification>
      <VariantConfiguration id="VariantConfiguration_00404">
        <Identification>VarConf_MDL123456</Identification>
        <LogisticControlExpression>L0L+ALL</LogisticControlExpression>
        <ConfigurationType>Logistic</ConfigurationType>
      </VariantConfiguration>
    </Specification>
    <Specification xsi:type="vec:ConfigurationConstraintSpecification" id="ConfigurationConstraintSpecification_00405">
      <Identification>CCS-LTG0011200</Identification>
      <ConfigurationConstraint id="ConfigurationConstraint_00406">
        <Identification>ConfConstraint_MDL123456</Identification>
        <ConfigInfo>VariantConfiguration_00404</ConfigInfo>
        <ConstrainedElements>PartOccurrence_00408</ConstrainedElements>
      </ConfigurationConstraint>
    </Specification>
    <Specification xsi:type="vec:CompositionSpecification" id="CompositionSpecification_00407">
      <Identification>MODULES</Identification>
      <Component id="PartOccurrence_00408">
        <Identification>MDL123456</Identification>
        <Role xsi:type="vec:PartWithSubComponentsRole" id="PartWithSubComponentsRole_00409">
          <Identification>MDL123456</Identification>
          <PartStructureSpecification>PartStructureSpecification_00589</PartStructureSpecification>
          <SubComponent>...</SubComponent>
        </Role>
        <Part>PartVersion_00725</Part>
      </Component>
    </Specification>
```

{{%callout note %}}
As mentioned before, the KBL {{<kbl-class Module >}} is split up in the VEC into its part definition aspects (i.e. {{<vec-class PartStructureSpecification >}}) and in its instance/usage aspects (i.e. {{<vec-class PartOccurrence >}}). The variant management is always attached to usage context of something. Therefore, the {{<vec-class configurationConstraint >}} is pointing to the {{<vec-class PartOccurrence>}}.
{{%/callout %}}


{{% callout warning %}}
TODO: How to handle Module_configurations that are defined directly under the Harness element.
{{% /callout %}}

### Connectivity

{{% callout warning %}}
Work in Progress
{{% /callout %}}

### Topology

{{% callout warning %}}
Work in Progress
{{% /callout %}}

### Geometry

{{% callout warning %}}
Work in Progress
{{% /callout %}}

### Placement

{{% callout warning %}}
Work in Progress
{{% /callout %}}

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