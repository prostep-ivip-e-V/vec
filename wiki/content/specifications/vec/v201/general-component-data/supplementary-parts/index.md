---
title: Supplementary Parts
toc: false
type: specs
layout: diagram
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Diagram
classes:
  - PartRelationType
  - ModularSlot
  - AbstractSlot
  - PartOrUsageRelatedSpecification
  - PlacementPoint
  - ExtensionSlot
  - EEComponentSpecification
  - PlaceableElementSpecification
  - ConnectorHousingSpecification
  - GeneralTechnicalPartSpecification
  - Slot
  - PartVersion
  - PartRelation
menu:
  VEC-2.0.1:    
    parent: general-component-data
    identifier: general-component-data/supplementary-parts
    weight: 1004003 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1004003
---
{{< svgfigure src="supplementary-parts.png" width="1478" height="716" caption="Supplementary Parts" numbered="true" >}}
  {{< svglink relref="../../classes/partrelationtype.md" x="92.0" y="351.0" width="114.0" height="106.0" >}}
  {{< svglink relref="../../classes/modularslot.md" x="876.0" y="351.0" width="126.0" height="55.0" >}}
  {{< svglink relref="../../classes/abstractslot.md" x="694.0" y="260.0" width="132.0" height="55.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="652.0" y="15.0" width="188.0" height="55.0" >}}
  {{< svglink relref="../../classes/placementpoint.md" x="1261.0" y="351.0" width="192.0" height="67.0" >}}
  {{< svglink relref="../../classes/extensionslot.md" x="1016.0" y="351.0" width="209.0" height="55.0" >}}
  {{< svglink relref="../../classes/eecomponentspecification.md" x="932.0" y="113.0" width="236.0" height="55.0" >}}
  {{< svglink relref="../../classes/placeableelementspecification.md" x="1212.0" y="113.0" width="252.0" height="55.0" >}}
  {{< svglink relref="../../classes/connectorhousingspecification.md" x="624.0" y="113.0" width="254.0" height="103.0" >}}
  {{< svglink relref="../../classes/generaltechnicalpartspecification.md" x="302.0" y="106.0" width="274.0" height="127.0" >}}
  {{< svglink relref="../../classes/slot.md" x="582.0" y="351.0" width="277.0" height="79.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="15.0" y="15.0" width="214.0" height="323.0" >}}
  {{< svglink relref="../../classes/partrelation.md" x="344.0" y="274.0" width="205.0" height="428.0" >}}
{{< / svgfigure >}}
<p> With the <i>PartRelations </i>other <i>PartVersions (those)</i> can be defined as supplementary parts for the <i>PartVersions</i> that are described by the containing <i>GeneralTechnicalPartSpecification (this)</i>.      </p>      <p> The semantic is, that if <i>this PartVersion </i>shall be used in a correct way in a product, those referenced <i>PartVersions </i>can or shall be added to the product as well (depending on the used <i>PartRelationType</i>). That can be for example caps, bars or levers in case of a connector.      </p>      <p> The <i>PartRelation.relationType</i> defines how the set of referenced <i>PartVersions </i>of one <i>PartRelation</i> must be interpreted. For details see the description of class <i>PartRelation.</i>      </p>      <p> The association via the <i>PartRelation</i> just defines what other components may be used together with this component. It does not further specify the location of the usage or its function. However, in some cases a more detailed specification of the location is needed, e.g. if the supplementary part is required for a specific slot in a connector housing. In such a case, the <i>PartRelation</i> is specified by the <i>GeneralTechnicalPartSpecification</i> and may be referenced by its specific usage location (currently from a <i>Slot, ModularSlot, </i><i>ExtensionSlot</i> or a <i>PlacementPoint</i>).      </p>      <p> &#160;      </p>      <p> <i>&#160;</i>      </p>      <p> &#160;      </p>