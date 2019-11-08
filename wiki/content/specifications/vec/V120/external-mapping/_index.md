---
title: External Mapping
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  vec120:
    identifier: external-mapping    
    weight: 1008 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1008
---
<html>   <head>     </head>   <body>     <p> The external mapping in the VEC defines a mechanism to provide a coupling between the content data of the VEC&#160;and external data sources (e.g. SVG images, JT models, requirements, ...). The only requirement on the external data source for this mapping approach is, that the contained data is in some way structured and that the elements are identifiable with an unique key.     </p>      <p> The reasons for embedding the mapping information in the VEC&#160;are:     </p>      <ul>       <li> The mapping can be easily read and recreated together with VEC and references to VEC elements can be followed in a simple way since the mapping can reference the elements directly within a single file (IDREF).       </li>       <li> No additional format definition is necessary.       </li>     </ul>     <p> &#160;      </p>    </body> </html> 
