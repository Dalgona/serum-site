---
title: Adding Pages to Your Website
group: docs
order: 3
---

[Back to the index](%pages:docs/index)

# Adding Pages to Your Website

All source codes for your pages should be located under `pages/` directory.
Serum scans this directory and its subdirectories recursively, so you may have
the page hierarchy as deep as you want.

You can make pages in three formats: Markdown, HTML, and HTML with EEx. The name
of all markdown file must end with `.md`, the name of all HTML file must end
with `.html`, and the name of all EEx file must end with `.html.eex`, as Serum
determines source type by examining filename extensions.

Although almost all HTML codes are accepted by markdown processor, it is
recommended to save HTML documents as HTML file because the extra procedure of
markdown processing can be skipped. When you are writing pages in EEx, you can
utilize all of template helpers and variables described in
[Templates](%pages:docs/templates) document.

For successful build, you need to provide metadata at the beginning of every
page source files. The beginning and the end of each page header are delimited
by a `---` line, and between these two lines, each metadata is defined in a line
in the form of `<key>: <value>`. Below is the list of metadata you can define:

* `title` (string, required)

    Defines the title of the page. This text can be displayed in the title bar
    of web browsers, or header area of the page.

* `label` (string, optional)

    Defines the name (label) of the page. This is useful when you want to
    display different text other than the page title, in the navigation area or
    page index. If this is not set, `label` is equal to `title`.

* `group` (string, optional)

    Specifies a group the page belongs to. Pages with the same `group` property
    belong to the same group, so that you can filter a list of pages by group
    later in EEx templates or pages.

* `order` (integer, optional)

    Determines the order in which pages belonging to the same group appear in
    the page list. The numbers don't need to be consecutive; you just need to
    number the pages so that pages with lower `order` come first and pages with
    higher `order` come last in the list.

Below is an example of a valid page source file.

```
---
title: Welcome to My Website
label: Home
group: main-nav
order: 1
---

... contents ...
```

