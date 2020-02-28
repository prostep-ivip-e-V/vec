---
title: B_spline_curve
toc: false
type: specs
date: "2018-07-04"
draft: false
specification: KBL
version: 2.5
documentType: "Recommendation"
elementType: Class
classes:
  - B_spline_curve
menu_name: kbl-2.5
---
<p>A B-spline curve is a piecewise parametric polynomial or rational curve described in terms of control points and basis functions. The B-spline curve has been selected as the most stable format to represent all types of polynomial or rational parametric curves. With appropriate attribute values it is capable of representing single span or spline curves of explicit polynomial, rational, Bezier or B-spline type.  Within the Harness Engineering Information Model the definition has been restricted to a uniform B_spline_curve, where the knots are evenly spaced. Suitable default values for the knots and knot multiplicities are derived in this case. A B-spline is uniform if and only if all knots are of multiplicity 1 and they differ by a positive constant from the preceding knot. In this case the knot spacing is 1.0, starting at -d , where d is the degree. Note:  If the B-spline curve is uniform and degree=1, the B-spline is equivalent to a polyline.</p>
## General Information

| Attribute               | Value |
|-------------------------|-------|
| **Owner**               | 6_Foundation |
| **Applied Stereotype**  |   |
| **Base Classifier**     |   |
| **Is Abstract**         | false |
| **Derived Classifiers** |   |

## Attributes
|  Name  |  Type  |  Mult.  |  Description  |  Owning Classifier  |
|--------|--------|---------|---------------|--------------|
|Degree | [Integer]({{< relref "integer.md" >}}) | 1 | <p>The algebraic degree of the basis functions.</p> | [B_spline_curve]({{< relref "b_spline_curve.md" >}}) |

## Outgoing Relations
|    Type  |   Role   |   Mult.   |   Mult.   |   Description   |
|----------|----------|-----------|-----------|-----------------|
| [Cartesian_point]({{< relref "cartesian_point.md" >}}) | Control_points | 2..* | 0..* |  |
##  Incoming Relations
|    Type  |   Mult.  |   Role    |   Mult.   |   Description  |
|----------|----------|-----------|-----------|----------------|
| [Segment]({{< relref "segment.md" >}}) | 1 | Center_curve | 0..* |  |
