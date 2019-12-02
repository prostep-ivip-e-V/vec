---
title: Terminal Pairing
toc: false
type: specs
date: "2019-05-05T00:00:00+01:00"
draft: false
menu:
  vec120:
    identifier: description-of-components/terminal-pairing    
    parent: description-of-components
    weight: 1003018 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1003018
---
{{< svgfigure src="terminal-pairing.png" width="664" height="489" caption="Terminal Pairing" numbered="true" >}}
  {{< svglink relref="../classes/terminalpairingspecification.md" x="42.0" y="131.0" width="165.0" height="43.0" >}}
  {{< svglink relref="../classes/partversion.md" x="51.0" y="348.0" width="196.0" height="127.0" >}}
  {{< svglink relref="../classes/conductorspecification.md" x="437.0" y="152.0" width="213.0" height="163.0" >}}
  {{< svglink relref="../classes/terminalpairing.md" x="47.0" y="225.0" width="215.0" height="79.0" >}}
  {{< svglink relref="../classes/specification.md" x="43.0" y="15.0" width="217.0" height="67.0" >}}
{{< / svgfigure >}}
<html>   <head>     </head>   <body>     <p> A <i>ContactSystemSpecification</i> is a container for various <i>ContactSystems</i>. Each <i>ContactSystem</i> references exactly two <i>PartVersions</i> representing the interconnected terminals. Furthermore, each <i>ContactSystem</i> references a <i>ConductorSpecification</i> for which the <i>ContactSystem</i> is defined.      </p>    </body> </html> 
