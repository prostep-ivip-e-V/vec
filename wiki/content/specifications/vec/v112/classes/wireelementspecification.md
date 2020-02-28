---
title: WireElementSpecification
toc: false
type: specs
date: "2015-10-16"
draft: false
specification: VEC
version: 1.1.2
documentType: "Recommendation"
elementType: Class
classes:
  - WireElementSpecification
menu_name: vec-1.1.2
---
<p> A WireElementSpecification is the basic element to describe a wire in the VEC. A WireElementSpecification can be atomic or composed recursively out of other WireElementSpecifications. A WireElementSpecification can reference an InsulationSpecification, if it has an insulation, a CoreSpecification, if it has a core or a WireGroupSpecification if it is a grouping of other WireElementSpecifications in the Wire (e.g. a multi-core wire with twisted pairs).      </p>
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
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. Over all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|type | [WireType]({{< relref "wiretype.md" >}}) | 0..* | <p> Defines the type of the wire. A wire must not have more than one type. This attribute allows more than one value for the reason, that the same type can be expressed in multiple reference systems.      </p> | [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) |
|minBendRadiusDynamic | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the minimum bend radius for wire element, if it is used in a dynamic environment, where it is bended repeatedly (e.g in grommet of the back door).  (see KLBFRM-311) </p> | [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) |
|minBendRadiusStatic | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the minimum bend radius for wire element, if it is used in a static environment, where it is bended once during installation. After that it remains unchanged in its bended position during usage.  (see KLBFRM-311) </p> | [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) |
|outsideDiameter | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the outside diameter of the WireElement.  </p> | [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) |
|suitedForDynamicUse | [Boolean]({{< relref "boolean.md" >}}) | 0..1 | <p>Specifies if it is allowed to use the WireElement in a dynamic environment.  (see KBLFRM-311)  </p> | [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) |
|impedance | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Defines the impedance of this wireElement. Typically used for WireElements that have subWireElements e.g. twisted pair or coax wires. </p> | [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) |
|size | [Size]({{< relref "size.md" >}}) | 0..1 | <p> Defines the size of a WireElement if it has not the shape of circle. If it has the shape of a circle the size is normally defined by its outside diameter.      </p> | [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) | subWireElementSpecification | 0..* | 0..* | Specifies the contained subWireElements if the WireElement has sub elements. |
| [WireGroupSpecification]({{< relref "wiregroupspecification.md" >}}) | wireGroupSpecification | 0..1 | 0..* | <p> If the <i>WireElement</i> is a member of a wire group then the specification of the wire group is referenced here.      </p> |
| [FillerSpecification]({{< relref "fillerspecification.md" >}}) | fillerSpecification | 0..1 | 0..* | <p> If the <i>WireElement</i> is a filler then the specification of the filler is referenced here.      </p> |
| [ConductorSpecification]({{< relref "conductorspecification.md" >}}) | conductorSpecification | 0..1 | 0..* | <p> If the <i>WireElement</i> has a core then the specification of the core is referenced here.      </p> |
| [InsulationSpecification]({{< relref "insulationspecification.md" >}}) | insulationSpecification | 0..1 | 0..* | <p> If the <i>WireElement</i> has an insulation then the specification of the insulation is referenced here.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [WireElementSpecification]({{< relref "wireelementspecification.md" >}}) | 0..* | subWireElementSpecification | 0..* | Specifies the contained subWireElements if the WireElement has sub elements. |
| [WireElement]({{< relref "wireelement.md" >}}) | 0..* | wireElementSpecification | 1 | <p> Reference the <i>WireElementSpecification </i>that is represented by the <i>WireElement.</i>      </p> |
| [WireSpecification]({{< relref "wirespecification.md" >}}) | 0..* | wireElementSpecification | 1 | <p> References the <i>WireElementSpecification </i>that defines the properties of the top-most <i>WireElement.</i>      </p> |
