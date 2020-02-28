---
title: Description of Parts
toc: false
type: specs
layout: diagram
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Diagram
classes:
  - DocumentVersion
  - PartOrUsageRelatedSpecification
  - Specification
  - PartVersion
  - PrimaryPartType
menu:
  VEC-1.1.1:    
    parent: description-of-components
    identifier: description-of-components/description-of-parts
    weight: 1003002 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1003002
---
{{< svgfigure src="description-of-parts.png" width="798" height="442" caption="Description of Parts" numbered="true" >}}
  {{< svglink relref="../../classes/documentversion.md" x="525.0" y="27.0" width="160.0" height="139.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="532.0" y="336.0" width="188.0" height="55.0" >}}
  {{< svglink relref="../../classes/specification.md" x="511.0" y="217.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="182.0" y="27.0" width="197.0" height="372.0" >}}
  {{< svglink relref="../../classes/primaryparttype.md" x="7.0" y="14.0" width="112.0" height="406.0" >}}
{{< / svgfigure >}}
<p> In other formats like the KBL- or the KOMP-model the diverse types of parts (e.g. connector housing, terminal, wire) are differentiated by inheritance with a subclass for each type inheriting from the type corresponding to <i>PartVersion</i>. These subclasses define all specific information of the particular component type (e.g. the cavities of a connector). Due to the great diversity of components used in wiring harnesses a different approach is implemented in the VEC.     </p>      <p> The general technical /&#160;physical properties of a component are described by <i>PartOrUsageRelatedSpecifications </i>(and its subclasses). For each aspect of a component an independent subclass of <i>PartOrUsageRelatedSpecification</i> is defined (e.g. a <i>ConnectorHousingSpecification</i>, a <i>TerminalSpecification</i>). The reason for this approach is, that thereby a <i>PartVersion</i> can be described by more than one <i>PartOrUsageRelatedSpecifications </i>(Association <i>PartOrUsageRelatedSpecification.describedPart</i>)<i>.</i> This offers the possibility to extract information, which is common to more than one component type, into separate specifications so that the structure can be reused without having to modify the inheritance tree (e.g. <i>GeneralTechnicalPartSpecification</i>). Furthermore in reality some components cannot be mapped onto such a strict type hierarchy (e.g. a connector housing used as an inliner might have a fixing bolt for vehicle body in order to keep it in place). Representing this by an inheritance tree would result in a huge variety of different classes. With the concept of <i>PartOrUsageRelatedSpecifications </i>a component like the mentioned connector housing can be easily described by using a <i>ConnectorHousingSpecification</i> for the connector housing aspects and a <i>FixingSpecification </i>for the fixing aspects. However most parts have a primary characteristic. For example the mentioned connector housing will most probably only be used if a connector is necessary. This primary characteristic is defined by the <i>PartVersion.primaryPartType</i>. The <i>PrimaryPartType</i> always refers by a naming convention to a corresponding <i>PartOrUsageRelatedSpecification</i>. If the <i>PrimaryPartType</i> is ABC, the corresponding <i>Specification</i> is named <i>ABCSpecification</i> (e.g. <i>ConnectorHousing </i>and <i>ConnectorHousingSpecification</i>).     </p>      <p> In some cases it might occur that it is required to specify attributes of a part that is not related to any of the existing subtypes of <i>PartOrUsageRelatedSpecification.</i> For example it might be relevant to describe a screw nut used as an accessory for a connector housing. In this case the class <i>PartOrUsageRelatedSpecification</i> is instanced and the relevant attributes are added with <i>CustomProperties</i>.     </p>      <p> Since the <i>PartOrUsageRelatedSpecification</i> is a subclass of <i>Specification, </i>which is an sub element of a dedicated <i>DocumentVersion </i>all information defined with it can be related to a precise development state.     </p>      <p> The relationship <i>PartOrUsageRelatedSpecification.describedPart</i> might be seen as redundant to the relationship <i>DocumentVersion.referencedPart</i> but considers the fact that there are use cases, where only information on the level of <i>PartVersion</i>s and <i>DocumentVersions </i>is exchanged and not on the very detailed level of <i>PartOrUsageRelatedSpecification</i>s. In addition it is possible, that several <i>PartVersions</i> are described by a single <i>DocumentVersion</i> containing a couple of specifications, each of them describing a single <i>PartVersion </i>(e.g. a drawing with a major part and its accessory parts).      </p>