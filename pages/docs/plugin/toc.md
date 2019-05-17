---
title: TOC Generator Plugin
group: docs-plugin
order: 2
---

[Back to the index](%page:docs/index)

# TOC Generator Plugin

`Serum.Plugins.TableOfContents` is a module for the Serum plugin that inserts a
table of contents. This plugin is included in the `serum` package, so you don't
need to add an extra dependency to use this plugin.

## Using the Plugin

First, add this plugin to your `serum.exs`:

```lang-elixir
%{
  plugins: [
    Serum.Plugins.TableOfContents
  ]
}
```

This plugin works with both pages(`.md`, `.html`, and `.html.eex`) and blog
posts(`.md`). Insert the `<serum-toc>` tag at the position you want to
display a table of contents.

```lang-markup
<serum-toc start="2" end="4"></serum-toc>
```

The `start` and `end` attributes define a range of heading level this plugin
recognizes. In the case of the above example, `<h1>`, `<h5>`, and `<h6>` tags
are ignored when generating a table of contents.

After this plugin has run, each `<serum-toc>` tag is replaced with an
unordered list:

```lang-markup
<ul id="toc" class="serum-toc">
  <li class="indent-0">
    <a href="#s_1">
      <span class="number">1</span>
      Section 1
    </a>
  </li>
  <!-- More list items here... -->
</ul>
```

This plugin produces a "flat" unordered list. However, each list item tag has
an `indent-x` class, where `x` is an indentation level (from 0 to 5) of the
current item in the list. You can utilize this when working on stylesheets.

The `id` attribute of each target heading tag is used when hyperlinks are
generated. If the element does not have an `id`, the plugin will set one
appropriately.

## Notes

You may use `<serum-toc>` tag more than once in a single page. However, all
occurrences of this tag will be replaced with a table of contents generated
using the attributes of the first one. That is, for example, all three tags
in the code below expand to the same table of contents, showing a 2-level
deep list.

```lang-markup
<serum-toc start="2" end="3"></serum-toc>
...
<serum-toc></serum-toc>
...
<serum-toc></serum-toc>
```

It's recommended that you wrap a `<serum-toc>` tag with a `<div>` tag when
using in a markdown file, to ensure a well-formed structure of HTML output.

```lang-markup
<div><serum-toc ...></serum-toc></div>
```

And finally, make sure you close every `<serum-toc>` tag properly
with `</serum-toc>`.
