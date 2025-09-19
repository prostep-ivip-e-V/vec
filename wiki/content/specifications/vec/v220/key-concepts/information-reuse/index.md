---
title: Information Reuse
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
  - ReusageSpecification
  - Reusage
  - ExtendableElement
  - Specification
menu:
  VEC-2.2.0:    
    parent: key-concepts
    identifier: key-concepts/information-reuse
    weight: 1001008 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1001008
---
{{< svgfigure src="information-reuse.png" width="484" height="373" caption="Information Reuse" numbered="true" >}}
  {{< svglink relref="../../classes/reusagespecification.md" x="288.0" y="141.0" width="147.0" height="34.0" >}}
  {{< svglink relref="../../classes/reusage.md" x="281.0" y="232.0" width="147.0" height="127.0" >}}
  {{< svglink relref="../../classes/extendableelement.md" x="15.0" y="232.0" width="148.0" height="127.0" >}}
  {{< svglink relref="../../classes/specification.md" x="253.0" y="15.0" width="217.0" height="67.0" >}}
{{< / svgfigure >}}
<p> In engineering processes - particularly in harness development - the reuse or derivation of new information from existing data is a common practice. Specific examples include libraries, building blocks, or modular systems, where certain information, such as a partial system description, is predefined and then adapted to fit the context of a specific vehicle. In the following sections, the source of the information will be referred to as the <em>template</em>, while the location where it is reused or the derived information itself will be referred to as the <em>usage</em>.      </p>      <p> Information reuse differs from a classic instantiation model that typically involves distinct classes for type and instance, such as <em>PartVersion</em> and <em>PartOccurrence</em>. In an instantiation model, the structure clearly specifies which attributes are defined by the type and which by the instance. For example, the cross-section area of a wire might be defined by the &quot;wire type,&quot; while the length is defined by the &quot;wire instance.&quot;      </p>      <p> In a reuse scenario, however, the same model elements (VEC classes) are employed both in the template and in describing the usage. For instance, a system schematic building block is described using <em>Connections</em> and <em>ComponentNodes</em>, and its usage is also described using <em>Connections</em> and <em>ComponentNodes</em>. Essentially, information reuse involves copying the original data, which can then be supplemented with additional information, redefined, or even overridden. The extent to which the usage is allowed to deviate from the template is specific to each case and depends on business rules that apply to the scenario. Typically, the usage is fully self-contained and can function independently.      </p>      <p> The traceability provided by the <em>ReusageSpecification</em> and <em>Reusage-Elements</em> allows the enforcement of business rules between template and usage. Scenarios that exemplify this traceability include:      </p>      <ul>       <li> <strong>Downstream Change Propagation</strong>: When the template is updated, changes could be propagated to the derived elements.        </li>       <li> <strong>Limitation of Deviation</strong>: Information defined in the template might be restricted or flexible for modification in the usage or only changeable in specific ways. For instance, a template could define standard aspects of a component (such as a standard cavity or conductor). Some template attributes might be mandatory in the usage, while others could be redefined.        </li>     </ul>     <p> An individual <em>ReusageSpecification</em> shall be defined when reusing a specific block of information within a particular context. For example, reusing a partial schematic within a vehicle-specific schematic represents one <em>ReusageSpecification</em>. Adding a second partial schematic to the vehicle constitutes a second <em>ReusageSpecification</em>. Reusing the same partial system schematic in another vehicle-specific schematic would require a third <em>ReusageSpecification</em>.      </p>      <p> Within a <em>ReusageSpecification</em>, a <em>Reusage-Element</em> is created for every <em>ExtendableElement</em> from the template that is utilized in the usage.&#160;      </p>