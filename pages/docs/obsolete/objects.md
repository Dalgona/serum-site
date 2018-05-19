---
title: Objects Reference
group: docs_obsolete
order: 9
---

[Back to the index](%page:docs/index)

# Objects Reference

This document describes various objects provided by Serum.

## Page Object

Each page object contains metadata of a page. A page object is a struct with
following keys:

* `title`: The title of the page.
* `label`: The name (label) of the page.
* `group`: The name of group the page belongs to. Can be `nil`.
* `order`: The order in which this page appears in its `group`.
* `url`: The URL of the page.

Read [Adding Pages to Your Website](%page:docs/pages) document for more
information about "group" and "order."

## Post Object

Each post object contains metadata of a blog post. A post object is a struct
with following keys:

* `title`: The title of the post.
* `date`: The string representation of the date when the post is written. See
  [The `serum.json` File](%page:docs/serum-json) document to see how this
  property is generated.
* `raw_date`: The tuple containing the date information in the form of
  `{{year, month, day}, {hour, minute, second}}`. You may need this if you want
  to construct `<date>` HTML tags.
* `tags`: The list of tags the post has. See _Tag Object_ section below for more
  information.
* `preview_text`: The first portion of the blog post, without HTML tags.
* `html`: The full contents of the blog post, in HTML format.
* `url`: The URL of the blog post.

## Tag Object

Each tag object contains metadata of a tag. A tag object is a struct with
following keys:

* `name`: The name of the tag.
* `list_url`: The URL of the (auto-generated) list of blog posts with this tag.
