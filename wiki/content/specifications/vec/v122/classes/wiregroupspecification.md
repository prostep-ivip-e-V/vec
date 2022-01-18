---
title: WireGroupSpecification
toc: false
type: specs
date: "2022-01-18"
draft: false
specification: VEC
version: 1.2.2
documentType: "Recommendation"
elementType: Class
classes:
  - WireGroupSpecification
menu_name: vec-1.2.2
---
<p> Specification for the definition of WireGroups. Wire groups are for example used for the representation of twisted pairs.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|groupType | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies the type of the group (e.g. twisted pair, ...).      </p> | [WireGroupSpecification]({{< relref "wiregroupspecification.md" >}}) |
|lengthOfTwist | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the length of twist if the wire group is representing a twisted pair.  </p> | [WireGroupSpecification]({{< relref "wiregroupspecification.md" >}}) |

##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireGrouping]({{< relref "wiregrouping.md" >}}) | 0..* | wireGroupSpecification | 0..1 | <p> References the <i>WireGroupSpecification</i> that applies to the <i>WireGrouping</i>.      </p> |
| [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) | 0..* | wireGroupSpecification | 0..1 | <p> If the <i>WireElementSpecification</i> is representing a wire group, then the specification of the wire group is referenced here. That means as well, that the <i>WireElementSpecification</i> shall have <i>subWireElementSpecifications</i>.      </p> |
