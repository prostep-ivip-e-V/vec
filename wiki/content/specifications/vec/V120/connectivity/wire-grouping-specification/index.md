---
title: Wire Grouping Specification
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  vec120:
    identifier: connectivity/wire-grouping-specification    
    parent: connectivity
    weight: 1006007 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1006007
---
{{< svgfigure src="wire-grouping-specification.png" width="434" height="499" caption="Wire Grouping Specification" numbered="true" >}}
  {{< svglink relref="../classes/wirerole.md" x="238.0" y="441.0" width="169.0" height="43.0" >}}
  {{< svglink relref="../classes/wiregrouping.md" x="238.0" y="226.0" width="169.0" height="55.0" >}}
  {{< svglink relref="../classes/wiregroupingspecification.md" x="239.0" y="124.0" width="169.0" height="43.0" >}}
  {{< svglink relref="../classes/wireelementreference.md" x="231.0" y="336.0" width="188.0" height="67.0" >}}
  {{< svglink relref="../classes/wiregroupspecification.md" x="14.0" y="124.0" width="193.0" height="67.0" >}}
  {{< svglink relref="../classes/specification.md" x="14.0" y="14.0" width="393.0" height="67.0" >}}
{{< / svgfigure >}}
<html>   <head>     </head>   <body>     <p> A <i>WireGroupingSpecification</i> is used to describe a certain grouping requirements (e.g. twisted pair) in a certain context of usage (e.g. in the context of a 150% harness description). For this, a <i>WireGroupingSpecification</i> is a container for various <i>WireGroupings</i>. Each <i>WireGrouping</i> is intended to reference the relevant W<i>ireElements</i> that are grouped within an assembly / module / harness context as well as a <i>WireGroupSpecification</i> in order to specify details regarding the way of grouping.      </p>    </body> </html> 
