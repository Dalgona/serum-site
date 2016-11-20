# Templates

[Back to the index](%pages:docs/index)

## Templates

There are five templates you need to define under the `templates` directory.
Each template file is an _Embedded Elixir(EEx)_ files. Please read
[the official EEx documentation](http://elixir-lang.org/docs/stable/eex/)
for more information about EEx.

There are some accessor and helper functions for use in templates, which are
listed below. You will need to utilize these functions to make templates that
really work.

### `site_name/0`

```lang-markup
<%= site_name %>
```

returns the name of the website, which are specified in `serum.json` file.

### `site_description/0`

```lang-markup
<%= site_description %>
```

returns the description (or subtitle) of the website, which are specified
in `serum.json` file.

### `author/0`

```lang-markup
<%= author %>
```

returns the value of `author` field in `serum.json` file.

### `author_email/0`

```lang-markup
<%= author_email %>
```

returns the email address of website author specified in `serum.json` file.

### `base/1`

```lang-markup
<%= base "assets/css/style.css" %>
<!-- ==> /base/url/assets/css/style.css -->
```

Prepends the base URL in front of the specified path.

This is the most basic way to reference files and path, but it's more
recommended to use the other helper functions below whenever possible, as each
of those functions does more specific jobs. This function should be used only
when all of the other helpers don't satisfy your needs.

### `page/1`

```lang-markup
<%= page "getting-started" %>
<!-- ==> /base/url/getting-started.html -->
<%= page "docs/index" %>
<!-- ==> /base/url/docs/index.html -->
<%= page "docs/" %>
<!-- ==> /base/url/docs/.html (may be an undesired output) -->
```

This is a shortcut function for accessing pages. Please note that you should
not put `.html` at the end of the path, and passing a directory as an argument
produces a wrong output.

### `post/1`

```lang-markup
<%= post "2016-11-20-1937-some-post" %>
<!-- ==> /base/url/posts/2016-11-20-1937-some-post.html -->
```

This shortcut function helps accessing blog posts. Like `page/1`, you shouldn't
append `.html` to the name of a post.

### `asset/1`

```lang-markup
<%= asset "js/script.js" %>
<!-- ==> /base/url/assets/js/script.js -->
```

Use this function whenever you need to reference an asset. Calling
`asset("path")` is equivalent to calling `base("/base/url/assets/path")`.

**NOTE:** You may have noticed that there is no helper function for accessing
media files. This is intended because media files are supposed to be used in
*some* pages or blog posts. You can, still, access those files by using
`base/1` function, but in that case you really need to consider moving those
files into `assets/` directory.

<!-- TODO: add helper for tag index -->

### `templates/base.html.eex`

<svg width="490" height="330" style="background:white">
  <g transform="translate(5,5)">
    <rect x="0" y="0" width="480" height="320" style="stroke:#c04078;stroke-width:2px;fill:none"></rect>
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
      <rect width="460" height="50" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Global Navigation Area</tspan>
        <tspan x="5" dy="1.2em" style="font-family:Inconsolata">&lt;%= navigation %&gt;</tspan>
      </text>
    </g>
    <g transform="translate(10,190)">
      <rect width="460" height="80" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Main Contents Area</tspan>
        <tspan x="5" dy="1.2em" style="font-family:Inconsolata">&lt;%= contents %&gt;</tspan>
      </text>
    </g>
    <g transform="translate(10,280)">
      <rect width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Site Footer</tspan>
      </text>
    </g>
  </g>
</svg>

Defines the overall structure and look & feel of the website.

Description

### `templates/nav.html.eex`

<svg width="490" height="240" style="background:white">
  <g transform="translate(5,5)">
    <rect x="0" y="0" width="480" height="230" style="stroke:#c0c0c0;stroke-width:2px;fill:none"></rect>
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
      <rect x="0.5" y="0.5" width="459" height="59" style="stroke:#c04078;fill:rgba(192,64,120,0.3)"></rect>
      <text y="20">
        <tspan x="5" style="fill:#c04078;font-weight:bold">Global Navigation Area</tspan>
      </text>
    </g>
    <g transform="translate(10,150)">
      <rect width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Main Contents Area</tspan>
      </text>
    </g>
    <g transform="translate(10,190)">
      <rect width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Site Footer</tspan>
      </text>
    </g>
  </g>
</svg>

Defines the appearance of the global navigation area.

Description

### `templates/page.html.eex`

<svg width="490" height="330" style="background:white">
  <g transform="translate(5,5)">
    <rect x="0" y="0" width="480" height="320" style="stroke:#c0c0c0;stroke-width:2px;fill:none"></rect>
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
      <rect width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Main Contents Area</tspan>
      </text>
    </g>
    <g transform="translate(10,160)">
      <rect width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Site Footer</tspan>
      </text>
    </g>
  </g>
</svg>

### `templates/list.html.eex`

<svg width="490" height="330" style="background:white">
  <g transform="translate(5,5)">
    <rect x="0" y="0" width="480" height="320" style="stroke:#c0c0c0;stroke-width:2px;fill:none"></rect>
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
      <rect width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Main Contents Area</tspan>
      </text>
    </g>
    <g transform="translate(10,160)">
      <rect width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Site Footer</tspan>
      </text>
    </g>
  </g>
</svg>

Defines the appearance of the blog post list.

Description

### `templates/post.html.eex`

<svg width="490" height="330" style="background:white">
  <g transform="translate(5,5)">
    <rect x="0" y="0" width="480" height="320" style="stroke:#c0c0c0;stroke-width:2px;fill:none"></rect>
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
      <rect width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Main Contents Area</tspan>
      </text>
    </g>
    <g transform="translate(10,160)">
      <rect width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Site Footer</tspan>
      </text>
    </g>
  </g>
</svg>

