---
title: Internal Connectivity
toc: false
type: specs
layout: diagram
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - SwitchingState
  - ConnectionEnd
  - Connection
  - ComponentConnector
  - ComponentPort
  - PinComponent
  - HousingComponent
  - ComponentNode
  - EEComponentSpecification
  - ConnectionSpecification
menu:
  VEC-2.2.0:    
    parent: ee-components
    identifier: ee-components/internal-connectivity
    weight: 1006003 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1006003
---
{{< svgfigure src="internal-connectivity.png" width="1487" height="693" caption="Internal Connectivity" numbered="true" >}}
  {{< svglink relref="../../classes/switchingstate.md" x="113.0" y="624.0" width="126.0" height="55.0" >}}
  {{< svglink relref="../../classes/connectionend.md" x="1107.0" y="533.0" width="198.0" height="91.0" >}}
  {{< svglink relref="../../classes/connection.md" x="1107.0" y="379.0" width="217.0" height="79.0" >}}
  {{< svglink relref="../../classes/componentconnector.md" x="715.0" y="365.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/componentport.md" x="722.0" y="512.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/pincomponent.md" x="288.0" y="505.0" width="234.0" height="79.0" >}}
  {{< svglink relref="../../classes/housingcomponent.md" x="288.0" y="358.0" width="246.0" height="79.0" >}}
  {{< svglink relref="../../classes/componentnode.md" x="666.0" y="183.0" width="255.0" height="103.0" >}}
  {{< svglink relref="../../classes/eecomponentspecification.md" x="99.0" y="225.0" width="454.0" height="67.0" >}}
  {{< svglink relref="../../classes/connectionspecification.md" x="757.0" y="85.0" width="519.0" height="43.0" >}}
{{< / svgfigure >}}
<p> The model elements above enable the explicit modelling of the internal electrical connectivity of E/E-Components in the VEC. The <i>ConnectionSpecification,</i> a core concept in the VEC is used to represent the logical internal connectivity between <i>PinComponents</i> within an <i>EEComponentSpecification</i>.&#160;For more details of the <i>ConnectionSpecification</i> see &quot;Connectivity /&#160;Connection Specification&quot;.      </p>      <p> The <i>ConnectionSpecification</i> should be co-located with the <i>EEComponentSpecification</i> in the <i>DocumentVersion</i> that defines the E/E-component. It contains a single <i>ComponentNode</i> representing the E/E-component itself. The <i>HousingComponents </i>and <i>PinComponents </i>are represented by <i>ComponentConnectors </i>and <i>ComponentPorts</i> on this <i>ComponentNode. </i>The internal connectivity is represented by <i>Connections</i>. If the E/E-component contains integrated subcomponents, those are represented as <i>c</i><i>hildNodes</i> of the <i>ComponentNode </i>of the E/E-component.      </p>      <p> <b>&#160;</b>      </p>      <p> <b>Traceability Links</b>      </p>      <p> &#160;      </p>      <p> To ensure semantic consistency and enable model traceability, dedicated references are introduced between the following elements:      </p>      <ol>       <li> <i>EEComponentSpecification</i> → <i>ComponentNode</i>        </li>       <li> <i>HousingComponent</i> → <i>ComponentConnector</i>        </li>       <li> <i>PinComponent</i> → <i>ComponentPort</i>        </li>     </ol>     <p> These links allow navigation between the specification of a component and its internal connectivity representation.      </p>      <p> <b>&#160;</b>      </p>      <p> <b>Representation of Physical Properties</b>      </p>      <p> <b>&#160;</b>      </p>      <p> The <i>ConnectionSpecification</i> is the layer to describe logical connectivity, and it does not contain any physical properties (such as conducting properties of a <i>Connection</i>). However, it is possible to define physical properties with <i>PartOrUsageRelatedSpecifications</i> and <i>Roles</i> and link this information with the logical connectivity (see Wiring&#160;Specification).      </p>      <ol>       <li> If the physical entity is a component (e.g. a fuse) it is represented as a <i>ChildNode</i> of the <i>ComponentNode</i> representing the E/E-component.        </li>       <li> If it is a conductor of any kind, it is represented by a <i>Connection</i>.        </li>       <li> A <i>PartUsageSpecification</i> and a<i> PartStructureSpecification </i>is added to the definition of the E/E-component. If the subcomponents should be represented as actual <i>PartOccurrences, </i>instead of <i>PartUsages, </i>a <i>CompositionSpecification</i> is used instead of the <i>PartUsageSpecification.</i>        </li>       <li> For each element with physical properties a <i>PartUsage</i> (with corresponding <i>PartOrUsageRelatedSpecification</i> and <i>Role</i>) is created. This includes traceability links to the corresponding <i>ConnectionSpecification </i>elements (e.g. <i>WireElementReference -&gt; Connection, FuseRole -&gt; ComponentNode (</i>a <i>childNode)</i>).        </li>     </ol>     <p> This approach ensures a separation of concerns between logical connectivity and physical embodiment while maintaining full traceability.      </p>