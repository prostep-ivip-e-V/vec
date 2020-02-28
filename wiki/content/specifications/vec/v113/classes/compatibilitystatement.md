---
title: CompatibilityStatement
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - CompatibilityStatement
menu_name: vec-1.1.3
---
<p> A CompatibilityStatement is used to express compatibility between parts. This can be either compatibility for contacting (terminals, wires, seals, a.s.o.) or for plugging (connector housings, slots, a.s.o.).     </p>      <p> A CompatibilityStatement can be used to explicitly express compatibility (hasCompatibility = true) or to express incompatibility / negation (hasCompatibility = false).     </p>      <p> The CompatibilityStatement is stated by referencing the corresponding specifications. In the concrete implementation this mechanisms allows three different variants to express compatibility.     </p>      <p> In the first variant the CompatibilityStatement references specifications that are not directly related to a concrete PartVersion (association in the super-class PartOrUsageRelatedSpecification). In this case the attributes of the specification represent a search pattern for searching compatible parts in a component library.     </p>      <p> In the second variant the CompatibilityStatement references the same specifications that are used to specify the component attributes of a PartVersion. This would be equivalent to an explicit mapping compatible PartVersions.     </p>      <p> In the third variant the CompatibilityStatement references specifications that do not have any attributes at all. These specifications are normally defined in the same document that defines the CompatibilitySpecification. Such a specification can group multiple PartVersion by referencing them. This is possible, because the VEC makes no restriction on the number of specifications that can be defined for single PartVersion.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | compatibility |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|hasCompatibility | [Boolean]({{< relref "boolean.md" >}}) | 1 | <p> If true the CompatibilityStatement states compatibility, otherwise incompatibility.       </p> | [CompatibilityStatement]({{< relref "compatibilitystatement.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ConnectorHousingSpecification]({{< relref "connectorhousingspecification.md" >}}) | connectorHousingSpecification | 0..* | 0..* | <p> References the ConnectorHousingSpecifications for which the compatibility statement is stated.      </p> |
| [WireSpecification]({{< relref "wirespecification.md" >}}) | wireSpecification | 0..* | 0..* | <p> References the WireSpecifications for which the compatibility statement is stated.      </p> |
| [CavitySealSpecification]({{< relref "cavitysealspecification.md" >}}) | cavitySealSpecification | 0..* | 0..* | <p> References the CavitySealSpecifications for which the compatibility statement is stated.      </p> |
| [TerminalSpecification]({{< relref "terminalspecification.md" >}}) | terminalSpecification | 0..* | 0..* | <p> References the TerminalSpecifications for which the compatibility statement is stated.      </p> |
| [AbstractSlot]({{< relref "abstractslot.md" >}}) | slot | 0..* | 0..* | <p> References explicit Slots for which the compatibility statement is stated.      </p> |
| [Cavity]({{< relref "cavity.md" >}}) | cavity | 0..* | 0..* | <p> References explicit cavities for which the compatibility statement is stated.      </p> |
| [CavityPlugSpecification]({{< relref "cavityplugspecification.md" >}}) | cavityPlugSpecification | 0..* | 0..* | <p> References the CavityPlugSpecifications for which the compatibility statement is stated.      </p> |
| [CavitySpecification]({{< relref "cavityspecification.md" >}}) | cavitySpecification | 0..* | 0..* | <p> References the CavitySpecifications for which the compatibility statement is stated.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [CompatibilitySpecification]({{< relref "compatibilityspecification.md" >}}) | 1 | compatibilityStatement | 0..* | <p> Specifies the CompatibilityStatements defined by this CompatibilitySpecification.      </p> |
