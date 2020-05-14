---
title: LevelOfApproval
toc: false
type: specs
date: "2020-05-11"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - LevelOfApproval
menu_name: vec-1.2.0
---
<p> The&#160;LevelOfApproval standardizes the approval levels most engineering processes have in common. See <i>Approval.levelOfApproval </i>for more details.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | pdm |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Planned | <p> The <i>ItemVersion</i> has been created.      </p> |
| Develop | <p> An approval during the development process. There might process specific different approvals out of this category. See Approval.additionalLevelInformation for more information about the details.      </p> |
| Free | <p> The ItemVersion can be used without restriction.      </p> |
| Restricted | <p> The Usage of the ItemVersion is restricted in some way. See additionalLevelInformation for more details.      </p> |
| Invalid | <p> The <i>ItemVersion</i> shall not be used anymore.      </p> |
