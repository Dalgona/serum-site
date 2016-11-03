[Back to the index](%pages:docs/index)

## Templates

There are five templates you need to define under the `templates` directory.
Each template file is an _Embedded Elixir(EEx)_ files, and processed by
`EEx.SmartEngine`. Please read [the official EEx documentation](http://elixir-lang.org/docs/stable/eex/)
for more information about EEx.

### `templates/base.html.eex`

<svg width="490" height="330">
  <g transform="translate(5,5)">
    <rect x="0" y="0" width="480" height="320" style="stroke:#c04078;stroke-width:2px;fill:none"></rect>
    <rect x="0" y="0" width="480" height="30" style="stroke:none;fill:#c04078"></rect>
    <text x="10" y="20" style="fill:white;font-family:Inconsolata">&lt;%= @page_title %&gt;</text>
    <g style="opacity:0.5" transform="translate(405,5)">
      <rect x="0" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="25" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="50" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
    </g>
    <rect x="10" y="40" width="460" height="80" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="60">
      <tspan x="15" style="opacity:0.5">Site Header</tspan>
      <tspan x="15" dy="1.2em" style="font-family:Inconsolata">&lt;%= @site_name %&gt;</tspan>
      <tspan x="15" dy="1em" style="font-family:Inconsolata">&lt;%= @site_description %&gt;</tspan>
    </text>
    <rect x="10" y="130" width="460" height="50" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="150">
      <tspan x="15" style="opacity:0.5">Global Navigation Area</tspan>
      <tspan x="15" dy="1.2em" style="font-family:Inconsolata">&lt;%= @navigation %&gt;</tspan>
    </text>
    <rect x="10" y="190" width="460" height="80" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="210">
      <tspan x="15" style="opacity:0.5">Main Contents Area</tspan>
      <tspan x="15" dy="1.2em" style="font-family:Inconsolata">&lt;%= @contents %&gt;</tspan>
    </text>
    <rect x="10" y="280" width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="300">
      <tspan x="15" style="opacity:0.5">Site Footer</tspan>
    </text>
  </g>
</svg>

Defines the overall structure and look & feel of the website.

Description

### `templates/nav.html.eex`

<svg width="490" height="330">
  <g transform="translate(5,5)">
    <rect x="0" y="0" width="480" height="320" style="stroke:#808080;stroke-width:2px;fill:none"></rect>
    <rect x="0" y="0" width="480" height="30" style="stroke:none;fill:#808080"></rect>
    <g style="opacity:0.5" transform="translate(405,5)">
      <rect x="0" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="25" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="50" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
    </g>
    <rect x="10" y="40" width="460" height="80" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="60">
      <tspan x="15" style="opacity:0.5">Site Header</tspan>
      <tspan x="15" dy="1.2em" style="font-family:Inconsolata">&lt;%= @site_name %&gt;</tspan>
      <tspan x="15" dy="1em" style="font-family:Inconsolata">&lt;%= @site_description %&gt;</tspan>
    </text>
    <rect x="10" y="130" width="460" height="50" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="150">
      <tspan x="15" style="opacity:0.5">Global Navigation Area</tspan>
      <tspan x="15" dy="1.2em" style="font-family:Inconsolata">&lt;%= @navigation %&gt;</tspan>
    </text>
    <rect x="10" y="190" width="460" height="80" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="210">
      <tspan x="15" style="opacity:0.5">Main Contents Area</tspan>
      <tspan x="15" dy="1.2em" style="font-family:Inconsolata">&lt;%= @contents %&gt;</tspan>
    </text>
    <rect x="10" y="280" width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="300">
      <tspan x="15" style="opacity:0.5">Site Footer</tspan>
    </text>
  </g>
</svg>

Defines the appearance of the global navigation area.

Description

### `templates/page.html.eex`

<svg width="490" height="330">
  <g transform="translate(5,5)">
    <rect x="0" y="0" width="480" height="320" style="stroke:#808080;stroke-width:2px;fill:none"></rect>
    <rect x="0" y="0" width="480" height="30" style="stroke:none;fill:#808080"></rect>
    <g style="opacity:0.5" transform="translate(405,5)">
      <rect x="0" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="25" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="50" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
    </g>
    <rect x="10" y="40" width="460" height="80" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="60">
      <tspan x="15" style="opacity:0.5">Site Header</tspan>
      <tspan x="15" dy="1.2em" style="font-family:Inconsolata">&lt;%= @site_name %&gt;</tspan>
      <tspan x="15" dy="1em" style="font-family:Inconsolata">&lt;%= @site_description %&gt;</tspan>
    </text>
    <rect x="10" y="130" width="460" height="50" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="150">
      <tspan x="15" style="opacity:0.5">Global Navigation Area</tspan>
      <tspan x="15" dy="1.2em" style="font-family:Inconsolata">&lt;%= @navigation %&gt;</tspan>
    </text>
    <rect x="10" y="190" width="460" height="80" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="210">
      <tspan x="15" style="opacity:0.5">Main Contents Area</tspan>
      <tspan x="15" dy="1.2em" style="font-family:Inconsolata">&lt;%= @contents %&gt;</tspan>
    </text>
    <rect x="10" y="280" width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="300">
      <tspan x="15" style="opacity:0.5">Site Footer</tspan>
    </text>
  </g>
</svg>

### `templates/list.html.eex`

<svg width="490" height="330">
  <g transform="translate(5,5)">
    <rect x="0" y="0" width="480" height="320" style="stroke:#808080;stroke-width:2px;fill:none"></rect>
    <rect x="0" y="0" width="480" height="30" style="stroke:none;fill:#808080"></rect>
    <g style="opacity:0.5" transform="translate(405,5)">
      <rect x="0" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="25" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="50" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
    </g>
    <rect x="10" y="40" width="460" height="80" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="60">
      <tspan x="15" style="opacity:0.5">Site Header</tspan>
      <tspan x="15" dy="1.2em" style="font-family:Inconsolata">&lt;%= @site_name %&gt;</tspan>
      <tspan x="15" dy="1em" style="font-family:Inconsolata">&lt;%= @site_description %&gt;</tspan>
    </text>
    <rect x="10" y="130" width="460" height="50" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="150">
      <tspan x="15" style="opacity:0.5">Global Navigation Area</tspan>
      <tspan x="15" dy="1.2em" style="font-family:Inconsolata">&lt;%= @navigation %&gt;</tspan>
    </text>
    <rect x="10" y="190" width="460" height="80" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="210">
      <tspan x="15" style="opacity:0.5">Main Contents Area</tspan>
      <tspan x="15" dy="1.2em" style="font-family:Inconsolata">&lt;%= @contents %&gt;</tspan>
    </text>
    <rect x="10" y="280" width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="300">
      <tspan x="15" style="opacity:0.5">Site Footer</tspan>
    </text>
  </g>
</svg>

Defines the appearance of the blog post list.

Description

### `templates/post.html.eex`

<svg width="490" height="330">
  <g transform="translate(5,5)">
    <rect x="0" y="0" width="480" height="320" style="stroke:#808080;stroke-width:2px;fill:none"></rect>
    <rect x="0" y="0" width="480" height="30" style="stroke:none;fill:#808080"></rect>
    <g style="opacity:0.5" transform="translate(405,5)">
      <rect x="0" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="25" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
      <rect x="50" y="0" width="20" height="20" style="stroke:none;fill:white"></rect>
    </g>
    <rect x="10" y="40" width="460" height="80" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="60">
      <tspan x="15" style="opacity:0.5">Site Header</tspan>
      <tspan x="15" dy="1.2em" style="font-family:Inconsolata">&lt;%= @site_name %&gt;</tspan>
      <tspan x="15" dy="1em" style="font-family:Inconsolata">&lt;%= @site_description %&gt;</tspan>
    </text>
    <rect x="10" y="130" width="460" height="50" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="150">
      <tspan x="15" style="opacity:0.5">Global Navigation Area</tspan>
      <tspan x="15" dy="1.2em" style="font-family:Inconsolata">&lt;%= @navigation %&gt;</tspan>
    </text>
    <rect x="10" y="190" width="460" height="80" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="210">
      <tspan x="15" style="opacity:0.5">Main Contents Area</tspan>
      <tspan x="15" dy="1.2em" style="font-family:Inconsolata">&lt;%= @contents %&gt;</tspan>
    </text>
    <rect x="10" y="280" width="460" height="30" style="stroke:none;fill:rgba(0,0,0,0.1)"></rect>
    <text y="300">
      <tspan x="15" style="opacity:0.5">Site Footer</tspan>
    </text>
  </g>
</svg>

