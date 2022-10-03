---
title: Assignment Group
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
  - ExtendableElement
  - ConfigurableElement
  - DocumentRelationType
  - FunctionalRequirementType
  - AssignmentGroupSpecification
  - FunctionalRequirement
  - DocumentVersion
  - DocumentRelatedAssignmentGroup
  - Specification
  - AssignmentGroup
  - SheetOrChapter
  - FunctionalStructureNode
  - FunctionalAssignmentGroup
  - FunctionalStructureSpecification
menu:
  VEC-2.0.1:    
    parent: key-concepts
    identifier: key-concepts/assignment-group
    weight: 1001002 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1001002
---
{{< svgfigure src="assignment-group.png" width="1140" height="858" caption="Assignment Group" numbered="true" >}}
  {{< svglink relref="../../classes/extendableelement.md" x="386.0" y="15.0" width="116.0" height="34.0" >}}
  {{< svglink relref="../../classes/configurableelement.md" x="169.0" y="379.0" width="129.0" height="34.0" >}}
  {{< svglink relref="../../classes/documentrelationtype.md" x="260.0" y="575.0" width="147.0" height="82.0" >}}
  {{< svglink relref="../../classes/functionalrequirementtype.md" x="631.0" y="694.0" width="163.0" height="106.0" >}}
  {{< svglink relref="../../classes/assignmentgroupspecification.md" x="533.0" y="232.0" width="180.0" height="34.0" >}}
  {{< svglink relref="../../classes/functionalrequirement.md" x="631.0" y="575.0" width="201.0" height="79.0" >}}
  {{< svglink relref="../../classes/documentversion.md" x="29.0" y="484.0" width="204.0" height="151.0" >}}
  {{< svglink relref="../../classes/documentrelatedassignmentgroup.md" x="372.0" y="491.0" width="207.0" height="67.0" >}}
  {{< svglink relref="../../classes/specification.md" x="519.0" y="106.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/assignmentgroup.md" x="477.0" y="365.0" width="217.0" height="67.0" >}}
  {{< svglink relref="../../classes/sheetorchapter.md" x="15.0" y="729.0" width="217.0" height="115.0" >}}
  {{< svglink relref="../../classes/functionalstructurenode.md" x="827.0" y="351.0" width="217.0" height="91.0" >}}
  {{< svglink relref="../../classes/functionalassignmentgroup.md" x="631.0" y="491.0" width="270.0" height="55.0" >}}
  {{< svglink relref="../../classes/functionalstructurespecification.md" x="813.0" y="225.0" width="288.0" height="34.0" >}}
{{< / svgfigure >}}
<p> An <i>AssignmentGroup</i> is a concept that allows the clustering of arbitrary elements in ways that are orthogonal to hierarchical and semantic structure of the VEC. Specific use cases are represented as subclasses of the <i>AssignmentGroup</i> and enriched with additional information. Proprietary groupings can be created with the AssignmentGroup itself and additional information in custom properties.      </p>      <p> The<i> FunctionalAssignmentGroup</i> can be used to assign elements to a function across the different layers of abstraction.      </p>      <p> The DocumentRelatedAssignmentGroup can used to relate elements to a specific document or an element within the document (e.g. a requirement).      </p>      <p> The assignment to a group originates from the <i>ConfigurableElement</i> itself. This is designed intentionally and has two reasons:      </p>      <ol>       <li> In the use cases for this grouping concept it is intended, that the groups exist first (e.g. a function) and the assignment is created together with elements along the process. For example, a connection in a system schematic is assigned to a function. When a wire is derived from the connection, the wire inherits this assignment. Therefore, it wouldn't be practicable to be enforced to modify the <i>DocumentVersion</i> containing the <i>AssignmentGroup</i> for every added element.        </li>       <li> In today's processes the assignment of elements to such groups are done in the same documents where the elements themselves are defined.        </li>     </ol>     <p> This concept adds another layer of extensibility to the&#160;VEC. <i>CustomProperties</i> allow the addition of user-defined properties to a single object. The assignment groups allow the creation of custom grouping of objects. However, it is not permitted to use this concept to express relationships that have well defined concepts in the VEC&#160;(e.g. assignment of occurrences to composite parts or usage nodes).      </p>