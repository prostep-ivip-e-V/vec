---
title: Traceability of Components
toc: false
type: specs
layout: diagram
date: "2020-06-25"
draft: false
specification: KBL
version: 2.5.sr1
documentType: "Recommendation"
elementType: Diagram
classes:
  - Contact_point
  - Mounting_element
  - Component_slot_occurrence
  - Component_cavity_occurrence
  - Component_pin_map
  - Component_occurrence
menu:
  KBL-2.5.sr1:    
    parent: presentation
    identifier: presentation/traceability-of-components
    weight: 1018 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1018
---
{{< svgfigure src="traceability-of-components.png" width="948" height="909" caption="Traceability of Components" numbered="true" >}}
  {{< svglink relref="../../classes/contact_point.md" x="98.0" y="155.0" width="110.0" height="55.0" >}}
  {{< svglink relref="../../classes/mounting_element.md" x="392.0" y="141.0" width="120.0" height="58.0" >}}
  {{< svglink relref="../../classes/component_slot_occurrence.md" x="553.0" y="15.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../../classes/component_cavity_occurrence.md" x="231.0" y="15.0" width="179.0" height="43.0" >}}
  {{< svglink relref="../../classes/component_pin_map.md" x="63.0" y="281.0" width="179.0" height="67.0" >}}
  {{< svglink relref="../../classes/component_occurrence.md" x="336.0" y="274.0" width="232.0" height="91.0" >}}
{{< / svgfigure >}}
<p> For some use cases (e.g. virtual validation) it is essential to know for a component box, which components (e.g. fuse) are used together with which wire. In a 100% harness variant, this information can be derived completely from the information available for a component box, the component box connections, the mounted components and the connected harness connectors.      </p>      <p> However, in a 150%&#160;harness variant, this is not possible. Such an example is illustrated in the diagram. A <i>Component_slot</i> has two variant dependent mounted fuses (Var&#160;Y &amp;&#160;Var&#160;Z). The <i>Component_slot</i> is internally connected with two cavities of a <i>Component_box_connector</i>. The connector on the component box has a coupled harness connector with two cavities and three variant dependent wires (Var&#160;A, Var B, Var&#160;C). To derive which fuse applies to a wire, the variant conditions (associated modules) of all participants would have to be evaluated. In a scenario where the fuses and the wire were controlled by the same modules, this would be feasible. In a scenario where the fuses and the wires were controlled by different modules (e.g. the fuse by a &quot;base&quot; module and the wires by different &quot;feature&quot;&#160;modules for the same base) this results in wrong conclusions. To derive the information correctly, the logistic control information (e.g. boolean logic) would have to be evaluated. For a &quot;simple&quot; wire /&#160;fuse validation tool, this would be far beyond the scope and in some cases not even manageable with the available information.      </p>      <p> However, in the process the variants conditions for the components are derived from a specific selection (e.g. a fuse for a specific wire) and then, later, optimized. In order to allow e.g. validation use cases, the KBL&#160;shall preserve this specific selection information.      </p>      <p> To fulfill this feature, the KBL 2.5 introduces an association between <i>Component_pin_map </i>(the representation of a specific pin) and the <i>Contact_point</i>. The semantics is defined as &quot;the pin of this specific component is applicable for all wires attached to the referenced <i>Contact_point</i>(s).      </p>