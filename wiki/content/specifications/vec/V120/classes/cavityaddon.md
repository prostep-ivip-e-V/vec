---
title: CavityAddOn
toc: false
type: specs
date: "2020-02-01"
draft: false
specification: VEC
version: 1.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - CavityAddOn
menu_name: vec-1.2.0
---
<p> Specifies the wire addon needed to reach a <i>Cavity</i> from a specific <i>SegmentConnectionPoint</i>. For each <i>SegmentConnectionPoint</i> there shall be no more than one add-on value per cavity and type.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|wireAddOn | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 1 | <p> Specifies the wire length add on needed for the cavity.      </p> | [CavityAddOn]({{< relref "cavityaddon.md" >}}) |
|type | [WireAddOnType]({{< relref "wireaddontype.md" >}}) | 1 | <p> Defines the type of the add-on (see <i>CavityAddOn</i>).      </p> | [CavityAddOn]({{< relref "cavityaddon.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Cavity]({{< relref "cavity.md" >}}) | cavity | 1 | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [SegmentConnectionPoint]({{< relref "segmentconnectionpoint.md" >}}) | 1 | cavityAddOns | 0..* |  |
