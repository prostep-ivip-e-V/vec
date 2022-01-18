---
title: ConnectorHousingCapRole
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - ConnectorHousingCapRole
menu_name: vec-1.2.2
---
<p> A&#160;<i>ConnectorHousingCapRole</i> defines the instance-specific properties of a cap for a connector (backshells).      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | instancing_electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Role]({{< relref "role.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the Role. The identification is guaranteed to be unique within the OccurrenceOrUsage.      </p> | [Role]({{< relref "role.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ConnectorHousingCapSpecification]({{< relref "connectorhousingcapspecification.md" >}}) | connectorHousingCapSpecification | 1 | 0..* | <p> References the <i>ConnectorHousingCapSpecification </i>that is instanced by this <i>ConnectorHousingCapRole.</i>      </p> |
