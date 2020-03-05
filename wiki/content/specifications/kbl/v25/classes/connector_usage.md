---
title: Connector_usage
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - Connector_usage
menu_name: kbl-2.5
---
<p> Where applicable the following values shall be used:      </p>      <ul>       <li> 'no end': end of wire without any connector (&quot;blunt cut&quot;, &quot;open wire end&quot;). The&#160;KBL requires to have a Contact_point and a connector associated with an extremity, in order to create a mapping to the topology. However, &quot;no end&quot; shall not be used together with a terminal. If a terminal is associated, it would be a &quot;dangler&quot;        </li>       <li> 'ring terminal':        </li>       <li> 'splice':        </li>       <li> 'dangler': terminal without any connector housing.&#160;basically the same as &quot;no end&quot;, but with a associated terminal.        </li>     </ul>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 3_Part_structure |
| **Applied Stereotype**  | [ClosedEnumeration]({{< relref "closedenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| no end | <p> &#160;      </p> |
| ring terminal |  |
| splice |  |
| dangler |  |
