---
title: "3D B-Spline Representation"
#linktitle: Link in Sidemenu
type: specs
# Table of Content on the right side. Only useful for large pages.
toc: true
authors: [becker]
categories: []
date: 2020-05-04T09:25:01+02:00
lastmod: 2020-05-04T09:25:01+02:00
draft: false
math: true

classes:
  - B_spline_curve

menu:
  kbl-guidelines:
    # Toplevel element. For sub sections the identifier of the subsection
    #parent: Example Topic
    weight: 2000
---

For historical reasons the documentation of the {{% kbl-class "B_Spline_curve" %}} is not clear and unfortunately leaves room for interpretation. This Implementation Guideline clarifies the relevant facts and describes the valid interpretations in the field.

## Background

The following section contains a short wrap-up about NURBS (Non-uniform rational B-spline). The description in this section aims primarily at an informal understanding and not at a precise and 100% correct mathematical definition. It contains just enough information to understand the definitions in this guidline and is a summary from multiple sources. For more details check for the following links [^1][^2][^3] from which this summary has been derived.

NURBS are a commonly used as a representation of surfaces and curves in computer-aided design and are part of numerous industry wide standards. For the KBL & VEC only the representation of curves (the 3D centerline of {{% kbl-class "Segment" %}}s) as NURBS is relevant. NURBS are representing a curve as a mathematical function. The appearance of the curve can be influenced by a set of parameters:

* **Degree $d$:** This is usally one of $\left [1,2,3,5 \right ]$. Sometimes, there are references to the *order* of a NURBS, where *order* is $d + 1$. The *degree* defines the number of control points that influence any given point of the curve. 
* **Control Points**: The control points define the shape curve. Each NURBS can have $n$ control points, where $n > d$.
* **Weight**: Each control point can define an individual weight.
* **Knot vector**: The knot vector defines where and how the control points affect the NURBS curve. The number of knots is equal to $n + d + 1$. The values in the vector have a non-decreasing order. However, consecutive knots can have the same value, e.g. $(0,0,1,2,3,4,4)$ is a valid vector. A number of coinciding knots is sometimes referred to as a knot with a certain **multiplicity**. A knot where the *multiplicity* is equal to the *order* ($d+1$) is a **full** multiplicity knot. 

### Special Cases of NURBS

The NURBS (<u>N</u>on-<u>U</u>niform <u>R</u>ational <u>B</u>-<u>S</u>pline) are the most common form. There are groups of NURBS that have special properties: 

1. If all control points have the same weight ($w=1.0$) the B-Spline is called **non-rational**
2. If knot vector starts and ends with a **full** multiplicity knot the B-spline is called **clamped**. A *clamped* B-spline starts in the first and ends in the last control point.
3. **Uniform**: There are some slightly different interpretations about the defintion of *uniformity*. In general *uniform* refers to the distribution of the  knot values in the knot vector. Some sources (e.g. [^2]) define, that if the knot vector is clamped, all other knots have a multiplicity of one, and all knots (values) have the same distance, the B-spline is called **uniform**. For example a NURBS with $d=4$ and with a knot vector $(0,0,0,0,0,1,2,3,4,5,5,5,5,5)$ would be *uniform*. Other sources (e.g. [^4]) differentiate between *clamped uniform* and *unclamped uniform*: 
   * **Clamped uniform** would correspond to the defintion above,
   * **Unclamped uniform** would require all knots to have a multiplicity of one, and all knots (values) to have the same distance (e.g. $(0,1,2,3,4,5,6,7,8,9,10,11,12)$).

## Current Situation in the KBL

The intention of the KBL was, to keep the B-spline data model as simple as possible. Therefore the data model just contains the *control points* and the *degree*, assuming that all other parameters have an unambigious default when the set of valid NURBS are restricted to **Uniform non-rational B-Splines (UNRBS)**. This is the reason why the KBL model does not define a *weight* nor a *knot-vector*. 

Unfortunately, the definition of the KBL was not as precise as it could have been. No concrete definition was made as to whether these are *clamped* or *unclamped* uniform B-Splines. At the moment implementations for both variants exist. 

A subsequent restriction to one of the two variants was discussed in the relevant committees and considered impracticable. The reasons for this were, on the one hand, the large volume of existing data and, on the other hand, the non-trivial conversion process between the two variants, which makes it virtually impossible to implement it in practice.

## Definition

The {{% kbl-class "B_Spline_curve" %}} in the KBL represents a **uniform non-rational B-spline** (either *clamped* or *unclamped*).  When rendering 3D KBL data, the renderer has to use external knowledge to determine which variant is used. 

***Note:** Due to this fact, the B-Spline modeling in VEC version 1.2.0 and higher has been extended in a way so that all information of a NURBS can be represented.*

[^1]: https://en.wikipedia.org/wiki/Non-uniform_rational_B-spline
[^2]: https://wiki.mcneel.com/de/rhino/nurbs
[^3]: https://pages.mtu.edu/~shene/COURSES/cs3621/NOTES/spline/B-spline/bspline-curve.html
[^4]: Les Piegl, Wayne Tiller: The NURBS Book, Page 572
