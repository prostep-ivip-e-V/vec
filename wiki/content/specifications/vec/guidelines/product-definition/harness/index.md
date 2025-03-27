---
title: "Harness (KBL/VEC Mapping)"
#linktitle: Link in Sidemenu
type: specs
toc: true
authors: [ "becker"]
categories: []
date: 2025-02-13
lastmod: 2025-02-13T15:11:41+01:00
draft: false
review: true

classes:

history:
  - date: 2025-02-13
    description: "Started Implementation Guideline for Mapping a Harness in the VEC"


menu:
  vec-guidelines:
    parent: product-definition
    weight: 500

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 500
---
{{< review >}}

> **Editorial Note:** Since the creation of this implementation guideline will span an extended period, the current work-in-progress versions will be published continuously to allow the community to review and provide feedback.

This implementation guideline outlines the core concepts needed to create a dataset for a single wiring harness in the VEC, which is the use case that lies in the center of the scope of the KBL.

To ease adoption for those already familiar with the KBL, this guideline is structured as a mapping from the KBL model to the VEC model. Additionally, a reference implementation of a KBL-to-VEC converter is available on [GitHub](https://github.com/4Soft-de/harness-model/tree/develop/kbl2vec/).

{{% callout note %}} **Disclaimer:** This implementation guideline (along with the converter implementation) covers only the scope of the KBL. The VEC is a far more expressive model.

As a result, there are scenarios where the VEC could convey information with much clearer semantics. However, the necessary data for this level of precision is often not available in the KBL (e.g., detailed component data) or is embedded through custom properties and process/tool-specific dialects. "Healing" such data would require in-depth knowledge of the specific KBL dialect used and, in many cases, the integration of additional information sources. This task lies outside the scope of this guideline. In situations where it is obvious that fixing of such deficiencies is advised, a **Data Quality** note is added.

The goal of this guideline is to demonstrate how standard KBL concepts map to VEC concepts—without improving the quality of the underlying information. While the VEC could indeed express many aspects more precisely, this guideline focuses on maintaining consistency with the original KBL data quality.{{% /callout %}}

There are fundamentally two approaches to describing such a mapping. One can either start from the source model, explaining how its information is distributed into the target model, or take the opposite approach by defining which information is needed in the target model and where to find it in the source model. For this implementation guideline, the latter approach was chosen as the strategy.

On the one hand, the guideline's focus is on how to describe a harness in the VEC, which naturally suggests describing the mapping from this perspective. On the other hand, the VEC is the more precise model, meaning that many KBL concepts are distributed across different elements within the VEC. For example, a KBL {{< kbl-class Node >}} contains information relevant to the VEC concepts of a {{< vec-class TopologyNode >}} , {{< vec-class GeometryNode2D >}} and {{< vec-class GeometryNode3D >}}. It is more logical to describe the mapping of topology and 2D/3D geometry as cohesive units rather than addressing all three concepts in a mixed manner starting from the KBL Node.

The implementation guideline focuses on the structural mapping and does not cover the mapping of individual attributes. If you are interested in those details, please refer to the reference implementation.

The guideline follows a logical order rather than an order dictated by model dependencies. Since the VEC is a graph—not a strict tree—it allows cross-references between branches. As a result, you may encounter cases where a model element references another model element whose mapping is described later in this guideline.

The reference implementation addresses this challenge by using a two-phase approach.

## The Beginning

Everything starts with the model root element {{< vec-class veccontent >}}, see the figure below (all attributes omitted).

{{< figure src="veccontent.png" title="VecContent" numbered="true" lightbox="true">}}

The following sub elements of the VEC are required for a harness description and are covered by some information in the KBL (the sections containing the detail inforamtion are linked):

- [PartVersions]({{< relref "#partversions" >}})
- [DocumentVersions]({{< relref "#documentversions" >}})
- [Units]({{< relref "#units" >}})

## PartVersions

The concept of parts is quite different in KBL and VEC. In the VEC a {{<vec-class PartVersion>}} is just a PDM-Header for the part. The various aspects of a part (e.g. is it a wire or connector) are handled by different types of {{<vec-class PartOrUsageRelatedSpecification >}}s contained in the {{<vec-class DocumentVersion >}} describing the part. In the KBL, the different types of parts are expressed as subclasses of {{<kbl-class Part>}}. The concept in the VEC that most closely reflects the approach of the KBL is the {{<vec-class PrimaryPartType >}}. 

{{% callout note %}}
**Data Quality**: The mapping between KBL {{<kbl-class Part>}} subtypes and the {{<vec-class PrimaryPartType>}} is merely a preliminary "best guess" approach. In many cases, the "standard" KBL provides only a very general classification, whereas the VEC allows for more specific distinctions. For example, the KBL only recognizes {{<kbl-class Wire_protection>}}, while the VEC differentiates between {{<vec-class TubeSpecification>}}, {{<vec-class TapeSpecification>}}, and others.
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

When creating {{<vec-class PartVersion >}} in the VEC, basically a {{<vec-class PartVersion >}} Object is required for each KBL {{<kbl-class Part>}}. Those can be found under `/KBL_container/(Accessory|AssemblyPart|CavityPlug|...)`, `/KBL_container/Harness/Module` and `/KBL_container/Harness/Harness_configuration`.

{{% callout note %}}
**Data Quality**: The KBL allows to have the same `Part_number` under different classifications. E.g. a tape can be used as {{<kbl-class Wire_protection>}} or as {{<kbl-class Accessory>}} to some other part (see {{<kbl-class Part>}} for more details). 

Due to other modeling approaches in the VEC, there is no longer any need for this. Multiple occurrences of the same part version in the VEC are considered a semantic error. Deduplication should be carried out in post-processing.
{{% /callout %}}

## DocumentVersions

In the VEC, all payload data is contained within {{<vec-class DocumentVersion>}}s. Typically, you would structure these according to the actual documents used in the process. Unfortunately, this concept in its detail form is not present in the KBL. Therefore, for the generic conversion described here, practical assumptions need to be made:

1. It is common practice to describe components in individual datasets/documents and publish them separately. This means one document per connector, wire, etc. (see [Partitioning and Sizing]({{<relref "../../general/partitioning-sizing-packaging/#partitioning-and-sizing">}})).
1. It is also common for a wiring harness to be fully described in a 150% dataset, containing all information about the used component occurrences, modules, and so on.

This means that a {{<vec-class DocumentVersion>}}s with `DocumentType=PartMaster` must be created for each component used in the wiring harness. These are all instances of {{<kbl-class Part>}} in the KBL except the Instance of {{<kbl-class Part_With_Title_Block>}}.

For the {{<kbl-class Harness>}} itself, a {{<vec-class DocumentVersion>}} with `DocumentType=HarnessDescription` is created. This document contains all relevant information about the harness as well as the {{<vec-class specification>}}s for the {{<kbl-class Module>}}s and {{<kbl-class Harness_configuration>}}s.


### PartMaster Document

A `PartMaster` document contains all {{< vec-class PartOrUsageRelatedSpecification >}}s that are required to describe the component. For a general description of this concept see [Component Description]({{<relref "../component-description">}}). The following specifications have to be created. The Mapping of those is described in the section [Specifications]({{<relref "#specifications">}}): 

* {{<vec-class GeneralTechnicalPartSpecification>}} (for all {{<kbl-class Part>}}).
* {{<vec-class ConnectorHousingSpecification>}} (onliy for KBL {{<kbl-class Connector_Housing>}})


### HarnessDescription Document

A `HarnessDescription` document contains alls {{< vec-class Specification >}} that are required to describe a Harness.

* {{<vec-class TopologySpecification >}}
* {{<vec-class CompositionSpecification >}} (Occurrences)
* {{<vec-class CompositionSpecification >}} (Modules)

{{% callout warning %}}
Explain the speciality of two composition specifications
{{% /callout %}}

## Specifications

### GeneralTechnicalPartSpecification

### ConnectorHousingSpecification

### TopologySpecification

### CompositionSpecification

Modules describe dual character of modules (occurrence & part). 

#### PartOcurrences
Identification is mandatory... not all KBL Occurrences have mandatory indentification.

## Core Elements

### Custom Properties / Installation Information

KBL Installation Information not always used as custom property.

### String / LocalizedStrings

{{% callout note %}}
TODO: Locale must be guessed.
{{% /callout %}}

### NumericalValue

### Units

To define numerical values, both the VEC and the KBL require units. If the attributes `Si_unit_name`, `Si_prefix`, and `Si_dimension` have been used to define a KBL {{< kbl-class Unit>}}, it can be mapped straight forward to a {{<vec-class SIUnit>}} in the VEC.

{{% callout note %}}
**Data Quality**: The KBL supports only a very limited set of SI units (see {{< kbl-class Si_unit_name >}}) and, in particular, does not support composite units (e.g., g/m). Such units are typically defined using the freely selectable `Unit_name`. When translating this into the VEC, those units can only be mapped to a VEC {{< vec-class "CustomUnit" >}}.
{{% /callout  %}}