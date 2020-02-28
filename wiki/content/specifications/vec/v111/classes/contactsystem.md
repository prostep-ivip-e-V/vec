---
title: ContactSystem
toc: false
type: specs
date: "2014-07-01"
draft: false
specification: VEC
version: 1.1.1
documentType: "Recommendation"
elementType: Class
classes:
  - ContactSystem
menu_name: vec-1.1.1
---
A contact system is a standard reference setup of two terminals and defined length of a core contacted to both terminals.
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | contact_system |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|contactResistance | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | Specifies the resistance of the contact system. | [ContactSystem]({{< relref "contactsystem.md" >}}) |
|joiningForce | [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the joining force of the two terminals.      </p> | [ContactSystem]({{< relref "contactsystem.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [ConductorSpecification]({{< relref "conductorspecification.md" >}}) | referencedCoreSpecification | 1 | 0..* | <p> References the CoreSpecification that is used on both sides of the ContactSystem.      </p> |
| [PartVersion]({{< relref "partversion.md" >}}) | secondTerminal | 1 | 0..* | <p> References the second terminal of the ContactSystem.      </p> |
| [PartVersion]({{< relref "partversion.md" >}}) | firstTerminal | 1 | 0..* | <p> References the first terminal of the ContactSystem.      </p> |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [ContactSystemSpecification]({{< relref "contactsystemspecification.md" >}}) | 1 | contactSystem | 0..* | <p> Specifies the ContactSystems described by the ContactSystemSpecification.      </p> |
