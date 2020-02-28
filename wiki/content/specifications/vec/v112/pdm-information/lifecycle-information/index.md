---
title: Lifecycle Information
toc: false
type: specs
layout: diagram
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Diagram
classes:
  - StatusOfApproval
  - TypeOfPermission
  - ContractRole
  - DocumentVersion
  - Contract
  - Person
  - Permission
  - CopyrightInformation
  - Creation
  - PartVersion
  - Project
  - ChangeDescription
  - Approval
  - SheetOrChapter
  - ItemVersion
menu:
  VEC-1.1.2:    
    parent: pdm-information
    identifier: pdm-information/lifecycle-information
    weight: 1002001 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1002001
---
{{< svgfigure src="lifecycle-information.png" width="1115" height="875" caption="Lifecycle Information" numbered="true" >}}
  {{< svglink relref="../../classes/statusofapproval.md" x="819.0" y="470.0" width="105.0" height="99.0" >}}
  {{< svglink relref="../../classes/typeofpermission.md" x="672.0" y="568.0" width="111.0" height="99.0" >}}
  {{< svglink relref="../../classes/contractrole.md" x="448.0" y="0.0" width="129.0" height="99.0" >}}
  {{< svglink relref="../../classes/documentversion.md" x="56.0" y="399.0" width="160.0" height="139.0" >}}
  {{< svglink relref="../../classes/contract.md" x="651.0" y="7.0" width="161.0" height="82.0" >}}
  {{< svglink relref="../../classes/person.md" x="882.0" y="631.0" width="162.0" height="127.0" >}}
  {{< svglink relref="../../classes/permission.md" x="630.0" y="463.0" width="178.0" height="79.0" >}}
  {{< svglink relref="../../classes/copyrightinformation.md" x="196.0" y="14.0" width="179.0" height="70.0" >}}
  {{< svglink relref="../../classes/creation.md" x="455.0" y="316.0" width="183.0" height="79.0" >}}
  {{< svglink relref="../../classes/partversion.md" x="14.0" y="574.0" width="196.0" height="115.0" >}}
  {{< svglink relref="../../classes/project.md" x="21.0" y="728.0" width="217.0" height="118.0" >}}
  {{< svglink relref="../../classes/changedescription.md" x="231.0" y="315.0" width="217.0" height="127.0" >}}
  {{< svglink relref="../../classes/approval.md" x="651.0" y="316.0" width="217.0" height="103.0" >}}
  {{< svglink relref="../../classes/sheetorchapter.md" x="301.0" y="504.0" width="217.0" height="103.0" >}}
  {{< svglink relref="../../classes/itemversion.md" x="14.0" y="147.0" width="1086.0" height="91.0" >}}
{{< / svgfigure >}}
<p> An <i>ItemVersion</i> can carry information about the creation of the item. This means the creating timestamp and an optionally information regarding the creator or responsible person.     </p>      <p> An <i>ItemVersion</i> normally has approval information and can be specified within the VEC by the relationship <i>ItemVersion.approval</i>. The class <i>Permission</i> allows the documentation of the persons involved in the approval-process.     </p>      <p> The class <i>ChangeDescription</i> expresses the changes of an <i>ItemVersion</i> compared to its direct <i>predecessorVersion(s).</i>     </p>      <p> The class <i>CopyrightInformation</i> enables the description of copyright information of <i>ItemVersions</i>. Instances of the class <i>CopyrightInformation</i> are assumed to be constant and so do not require a dedicated belonging to a versioned instance (<i>PartVersion</i> or <i>DocumentVersion</i>).     </p>      <p> An <i>ItemVersion</i> can have contract information with company role information. Instances of the class <i>Contract</i> are assumed to be constant and so do not require a dedicated belonging to a versioned instance (<i>PartVersion</i> or <i>DocumentVersion</i>).     </p>      <p> A <i>PartVersion</i> can reference a <i>Project</i> in order to describe for which <i>Project</i> it is relevant. Instances of the class <i>Project</i> are assumed to be constant and so do not need to have a dedicated belonging to a versioned instance (<i>PartVersion</i> or <i>DocumentVersion</i>).      </p>