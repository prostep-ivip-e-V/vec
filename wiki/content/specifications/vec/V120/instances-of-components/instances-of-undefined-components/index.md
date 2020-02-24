---
title: Instances of undefined Components
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  vec120:
    identifier: instances-of-components/instances-of-undefined-components    
    parent: instances-of-components
    weight: 1004009 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1004009
---
{{< svgfigure src="instances-of-undefined-components.png" width="556" height="210" caption="Instances of undefined Components" numbered="true" >}}
  {{< svglink relref="../../classes/role.md" x="386.0" y="21.0" width="138.0" height="55.0" >}}
  {{< svglink relref="../../classes/specificrole.md" x="393.0" y="140.0" width="149.0" height="55.0" >}}
  {{< svglink relref="../../classes/partorusagerelatedspecification.md" x="64.0" y="140.0" width="202.0" height="55.0" >}}
{{< / svgfigure >}}
<html>   <head>     </head>   <body> In some cases it is necessary to specify and to use a component which is not defined in detail by the VEC. The recommended approach in such a case is to use a <i>PartOrUsageRelatedSpecification</i> with <i>CustomProperties</i> to specify such a component. When this component must be instanced, a <i>SpecificRole</i> has to be used.    </body> </html> 
