---
title: 'ECAD WIKI'
type: landing

# Home page sections (HugoBlox blocks). Replaces the former Wowchemy widgets in `content/home/`.
sections:
  - block: hero
    id: vec
    content:
      eyebrow: Latest Release v2.2.0
      title: VEC
      text: |
        **The Vehicle Electric Container** - Foundation for the Digitalization of your E/E Processes.

        Get the most comprehensive standard for the digital representation of information created during the Electrical System Development Process.
      primary_action:
        text: Documentation
        url: specifications/vec/v220
        icon: book-open
      secondary_action:
        text: Implementation Guidelines
        url: specifications/vec/guidelines

  - block: markdown
    id: intro
    content:
      title: "Welcome to the **ECAD Wiki**"
      subtitle: "Everything about VEC & Friends"
      text: |
        This is the place for all information about the standardization activities
        of the [prostep ivip Association](http://www.prostep.org/en) and the [VDA](http://www.vda.de/en) in the field of
        wiring harness development and electrical systems design.

        You will find here all specifications and recommendations published by the joint
        Project Group VES-WF together with additional background information, implementation
        guidelines and examples. Furthermore the ECAD Wiki is a source for articles dedicated to
        engineering processes and methods in the electrical system development and their
        related technologies.

        If you find a bug, have a feature request or if you want to
        participate in the improvement and development process, then [see here](post/how-to-contribute/) how
        you can contribute.

  - block: collection
    id: articles
    content:
      title: Featured Articles
      filters:
        folders:
          - post
        featured_only: true
      count: 0
      order: desc
    design:
      view: article-grid
      columns: 3

  - block: collection
    id: news
    content:
      title: News
      filters:
        folders:
          - news
      count: 5
      order: desc
    design:
      view: date-title-summary

  - block: collection
    id: featured
    content:
      title: Featured Events
      filters:
        folders:
          - event
        featured_only: true
      count: 0
      order: desc
    design:
      view: article-grid
      columns: 3

  - block: collection
    id: groups
    content:
      title: Project Groups
      subtitle: Organizational structures for the development & improvement of VEC & KBL.
      filters:
        folders:
          - groups
      count: 0
      sort_by: Weight
      order: asc
    design:
      view: article-grid
      columns: 2
---
