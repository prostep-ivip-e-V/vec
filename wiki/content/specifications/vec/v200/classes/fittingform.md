---
title: FittingForm
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - FittingForm
menu_name: vec-2.0.0
---
<p> OpenEnumeration to define different fitting forms.      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | non_electrical_parts |
| **Applied Stereotype**  | [OpenEnumeration]({{< relref "openenumeration.md" >}})<br/>  |

## Enumeration Literals
| Name          | **Description** |
|---------------|-----------------|
| Tee |  |
| Cross |  |
| Straight | <p> Straight 1:1 coupling e.g. used for the coupling of different pipe sections.      </p> |
| Cap | <p> Cap for the closure of tubes and pipes.      </p> |
| EndPiece | <p> For covering pipe ends when no screw fitting is used. Allows cables to be inserted level to avoid damage.      </p> |
| Plug | <p> Plug for the closure of tubes and pipes.      </p> |
| Reducer | <p> Straight 1:1 coupling used for changes of the nominal size.      </p> |
| Elbow | <p> Angled 1:1 coupling.      </p> |
| Wye | <p> Symetric division (2 ways).      </p> |
| Lateral | <p> A &quot;wye&quot;&#160;with one straight and one lateral outlet.      </p> |
| M | <p> A&#160;&quot;wye&quot; with more than 2 outlets (one inlet).      </p> |
| A | <p> A pipe /&#160;tube connector (1:1) with an additional outlet for wires (without a pipe /&#160;tube).      </p> |
