---
title: CableLeadThroughReference
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - CableLeadThroughReference
menu_name: vec-1.2.0
---
<p> A <i>CableLeadThroughReference</i> is the instance of a CableLeadThrough. It can define a set of plugs or seals that are used together with it. Plugs are used if no wire is present, seals are used together with a wire.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_non_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the CableLeadThroughReference. The identification is guaranteed to be unique within the GrommetRole.      </p> | [CableLeadThroughReference]({{< relref "cableleadthroughreference.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CavitySealRole]({{< relref "cavitysealrole.md" >}}) | usedSeals | 0..* | 0..* |  |
| [CavityPlugRole]({{< relref "cavityplugrole.md" >}}) | usedPlugs | 0..* | 0..* | <p> References the plugs that are used with this CableLeadThroughReference. This association might be a 150% selection.      </p> |
| [CableLeadThrough]({{< relref "cableleadthrough.md" >}}) |  | 0..1 |  |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [GrommetRole]({{< relref "grommetrole.md" >}}) | 1 | cableLeadThroughReference | 0..* |  |
