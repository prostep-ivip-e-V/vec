---
title: VEC-Root
toc: false
type: specs
layout: diagram
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Diagram
classes:
  - VecVersion
  - Unit
  - ItemHistoryEntry
  - Contract
  - CopyrightInformation
  - PartVersion
  - DocumentVersion
  - Project
  - VecContent
menu:
  VEC-1.2.2:    
    parent: xml-representation-of-the-model
    identifier: xml-representation-of-the-model/vec-root
    weight: 1012001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1012001
---
{{< svgfigure src="vec-root.png" width="943" height="632" caption="VEC-Root" numbered="true" >}}
  {{< svglink relref="../../classes/vecversion.md" x="14.0" y="512.0" width="112.0" height="106.0" >}}
  {{< svglink relref="../../classes/unit.md" x="595.0" y="386.0" width="139.0" height="70.0" >}}
  {{< svglink relref="../../classes/itemhistoryentry.md" x="369.0" y="385.0" width="142.0" height="70.0" >}}
  {{< svglink relref="../../classes/contract.md" x="756.0" y="190.0" width="161.0" height="82.0" >}}
  {{< svglink relref="../../classes/copyrightinformation.md" x="483.0" y="190.0" width="189.0" height="70.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="126.0" y="358.0" width="196.0" height="127.0" >}}
  {{< svglink relref="../../classes/documentversion.md" x="24.0" y="188.0" width="204.0" height="151.0" >}}
  {{< svglink relref="../../classes/project.md" x="258.0" y="190.0" width="217.0" height="118.0" >}}
  {{< svglink relref="../../classes/veccontent.md" x="14.0" y="15.0" width="876.0" height="106.0" >}}
{{< / svgfigure >}}
<p> The diagram above defines the class <i>VecContent</i> which is intended to be regarded as the top-level root element for VEC documents. It is the declared entry point to the information that a VEC file contains.      </p>      <p> A <i>VecContent</i> is a container for various <i>DocumentVersions</i>, <i>PartVersions</i>, <i>Projects</i>, <i>ItemHistoryEntries</i>, <i>CopyrightInformations</i>, <i>Units</i>, and <i>Contracts. </i><i>DocumentVersion</i> and <i>PartVersion</i> are the only two classes in the VEC model that define and contain version information. Almost all information a VEC document can contain is subordinated to one of those two classes. This means, that every piece of information which is represented as an instance of a class of a certain attribute value is distinctly related to a dedicated <i>PartVersion</i> or <i>DocumentVersion</i>.      </p>      <p> The only exceptions are classes with the stereotype <i>&lt;&lt;constant&gt;&gt;</i> as shown in the diagram.      </p>