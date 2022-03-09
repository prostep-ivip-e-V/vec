---
title: Mapping of the VEC Model to XML schema definition (XSD)
toc: false
type: specs
layout:  package
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType:  Package
menu:
  VEC-2.0.0:    
    parent: xml-representation-of-the-model
    identifier: xml-representation-of-the-model/mapping-of-the-vec-model-to-xml-schema-definition-xsd
    weight: 1012002 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1012002
---
<p> The mapping of the VEC model to an XML schema definition (XSD) described in the following defines a standardized syntax for the exchange of harness design data across process steps and supporting tools.      </p>      <p> The dedicated namespace prefix of the schema definition is &ldquo;vec&rdquo;, the namespace is &quot;http://www.prostep.org/ecad-if/2011/vec&quot;.      </p>      <p> Each VEC model class that does not contain the stereotype <i>&lt;&lt;enumeration&gt;&gt;</i> is mapped to an XSD complex type with the same name as the VEC model class name. If the VEC model class is a derived subclass the corresponding XSD complex type uses the XSD extension base construct. Not inherited VEC model class attributes are mapped to a sequence of XSD elements with the same names as the names of the corresponding VEC model class attributes. The cardinality and data type definitions are defined equivalent to the VEC model. The base data types are:      </p>      <ul>       <li> <i>xs:string</i> (corresponding to the VEC model data type definition <i>String</i>)        </li>       <li> <i>xs:dateTime</i> (corresponding to the VEC model data type definition <i>Date</i>)        </li>       <li> <i>xs:integer</i> (corresponding to the VEC model data type definition <i>Integer</i>)        </li>       <li> <i>xs:double</i> (corresponding to the VEC model data type definition <i>Double</i>)        </li>       <li> <i>xs:boolean</i> (corresponding to the VEC model data type definition <i>Boolean</i>)        </li>     </ul>     <p> Compositions in the VEC model are handled in the same way as if the aggregated class would have been modelled as a class attribute of the owning class. The name definition corresponds to the target role name.      </p>      <p> As all associations in the VEC model are directed they are mapped to an attribute which is owned by the XSD complex type that relates to the VEC model class that is source of the association. The name is equal to the name of the association target role name. The type is xs:IDREF respectively xs:IDREFS depending on the association target cardinality.      </p>      <p> As associations are mapped to xs:IDREF respectively xs:IDREFS, each XSD complex type that is not a refinement of another XSD complex type (by usage of the XSD extension base construct) defines an additional required attribute with the name &ldquo;id&rdquo; and the type xs:ID. This attribute is introduced as reference point for links. The values for the &ldquo;id&rdquo;-attributes are normally not defined by a user. Exporters are expected to generate valid values for the &ldquo;id&rdquo;-attributes so that in the end      </p>      <ul>       <li> Links (as instances of associations) are expressed correctly        </li>       <li> The resulting XML file is XSD compliant.        </li>     </ul>     <p> Note: The values for the &ldquo;id&rdquo;-attributes have temporary character. By this recommendation exporters are not required to remember values they have once used during an export. Exporters are explicitly allowed to assign different values for the &ldquo;id&rdquo;-attributes during every export process.      </p>      <p> The XSD defines a VecContent element as xs:element. This is the declared root element for VEC compliant XML-documents. A VEC compliant XML-document is limited to one instance of a VecContent.      </p>