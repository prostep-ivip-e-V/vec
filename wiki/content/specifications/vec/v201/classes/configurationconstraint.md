---
title: ConfigurationConstraint
toc: false
type: specs
date: "2022-10-03"
draft: false
specification: VEC
version: 2.0.1
documentType: "Recommendation"
elementType: Class
classes:
  - ConfigurationConstraint
menu_name: vec-2.0.1
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
        <td>1</td>
        <td><p> Contains or more <i>ConfigurationContraints</i> that apply to this <i>ConfigurableElement.</i> This is explained in more details in the recommendation chapter / model diagram &quot;Variants&quot;.      </p></td>
    </tr>
    </tbody>
</table>



