# Templates

[Back to the index](%pages:docs/index)

## Templates

There are five templates you need to define under the `templates` directory.
Each template file is an _Embedded Elixir(EEx)_ files, and processed by
`EEx.SmartEngine`. Please read [the official EEx documentation](http://elixir-lang.org/docs/stable/eex/)
for more information about EEx.

### `templates/base.html.eex`

<svg width="490" height="330" style="background:white">
  <g transform="translate(5,5)">
    <rect x="0" y="0" width="480" height="320" style="stroke:#c04078;stroke-width:2px;fill:none"></rect>
    <rect x="0" y="0" width="480" height="30" style="stroke:none;fill:#c04078"></rect>
    <text x="10" y="20" style="fill:white;font-family:Inconsolata">&lt;%= @page_title %&gt;</text>
    <g style="opacity:0.5" transform="translate(405,5)">
      <rect x="0" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="25" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="50" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
    </g>
    <g transform="translate(10,40)">
      <rect width="460" height="80" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Site Header</tspan>
        <tspan x="5" dy="1.2em" style="font-family:Inconsolata">&lt;%= @site_name %&gt;</tspan>
        <tspan x="5" dy="1em" style="font-family:Inconsolata">&lt;%= @site_description %&gt;</tspan>
      </text>
    </g>
    <g transform="translate(10,130)">
      <rect width="460" height="50" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Global Navigation Area</tspan>
        <tspan x="5" dy="1.2em" style="font-family:Inconsolata">&lt;%= @navigation %&gt;</tspan>
      </text>
    </g>
    <g transform="translate(10,190)">
      <rect width="460" height="80" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
      <text y="20">
        <tspan x="5" style="opacity:0.5">Main Contents Area</tspan>
        <tspan x="5" dy="1.2em" style="font-family:Inconsolata">&lt;%= @contents %&gt;</tspan>
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

