---
title: ConductorSpecification
toc: false
type: specs
date: "2023-03-24"
draft: false
specification: VEC
version: 2.0.2
documentType: "Recommendation"
elementType: Class
classes:
  - ConductorSpecification
menu_name: vec-2.0.2
---
<p> Specification for the definition of conducting properties of a WireElement.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Specification]({{< relref "specification.md" >}})<br/>  |
| **Is Abstract**         | true |
| **Derived Classifiers** | [CoreSpecification]({{< relref "corespecification.md" >}}), [FlatCoreSpecification]({{< relref "flatcorespecification.md" >}}), [ShieldSpecification]({{< relref "shieldspecification.md" >}}) |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p> Specifies a unique identification of the specification. The identification is guaranteed to be unique within the document containing the specification. For all VEC-documents a Specification-instance can be trusted to be identical if the DocumentVersion-instance is the same (see DocumentVersion) and the identification of the Specification is the same.      </p> | [Specification]({{< relref "specification.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the specification.      </p> | [Specification]({{< relref "specification.md" >}}) |
|crossSectionArea| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the cross-section area of the conductor (e.g. 0,5 mm²). The cross-section area is a nominal value, which refers to the conducting properties of the conductor normalized to the properties of a full material core.      </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|massInformation| [MassInformation]({{< relref "massinformation.md" >}}) | 0..1 | <p>Specifies the mass information of the conductor. In most cases this mass information is known as copper weight and is normally specified as mass per length (e.g. gram per meter).  </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|material| [Material]({{< relref "material.md" >}}) | 0..* | <p>Specifies the material of the conductor. </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|resistance| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the electrical resistance of the conductor. In most cases this is specified as resistance per length (e.g. Ohm per meter).  </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|structure| [ConductorStructure]({{< relref "conductorstructure.md" >}}) | 0..1 | <p> Specifies the structure of the conductor according to ISO 6722-1 for ConductorSpecifications with Type = Stranded.      </p>      <p> <i>Should only be used for ConductorSpecifications with type=Stranded.</i>      </p>      <p> &#160;      </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|type| [ConductorType]({{< relref "conductortype.md" >}}) | 0..1 | <p> Specifies the type of the conductor, e.g. if it is rigid or stranded.      </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|numberOfStrands| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the number of strands in one conductor. If the conductor is solid than the number of strands would be one.  </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|platingMaterial| [Material]({{< relref "material.md" >}}) | 0..* | <p>Specifies the plating material of the conductor.  </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|strandDiameter| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p>Specifies the diameter of a single strand in the conductor.  </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |
|voltageRange| [NumericalValue]({{< relref "numericalvalue.md" >}}) | 0..1 | <p> Specifies the voltageRange for which the conductor is approved.      </p> | [ConductorSpecification]({{< relref "conductorspecification.md" >}}) |

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
        <td>currentInformation</td>
        <td><a href="{{< relref "conductorcurrentinformation.md" >}}">ConductorCurrentInformation</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Specifies the current information of the conductor. These are the maximum currents for which the conductor is approved.       </p></td>
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
        <td>conductorSpecification</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "wireelementspecification.md" >}}">WireElementSpecification</a></td>
        <td>0..*</td>
        <td><p> If the <i>WireElement</i> has a core then the specification of the core is referenced here.      </p></td>
    </tr>
    <tr>
        <td>conductorSpecification</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "internalcomponentconnection.md" >}}">InternalComponentConnection</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>recommendedConductorSpecification</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "signal.md" >}}">Signal</a></td>
        <td></td>
        <td><p> Defines a recommended Specification for the cores that implement this signal.      </p></td>
    </tr>
    <tr>
        <td>referencedCoreSpecification</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "terminalpairing.md" >}}">TerminalPairing</a></td>
        <td>0..*</td>
        <td><p> References the CoreSpecification that is used on both sides of the ContactSystem.      </p></td>
    </tr>
    </tbody>
</table>



