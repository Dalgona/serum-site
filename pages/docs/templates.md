---
title: Templates
---

[Back to the index](%pages:docs/index)

# Templates

Serum provides five templates you need to define under the `templates`
directory.  Each template file is an _Embedded Elixir(EEx)_ files. Please read
[the official EEx documentation](http://elixir-lang.org/docs/stable/eex/) for
more information about EEx.

## Global Variables

These are variables you can use in any template files.

### `site_name`

```lang-markup
<%= site_name %>
```

returns the name of the website, which are specified in `serum.json` file.

### `site_description`

```lang-markup
<%= site_description %>
```

returns the description (or subtitle) of the website, which are specified
in `serum.json` file.

### `author`

```lang-markup
<%= author %>
```

returns the value of `author` field in `serum.json` file.

### `author_email`

```lang-markup
<%= author_email %>
```

returns the email address of website author specified in `serum.json` file.

## Helper Macros

There are some helper macros for use in templates. You will need to utilize
these macros to make templates that really work.

### `base/0` and `base/1`

```lang-markup
<%= base() %>
<!-- ==> /base/url/ -->
<%= base "assets/css/style.css" %>
<!-- ==> /base/url/assets/css/style.css -->
```

Prepends the base URL in front of the specified path.

This is the most basic way to reference files and path, but it's more
recommended to use the other helper macros below whenever possible, as each
of those macros does more specific jobs. This function should be used only when
all of the other helpers don't satisfy your needs.

### `page/1`

```lang-markup
<%= page "getting-started" %>
<!-- ==> /base/url/getting-started.html -->
<%= page "docs/index" %>
<!-- ==> /base/url/docs/index.html -->
<%= page "docs/" %>
<!-- ==> /base/url/docs/.html (may be an undesired output) -->
```

This is a shortcut macro for accessing pages. Please note that you should not
put `.html` at the end of the path, and passing a directory as an argument
produces a wrong output.

### `post/1`

```lang-markup
<%= post "2016-11-20-1937-some-post" %>
<!-- ==> /base/url/posts/2016-11-20-1937-some-post.html -->
```

This shortcut macro helps accessing blog posts. Like `page/1`, you should not
append `.html` to the name of a post.

### `asset/1`

```lang-markup
<%= asset "js/script.js" %>
<!-- ==> /base/url/assets/js/script.js -->
```

Use this macro whenever you need to reference an asset. Calling `asset("path")`
is equivalent to calling `base("/base/url/assets/path")`.

<blockquote class="note">
  <header>NOTE</header>
  <p>You may have noticed that there is no helper macro for accessing media
  files. This is intended because media files are supposed to be used in
  <i>some</i> pages or blog posts. You can, still, access those files by using
  <code>base/1</code> macro, but in that case you really need to consider
  moving those files into <code>assets/</code> directory.</p>
</blockquote>

### `include/1`

See [Includable Templates](%pages:docs/includes).

<!-- TODO: add helper for tag index -->

## List of Required Templates

Below is the list of all five templates you need to define, with brief
illustrations showing the role of each template and what functions or variables
can be used.

### `templates/base.html.eex`

<svg width="490" viewBox="0 0 490 270" style="background:white">
  <g transform="translate(5,5)">
    <rect x="0" y="0" width="480" height="260" style="stroke:#c04078;stroke-width:2px;fill:none"></rect>
    <rect x="0" y="0" width="480" height="30" style="stroke:none;fill:#c04078"></rect>
    <text x="10" y="20" style="fill:white;font-family:Inconsolata">&lt;%= page_title %&gt;</text>
    <g style="opacity:0.5" transform="translate(405,5)">
      <rect x="0" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="25" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="50" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
    </g>
    <g transform="translate(10,40)">
      <rect width="460" height="80" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Site Header</tspan>
        <tspan x="5" dy="1.2em" style="font-family:Inconsolata">&lt;%= site_name %&gt;</tspan>
        <tspan x="5" dy="1em" style="font-family:Inconsolata">&lt;%= site_description %&gt;</tspan>
      </text>
    </g>
    <g transform="translate(10,130)">
      <rect width="460" height="80" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Main Contents Area</tspan>
        <tspan x="5" dy="1.2em" style="font-family:Inconsolata">&lt;%= contents %&gt;</tspan>
      </text>
    </g>
    <g transform="translate(10,220)">
      <rect width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Site Footer</tspan>
      </text>
    </g>
  </g>
</svg>

This template defines the overall structure and look & feel of the website. In
other words, the root element of the page (`<html>`&hellip;`</html>`) should be
defined here.

In addition to common helper functions, you need to use the additional
variables specific to this template, which are:

* `page_title`

    The text displayed in the title bar of the web browser. This is usually
    expanded into the title of a page or a blog post.

* `navigation`

    This variable is replaced by the rendered result of `nav.html.eex`.

* `contents`

    Represents the main contents area. Depending on the type of the page, it's
    replaced by the rendered result of `page.html.eex`, `list.html.eex`, or
    `post.html.eex`.

<!-- ### `templates/nav.html.eex`

Defines the appearance of the global navigation area. You can place some
hyperlinks to pages here. It's safe to rely on this template for now, but
later, this template will be superseded by "Includes", which is the
generalization of this template and the more flexible way to compose your
templates.-->

### `templates/page.html.eex`

<svg width="490" viewBox="0 0 490 230" style="background:white">
  <g transform="translate(5,5)">
    <rect x="0" y="0" width="480" height="220" style="stroke:#c0c0c0;stroke-width:2px;fill:none"></rect>
    <rect x="0" y="0" width="480" height="30" style="stroke:none;fill:#c0c0c0"></rect>
    <g style="opacity:0.5" transform="translate(405,5)">
      <rect x="0" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="25" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="50" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
    </g>
    <g transform="translate(10,40)">
      <rect width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Site Header</tspan>
      </text>
    </g>
    <g transform="translate(10,80)">
      <rect width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Global Navigation Area</tspan>
      </text>
    </g>
    <g transform="translate(10,120)">
      <rect x="0.5" y="0.5" width="459" height="49" style="stroke:#c04078;stroke-width:1px;fill:rgba(192,64,120,0.3)"></rect>
      <text y="20">
        <tspan x="5" style="fill:#c04078;font-weight:bold">Main Contents Area</tspan>
        <tspan x="5" dy="1.2em" style="font-family:Inconsolata">&lt;%= contents %&gt;</tspan>
      </text>
    </g>
    <g transform="translate(10,180)">
      <rect width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Site Footer</tspan>
      </text>
    </g>
  </g>
</svg>

This template does only one job: Wrapping the contents of a page. When building
a page, the HTML converted from a markdown file will be wrapped by this
template, and the wrapped contents will finally be wrapped again, by
`base.html.eex`.

### `templates/list.html.eex`

<svg width="490" viewBox="0 0 490 290" style="background:white">
  <g transform="translate(5,5)">
    <rect x="0" y="0" width="480" height="280" style="stroke:#c0c0c0;stroke-width:2px;fill:none"></rect>
    <rect x="0" y="0" width="480" height="30" style="stroke:none;fill:#c0c0c0"></rect>
    <g style="opacity:0.5" transform="translate(405,5)">
      <rect x="0" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="25" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="50" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
    </g>
    <g transform="translate(10,40)">
      <rect width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Site Header</tspan>
      </text>
    </g>
    <g transform="translate(10,80)">
      <rect width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Global Navigation Area</tspan>
      </text>
    </g>
    <g transform="translate(10,120)">
      <rect x="0.5" y="0.5" width="459" height="109" style="stroke:#c04078;stroke-width:1px;fill:rgba(192,64,120,0.3)"></rect>
      <text y="20">
        <tspan x="5" style="fill:#c04078;font-weight:bold">Main Contents Area</tspan>
        <tspan x="5" dy="1.2em" style="font-family:Inconsolata">&lt;%= header %&gt;</tspan>
        <tspan x="5" dy="1.2em" style="font-family:Inconsolata">&lt;%= for p &lt;- posts do %&gt;</tspan>
        <tspan x="5" dy="1.2em" style="font-family:Inconsolata">...</tspan>
        <tspan x="5" dy="1.2em" style="font-family:Inconsolata">&lt;% end %&gt;</tspan>
      </text>
    </g>
    <g transform="translate(10,240)">
      <rect width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Site Footer</tspan>
      </text>
    </g>
  </g>
</svg>

Defines the appearance of the blog post list. Place these variables in
appropriate position:

* `header`

    The title text of the list page such as *"All Posts"* or *"Posts tagged
    ..."*. You can set the format of this text in `serum.json`.

* `posts`

    An enumerable of maps containing post metadata, sorted by date in
    descending order. Following is the list of keys and description of values.

    * `url`: URL of this blog post
      (e.g., `/base/url/posts/YYYY-MM-DD-hhmm-post.html`)
    * `title`: Title of this blog post
    * `date`: Formatted representation of date when this post has been written
    * `tags`: An enumerable containing tag information

    Each item in `tags` enumerable is also a map. Its keys are:

    * `list_url`: URL of the list of posts with this tag.
    * `name`: Name of this tag.

### `templates/post.html.eex`

<svg width="490" viewBox="0 0 490 290" style="background:white">
  <g transform="translate(5,5)">
    <rect x="0" y="0" width="480" height="280" style="stroke:#c0c0c0;stroke-width:2px;fill:none"></rect>
    <rect x="0" y="0" width="480" height="30" style="stroke:none;fill:#c0c0c0"></rect>
    <g style="opacity:0.5" transform="translate(405,5)">
      <rect x="0" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="25" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="50" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
    </g>
    <g transform="translate(10,40)">
      <rect width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Site Header</tspan>
      </text>
    </g>
    <g transform="translate(10,80)">
      <rect width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Global Navigation Area</tspan>
      </text>
    </g>
    <g transform="translate(10,120)">
      <rect x="0.5" y="0.5" width="459" height="109" style="stroke:#c04078;stroke-width:1px;fill:rgba(192,64,120,0.3)"></rect>
      <text y="20">
        <tspan x="5" style="fill:#c04078;font-weight:bold">Main Contents Area</tspan>
        <tspan x="5" dy="1.2em" style="font-family:Inconsolata">&lt;%= title %&gt;</tspan>
        <tspan x="5" dy="1.2em" style="font-family:Inconsolata">&lt;%= date %&gt;</tspan>
        <tspan x="5" dy="1.2em" style="font-family:Inconsolata">&lt;%= for t &lt;- tags do %&gt; ... &lt;% end %&gt;</tspan>
        <tspan x="5" dy="1.2em" style="font-family:Inconsolata">&lt;%= contents %&gt;</tspan>
      </text>
    </g>
    <g transform="translate(10,240)">
      <rect width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Site Footer</tspan>
      </text>
    </g>
  </g>
</svg>

This template formats blog post pages. Use these variables in appropriate
places:

* `title`

    Title of this blog post.

* `date`

    Formatted string representation of date when this post has been written.

* `raw_date`

    A nested tuple of integers representing the date of the post, in the form of
    `{{year, month, day}, {hours, minutes, 0}}`.

* `tags`

    An enumerable containg tag information. Please see the description for
    `list.html.eex` above for detailed description on this variable.

* `contents`

    The HTML code converted from the source markdown file.
