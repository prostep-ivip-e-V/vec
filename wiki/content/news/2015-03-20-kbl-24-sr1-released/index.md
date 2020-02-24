---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "KBL 2.4 SR-1 released!"
subtitle: ""
summary: ""
authors: []
tags: []
categories: []
date: 2015-03-20
lastmod: 2015-03-20
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---
Due to two minor bugs in the schema we had to publish a SR-1 Version of the KBL 2.4 schema. 
<!--more-->
The schema and the relevant documentation can be found [here]({{< relref "specifications/kbl" >}}). 

The two bugs were:

  * Multiplicity of association ComponentOccurrence -> Mounting changed from 1..* to 0..* (KBLFRM-564)
  * Made Component_box_connector_occurrence a Located_component (KBLFRM-570)
