---
title: PlaceableElementSpecification
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - PlaceableElementSpecification
menu_name: vec-2.0.1
---
<p> Specification for the general aspects of a component that are enabling the component to be placed in a topology. All components that should have the ability to be placed on a certain position in the topology must have a PlaceableElementSpecification      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | placeable_element |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification | [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description | [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|specialPartType | [String]({{< relref "string.md" >}}) | 0..1 | <p>The specialPartType allows the specification of subclassifications for a PartOrUsageRelatedSpecification (e.g. different types of connector housings).  </p> | [PartOrUsageRelatedSpecification]({{< relref "partorusagerelatedspecification.md" >}}) |
|validPlacementTypes | [PlacementType]({{< relref "placementtype.md" >}}) | 1..2 | <p> Defines the <i>PlacementTypes</i> that are valid for this element.      </p> | [PlaceableElementSpecification]({{< relref "placeableelementspecification.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [PlacementPoint]({{< relref "placementpoint.md" >}}) | placementPoint | 0..* | 1 | <p> Specifies the <i>PlacementPoints</i> of a <i>PlaceableElementSpecification</i>.      </p> |
| [MeasurementPoint]({{< relref "measurementpoint.md" >}}) | measurementPoint | 0..* | 1 | <p> Specifies the <i>MeasurementPoints</i> of a <i>PlaceableElement</i>.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [PlaceableElementRole]({{< relref "placeableelementrole.md" >}}) | 0..* | placeableElementSpecification | 1 | <p> References the <i>PlaceableElementSpecification</i> that is instanced by this <i>PlaceableElementRole.</i>      </p> |
