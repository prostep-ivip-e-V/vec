---
title: PinComponent
toc: false
type: specs
date: "2023-10-12"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - PinComponent
menu_name: vec-2.1.0
---
<p> A PinComponent describes a pin of an EEComponent. A PinComponent is part of a HousingComponent and is defined by three aspects.      </p>      <ol>       <li> Its geometric position in the <i>HousingComponent</i>, which is defined by the <i>referencedCavity.</i>        </li>       <li> Its physical electrical properties, which are defined by the referenced <i>TerminalSpecification.</i>        </li>       <li> Its electrical behaviour, which is defined configuration dependent by its <i>PinComponentBehaviour.</i>        </li>     </ol>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | electrical_parts |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ConfigurableElement]({{< relref "configurableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 1 | <p>Identification of the PinComponent, which must be distinct for all PinComponent of a HousingComponents.  </p> | [PinComponent]({{< relref "pincomponent.md" >}}) |
|description| [AbstractLocalizedString]({{< relref "abstractlocalizedstring.md" >}}) | 0..* | <p> Specifies additional, human readable information about the <i>PinComponent</i>.      </p> | [PinComponent]({{< relref "pincomponent.md" >}}) |
|pinComponentType| [PinComponentType]({{< relref "pincomponenttype.md" >}}) | 0..1 | <p> Specifies the type of a <i>PinComponent</i>.      </p> | [PinComponent]({{< relref "pincomponent.md" >}}) |

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
        <td>pinSpecification</td>
        <td><a href="{{< relref "terminalspecification.md" >}}">TerminalSpecification</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>References the TerminalSpecification describing the electrical connectivity aspect of the PinComponent.  (see KBLFRM-300)</td>
    </tr>
    <tr>
        <td>behaviour</td>
        <td><a href="{{< relref "pincomponentbehavior.md" >}}">PinComponentBehavior</a></td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td>1</td>
        <td><p> Specifies the configuration dependent electrical behavior of the<i> PinComponent.</i>      </p></td>
    </tr>
    <tr>
        <td>referencedCavity</td>
        <td><a href="{{< relref "cavity.md" >}}">Cavity</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td>Defines the cavity in the corresponding ConnectorHousingSpecification of the HousingComponent where the PinComponent is located.  (see KBLFRM-300)</td>
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
        <td>anode</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "diodespecification.md" >}}">DiodeSpecification</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>cathode</td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "diodespecification.md" >}}">DiodeSpecification</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>connectedPins</td>
        <td>0..2</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "fusecomponent.md" >}}">FuseComponent</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    <tr>
        <td>pinComponent</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "housingcomponent.md" >}}">HousingComponent</a></td>
        <td>1</td>
        <td>Specifies the PinComponents of HousingComponent.   (see KBLFRM-300)</td>
    </tr>
    <tr>
        <td>pinComponent</td>
        <td>1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "pincomponentreference.md" >}}">PinComponentReference</a></td>
        <td>0..*</td>
        <td><p> Points to the PinComponent referenced by the PinComponentReference.      </p></td>
    </tr>
    <tr>
        <td>pins</td>
        <td>2..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "internalcomponentconnection.md" >}}">InternalComponentConnection</a></td>
        <td>0..*</td>
        <td></td>
    </tr>
    </tbody>
</table>



