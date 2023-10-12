---
title: Description of Parts
toc: false
type: specs
layout: diagram
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - PartOrUsageRelatedSpecification
  - Specification
  - SheetOrChapter
  - DocumentVersion
  - PartVersion
  - PrimaryPartType
menu:
  VEC-2.1.0:    
    parent: general-component-data
    identifier: general-component-data/description-of-parts
    weight: 1004001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1004001
---
{{< svgfigure src="description-of-parts.png" width="1016" height="638" caption="Description of Parts" numbered="true" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="483.0" y="385.0" width="188.0" height="55.0" >}}
  {{< svglink relref="../../classes/specification.md" x="469.0" y="273.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/sheetorchapter.md" x="784.0" y="147.0" width="217.0" height="115.0" >}}
  {{< svglink relref="../../classes/documentversion.md" x="483.0" y="55.0" width="271.0" height="175.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="182.0" y="55.0" width="212.0" height="372.0" >}}
  {{< svglink relref="../../classes/primaryparttype.md" x="14.0" y="49.0" width="142.0" height="574.0" >}}
{{< / svgfigure >}}
<p> In traditional data formats the diverse types of parts (e.g. connector housing, terminal, wire) are differentiated with individual subclasses for each type inheriting from the type corresponding to <i>PartVersion</i>. These subclasses define all specific information of the component type (e.g. the cavities of a connector). Due to the great diversity of components used in wiring harnesses a different approach is implemented in the VEC.      </p>      <p> The general technical /&#160;physical properties of a component are described by <i>PartOrUsageRelatedSpecifications </i>(and its subclasses). For each aspect of a component an independent subclass of <i>PartOrUsageRelatedSpecification</i> is defined (e.g. a <i>ConnectorHousingSpecification</i>, a <i>TerminalSpecification</i>). This approach allows to describe a <i>PartVersion</i> by more than one <i>PartOrUsageRelatedSpecifications </i>(Association <i>PartOrUsageRelatedSpecification.describedPart</i>)<i>.</i> It offers the possibility to extract information, which is shared between component types, into separate specifications so that the structural definition can be reused without having to modify the inheritance tree (e.g. <i>GeneralTechnicalPartSpecification</i>). Furthermore, some components cannot be mapped onto such a strict type hierarchy (e.g. a connector housing used as an inliner might have a fixing bolt for vehicle body in order to keep it in place). Representing this by an inheritance tree would result in a huge variety of different classes. With the concept of <i>PartOrUsageRelatedSpecifications </i>a component like the mentioned connector housing can be easily described by using a <i>ConnectorHousingSpecification</i> for the connector housing aspects and a <i>FixingSpecification </i>for the fixing aspects. However, most parts have a primary characteristic. For example, the mentioned connector housing will most probably only be used if a connector is necessary. This primary characteristic is defined by the <i>PartVersion.primaryPartType</i>. The <i>PrimaryPartType</i> always refers by a naming convention to a corresponding <i>PartOrUsageRelatedSpecification</i>. If the <i>PrimaryPartType</i> is ABC, the corresponding <i>Specification</i> is named <i>ABCSpecification</i> (e.g. <i>ConnectorHousing </i>and <i>ConnectorHousingSpecification</i>). The <i>PrimaryPartType </i>serves the purpose of defining the primary characteristic of a part. It is <u>not</u> required to describe every <i>PartVersion</i> in a specific VEC&#160;file with a corresponding <i>PartOrUsageRelatedSpecification,</i> if the information is not required in the context of the VEC file. For example, in the context of geometry data exchange it might be perfectly valid to have <i>PartVersions</i> with <i>PrimaryPartType=ConnectorHousing</i> that are only associated with a <i>PlaceableElementSpecification</i> (and/or a <i>GeneralTechnicalPartSpecification</i>) while the <i>ConnectorHousingSpecification </i>is not provided.      </p>      <p> In some cases, there might be a need to specify attributes of a part that is not related to any of the existing subtypes of <i>PartOrUsageRelatedSpecification.</i> (e.g. it might be relevant to describe a screw nut used as an accessory for a connector housing). In this case the class <i>PartOrUsageRelatedSpecification</i> is instanced and the relevant attributes are added as <i>CustomProperties</i>.      </p>      <p> Since the <i>PartOrUsageRelatedSpecification</i> is a subclass of <i>Specification, </i>which is a sub element of a dedicated <i>DocumentVersion, </i>all information defined by it can be related to a precise development state.      </p>      <p> The relationship <i>PartOrUsageRelatedSpecification.describedPart</i> might be seen as redundant to the relationship <i>DocumentVersion.referencedPart</i> but considers the fact that there are use cases, where only information on the level of <i>PartVersion</i>s and <i>DocumentVersions </i>is exchanged, but not on the very detailed level of <i>PartOrUsageRelatedSpecification</i>s. In addition, it is possible, that several <i>PartVersions</i> are described by a single <i>DocumentVersion</i> containing a couple of specifications, each of them describing a single <i>PartVersion </i>(e.g. a drawing with a major part and its accessory parts).      </p>