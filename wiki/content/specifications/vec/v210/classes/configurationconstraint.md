---
title: ConfigurationConstraint
toc: false
type: specs
date: "2024-01-08"
draft: false
specification: VEC
version: 2.1.0
documentType: "Recommendation"
elementType: Class
classes:
  - ConfigurationConstraint
menu_name: vec-2.1.0
---
<p> Represents a <i>ConfigurationContraint </i>(&quot;When does this element exist?&quot;) for a specific application (<i>ApplicationConstraint)</i> and a &quot;configuration universe&quot;&#160;(<i>VariantConfiguration.configurationType</i>)      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | core |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|identification| [String]({{< relref "string.md" >}}) | 0..1 | <p> Specifies a unique identification of the <i>ConfigurationConstraint</i>. The identification is guaranteed to be unique within the <i>ConfigurableElement</i> and does not change over the time.      </p> | [ConfigurationConstraint]({{< relref "configurationconstraint.md" >}}) |

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
        <td>applicationConstraint</td>
        <td><a href="{{< relref "applicationconstraint.md" >}}">ApplicationConstraint</a></td>
        <td>0..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td><p> References the application constraint that applies to the ConfigurationConstraint.      </p></td>
    </tr>
    <tr>
        <td>configInfo</td>
        <td><a href="{{< relref "variantconfiguration.md" >}}">VariantConfiguration</a></td>
        <td>0..1</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td></td>
        <td><p> References the configuration information that applies to the ConfigurationConstraint.      </p></td>
    </tr>
    <tr>
        <td>constrainedElements</td>
        <td><a href="{{< relref "configurableelement.md" >}}">ConfigurableElement</a></td>
        <td>1..*</td>
        <td>N</td>
        <td>Y</td>
        <td>N</td>
        <td>0..*</td>
        <td><p> Introduced with VEC V2.0.2. References the <i>ConfigurableElement</i>s that are constrained by this <i>ConfigurationConstraint.</i> This association shall only be used in combination with a containment in a <i>ConfigurationConstraintSpecification.</i> When using the deprecated containment in the <i>ConfigurableElement </i>it shall not be used.      </p></td>
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
        <td>configurationConstraint</td>
        <td>0..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "configurableelement.md" >}}">ConfigurableElement</a></td>
        <td>0..1</td>
        <td>{{< deprecated since="2.0.2" reason="The relationship has been inverted, allowing external configuration of ConfigurableElements. The ConfigurationConstraint is now contained in its own Specification.">}}<p> Contains or more <i>ConfigurationContraints</i> that apply to this <i>ConfigurableElement.</i> This is explained in more details in the recommendation chapter / model diagram &quot;Variants&quot;.      </p></td>
    </tr>
    <tr>
        <td>configurationConstraint</td>
        <td>1..*</td>
        <td>Y</td>
        <td>Y</td>
        <td>N</td>
        <td><a href="{{< relref "configurationconstraintspecification.md" >}}">ConfigurationConstraintSpecification</a></td>
        <td>0..1</td>
        <td><p> Specifies the individual <i>ConfigurationConstraint</i> defined in the <i>ConfigurationConstraintSpecification</i>.      </p></td>
    </tr>
    </tbody>
</table>



