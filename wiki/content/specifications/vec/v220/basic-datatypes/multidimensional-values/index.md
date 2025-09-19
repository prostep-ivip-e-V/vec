---
title: Multidimensional Values
toc: false
type: specs
layout: diagram
date: "2025-09-19"
draft: false
specification: VEC
version: 2.2.0
documentType: "Recommendation"
elementType: Diagram
classes:
  - Unit
  - DataPoint
  - MultiDimensionalValue
  - QuantityKind
  - DataPointValue
  - FuseCharacteristic
menu:
  VEC-2.2.0:    
    parent: basic-datatypes
    identifier: basic-datatypes/multidimensional-values
    weight: 1002004 

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1002004
---
{{< svgfigure src="multidimensional-values.png" width="712" height="524" caption="Multidimensional Values" numbered="true" >}}
  {{< svglink relref="../../classes/unit.md" x="274.0" y="428.0" width="139.0" height="82.0" >}}
  {{< svglink relref="../../classes/datapoint.md" x="540.0" y="162.0" width="139.0" height="49.0" >}}
  {{< svglink relref="../../classes/multidimensionalvalue.md" x="428.0" y="15.0" width="158.0" height="49.0" >}}
  {{< svglink relref="../../classes/quantitykind.md" x="267.0" y="267.0" width="158.0" height="82.0" >}}
  {{< svglink relref="../../classes/datapointvalue.md" x="540.0" y="281.0" width="158.0" height="70.0" >}}
  {{< svglink relref="../../classes/fusecharacteristic.md" x="15.0" y="162.0" width="158.0" height="49.0" >}}
{{< / svgfigure >}}
<p> The <i>MultiDimensionalValue</i> concept is used to describe properties that are represented by multiple values across different dimensions — for example, a characteristic curve.      </p>      <p> The <i>dimensions, </i>e.g., tripping time and current for a fuse characteristic, of a <i>MultiDimensionalValue </i>are defined by referencing the corresponding <i>QuantityKinds </i>in which the dimensions are expressed. The <i>QuantityKind</i> also defines a consistent <i>Unit</i> of measurement for values in a specific dimension.      </p>      <p> To provide a standardized semantic meaning for specific use cases, subclasses of <i>MultiDimensionalValue</i> are introduced. These subclasses reference the defined <i>QuantityKind</i> in role-specific contexts. However, those references only define a specific semantic for the <i>dimensions</i> defined by the <i>MultiDimensionalValue </i>itself. That means, those specific QuantityKinds shall also be included in the <i>dimension-</i>association of the <i>MultiDimensionalValue.</i>      </p>      <p> For instance, a <i>FuseCharacteristic</i> must reference at least two dimensions:      </p>      <ul>       <li> <b>I</b> = the tripping current        </li>       <li> <b>T</b> = the time it takes for the fuse to disconnect        </li>     </ul>     <p> Additional dimensions may be included in certain use cases (e.g., temperature). By explicitly referencing the required dimensions in the <i>FuseCharacteristic</i>, these are marked as mandatory and receive a clearly defined semantic meaning.      </p>      <p> The value definition consists of a series of <i>DataPoint</i>s. Each <i>DataPoint</i> of a <i>MultiDimensionalValue</i> shall define exactly one <i>DataPointValue</i> for each <i>QuantityKind </i>that is defined as <i>dimension</i> of the <i>MultiDimensionalValue</i>, and only for those.      </p>