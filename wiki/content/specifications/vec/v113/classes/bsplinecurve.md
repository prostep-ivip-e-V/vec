---
title: BSplineCurve
toc: false
type: specs
date: "2017-02-21"
draft: false
specification: VEC
version: 1.1.3
documentType: "Recommendation"
elementType: Class
classes:
  - BSplineCurve
menu_name: vec-1.1.3
---
<p> A B-spline curve is a piecewise parametric polynomial or rational curve described in terms of control points and basis functions. The B-spline curve has been selected as the most stable format to represent all types of polynomial or rational parametric curves. With appropriate attribute values it is capable of representing single span or spline curves of explicit polynomial, rational, Bezier or B-spline type.     </p>      <p> Within the Harness Engineering Information Model the definition has been restricted to a uniform B_spline_curve, where the knots are evenly spaced. Suitable default values for the knots and knot multiplicities are derived in this case. A B-spline is uniform if and only if all knots are of multiplicity 1 and they differ by a positive constant from the preceding knot. In this case the knot spacing is 1.0, starting at -d, where d is the degree.     </p>      <p> Note: If the B-spline curve is uniform and degree=1, the B-spline is equivalent to a polyline.      </p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | geo_3d |
| **Applied Stereotype**  |   |
| **Base Classifier**     | [ExtendableElement]({{< relref "extendableelement.md" >}})<br/>  |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|degree | [Integer]({{< relref "integer.md" >}}) | 1 | <p>The algebraic degree of the basis functions. </p> | [BSplineCurve]({{< relref "bsplinecurve.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [CartesianPoint3D]({{< relref "cartesianpoint3d.md" >}}) | controlPoint | 0..* | 0..* | The list of control points for the curve. The list shall contain at least 2 elements. |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [GeometrySegment3D]({{< relref "geometrysegment3d.md" >}}) | 1 | bSplineCurve | 0..* | Specifies an ordered list of BSplineCurves defining the 3D appearance of the GeometrySegment3D. |
