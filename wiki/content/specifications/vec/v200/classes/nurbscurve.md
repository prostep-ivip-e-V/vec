---
title: NURBSCurve
toc: false
type: specs
date: "2022-03-09"
draft: false
specification: VEC
version: 2.0.0
documentType: "Recommendation"
elementType: Class
classes:
  - NURBSCurve
menu_name: vec-2.0.0
---
<p> The NURBSCurve represents the parameter set of a NURBS (Non-Uniform rational B-Spline)&#160;in the VEC.&#160;For a complete definition of NURBS&#160;see for example (<a href="https://en.wikipedia.org/wiki/Non-uniform_rational_B-spline">https://en.wikipedia.org/wiki/Non-uniform_rational_B-spline</a>).      </p>      <p> &#160;      </p>      <p> Basically, a NURBS curve is defined by:      </p>      <ul>       <li> a <b>degree</b>        </li>       <li> a list of<b> control points</b>: with at least <i>degree + 1</i> points.        </li>       <li> a <b>weight</b> for each control point.        </li>       <li> a <b>knots</b> vector: a list of numbers, with (<i>degree + #controlpoints +1) </i>elements. Every number must be equal or greater than its predecessor, and the same value must not be repeated more than <i>degree </i>times. It seems that modern NURBS algorithms just require (<i>degree + #controlpoints -1) </i>control points.        </li>     </ul>     <p> Commonly used default assignments for the parameters are:      </p>      <ul>       <li> <b>weight = 1 </b>for all control points: In this case the curve is called &quot;non-rational&quot;.        </li>       <li> <b>knot </b>vector: equidistant and increasing values in the knot vector (e.g. 1,2,3,4,5,6,7) means the curve is &quot;uniform&quot;&#160;which exists in two variants.         <ul>           <li> <b>clamped</b> (or pinned): If the knot vector starts and ends with <i>degree </i>times the same value (e.g. degree = 3, knots = [0,0,0,1,2,3,4,5,5,5], then it is <i>clamped.</i> This has the effect, that the first and last control point coincide with the start and end point of the curve.            </li>           <li> <b>unclamped </b>(or unpinned): If there are no repeated values in the knot vector (e.g. 1,2,3,4,5,6,7) it is unclamped.            </li>         </ul>        </li>     </ul>     <p> The VEC&#160;<i>NURBSCurve</i> corresponds to removed <i>BSplineCurve</i> (VEC&#160;Version &lt;= 1.1.3 and KBL). However, the <i>BSplineCurve </i>did not define weight and knot vector, so default assignments where assumed. Existing implementations are using &quot;uniform non-rational b splines&quot;, unfortunately some implementations use &quot;uniform clamped&quot; and some &quot;unclamped&quot;.      </p>      <p> Since a NURBS cannot be rendered correctly without the knowledge of all parameters and to avoid further misconceptions the VEC allows the definition of all parameters of a NURBS. Furthermore, it requires the specification of all parameters, even if some known default assignment (e.g. non-rational)&#160;is used.&#160;      </p>

## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_3d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [Curve3D]({{< relref "curve3d.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|degree | [Integer]({{< relref "integer.md" >}}) | 1 | <p> Defines the degree of the NURBS (for details see the class description of <i>NURBSCurve).</i>      </p> | [NURBSCurve]({{< relref "nurbscurve.md" >}}) |
|knots | [Double]({{< relref "double.md" >}}) | 0..* | <p> Defines the knot-vector of the NURBS(for details see the class description of <i>NURBSCurve).</i>      </p> | [NURBSCurve]({{< relref "nurbscurve.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [NURBSControlPoint]({{< relref "nurbscontrolpoint.md" >}}) | controlPoint | 0..* |  | <p> Defines the control points of the NURBS curve (for details see the class description of <i>NURBSCurve)</i>      </p> |
