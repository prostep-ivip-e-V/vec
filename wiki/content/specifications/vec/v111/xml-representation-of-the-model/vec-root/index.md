---
title: VEC-Root
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
  - VecVersion
  - ConformanceClass
  - Unit
  - ItemHistoryEntry
  - DocumentVersion
  - Contract
  - CopyrightInformation
  - PartVersion
  - Project
  - VecContent
menu:
  VEC-1.1.1:    
    parent: xml-representation-of-the-model
    identifier: xml-representation-of-the-model/vec-root
    weight: 1009001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1009001
---
{{< svgfigure src="vec-root.png" width="936" height="561" caption="VEC-Root" numbered="true" >}}
  {{< svglink relref="../../classes/vecversion.md" x="28.0" y="477.0" width="112.0" height="70.0" >}}
  {{< svglink relref="../../classes/conformanceclass.md" x="741.0" y="372.0" width="126.0" height="79.0" >}}
  {{< svglink relref="../../classes/unit.md" x="574.0" y="372.0" width="139.0" height="70.0" >}}
  {{< svglink relref="../../classes/itemhistoryentry.md" x="369.0" y="371.0" width="142.0" height="70.0" >}}
  {{< svglink relref="../../classes/documentversion.md" x="24.0" y="174.0" width="160.0" height="139.0" >}}
  {{< svglink relref="../../classes/contract.md" x="756.0" y="176.0" width="161.0" height="82.0" >}}
  {{< svglink relref="../../classes/copyrightinformation.md" x="480.0" y="177.0" width="179.0" height="70.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="126.0" y="344.0" width="196.0" height="115.0" >}}
  {{< svglink relref="../../classes/project.md" x="258.0" y="176.0" width="217.0" height="118.0" >}}
  {{< svglink relref="../../classes/veccontent.md" x="21.0" y="15.0" width="876.0" height="106.0" >}}
{{< / svgfigure >}}
<p> The diagram above defines the class <i>VecContent</i> which is intended to be regarded as the top level root element for VEC documents. It is the declared entry point to the information that a VEC file contains. Furthermore it is intended to facilitate the mapping of the VEC model to a XSD schema definition.     </p>      <p> A <i>VecContent</i> is a container for various <i>DocumentVersions</i>, <i>PartVersions</i>, <i>Projects</i>, <i>ItemHistoryEntries</i>, <i>CopyrightInformations</i>, <i>Units</i>, <i>Contracts</i> and <i>ConformanceClasses</i>. <i>DocumentVersion</i> and <i>PartVersion</i> are the only two classes in the VEC model that define contain version information. Almost all information a VEC document can contain is subordinated to one of those two classes. This means in the end that every piece of information which is represented as an instance of a class of a certain attribute value is distinctly related to a dedicated <i>PartVersion</i> or <i>DocumentVersion</i>.     </p>      <p> The only exceptions are classes with the stereotype <i>&lt;&lt;constant&gt;&gt;</i> as shown in the diagram.      </p>