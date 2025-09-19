---
title: TerminalProtectionSpecification
toc: false
type: specs
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Class
classes:
  - TerminalProtectionSpecification
menu_name: vec-2.2.0
---
A <i>TerminalProtection</i> is an insulation or sealing that is applied after the joining process between the terminal and the wire, typically in the contact area of the WireReception. Examples include caps for splices or heat shrink tubing for ring terminals.

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
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|insideLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | The length on the inside of the terminal protection. For a splice cap, for example, this is the measurement how far wires can be inserted. | [TerminalProtectionSpecification]({{< relref "terminalprotectionspecification.md" >}}) |
|insideDiameter| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | The inside diameter of the terminal protection. | [TerminalProtectionSpecification]({{< relref "terminalprotectionspecification.md" >}}) |
|outsideLength| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | The length of the terminal protection on the outside. | [TerminalProtectionSpecification]({{< relref "terminalprotectionspecification.md" >}}) |
|outsideDiameter| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | The outside diameter of the terminal protection. | [TerminalProtectionSpecification]({{< relref "terminalprotectionspecification.md" >}}) |
|wallThickness| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | The wall thickness of the terminal protection. Usually, this should be <i>(outsideDiameter - insideDiameter) /&#160;2.</i> | [TerminalProtectionSpecification]({{< relref "terminalprotectionspecification.md" >}}) |
|shrinkable| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | Specifies if the terminal protection is heat shrinkable. | [TerminalProtectionSpecification]({{< relref "terminalprotectionspecification.md" >}}) |
|shrinkingFactor| [Double]({{< relref "double.md" >}}) | 0..1 | <p> Defines the factor of shrinking for the terminal protection.      </p> | [TerminalProtectionSpecification]({{< relref "terminalprotectionspecification.md" >}}) |
|maximumLongitudinalShrinkage| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Defines the shrinkage in longitudinal direction. </p> | [TerminalProtectionSpecification]({{< relref "terminalprotectionspecification.md" >}}) |
|adhesivePresent| [Boolean]({{< relref "boolean.md" >}}) | 0..1 | Defines if an adhesive /&#160;sealing is already present in the terminal protection. | [TerminalProtectionSpecification]({{< relref "terminalprotectionspecification.md" >}}) |
|adhesive| [Material]({{< relref "material.md" >}}) | 0..* | Defines the material used as adhesive /&#160;sealing, if present. | [TerminalProtectionSpecification]({{< relref "terminalprotectionspecification.md" >}}) |

## Outgoing Relations
<table>
    <thead>
        <tr>
           <th colspan="6">Other End</th>
           <th colspan="1">This End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>validConductorMaterial</td>
        <td><a href="{{< relref "conductormaterial.md" >}}">ConductorMaterial</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Specifies the materials of a conductor, which are valid to use with this <i>TerminalProtectionSpecification</i>. This material shall be matched against the <i>ConductorSpecification.material.</i>      </p></td>
    </tr>
    </tbody>
</table>

##  Incoming Relations
<table>
    <thead>
        <tr>
           <th colspan="5">This End</th>
           <th colspan="2">Other End</th>
           <th colspan="1">General</th>
        </tr>
        <tr>
           <th>Role</th>
           <th>Mult.</th>
           <th>Agg.{{< info agg >}}</th>
           <th>Unique{{< info unique >}}</th>
           <th>Ordered{{< info ordered >}}</th>
           <th>Type</th>
           <th>Mult.</th>
           <th>Description</th>
        </tr>
    <thead>
    <tbody>
    <tr>
        <td>terminalProtectionSpecification</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "terminalprotectionrole.md" >}}">TerminalProtectionRole</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    </tbody>
</table>



