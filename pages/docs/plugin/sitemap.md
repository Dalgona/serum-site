---
title: Sitemap Generator Plugin
group: docs-plugin
order: 3
---

[Back to the index](%page:docs/index)

# Sitemap Generator Plugin

Use `Serum.Plugins.SitemapGenerator` Plugin to have a `sitemap.xml` and the
corresponding `robots.txt` generated. These files can later be used to help
search engines index your blog posts. This plugin is included in the `serum`
package, so you don't need to add an extra dependency to use this plugin.

```lang-elixir
# serum.exs:
%{
  server_root: "https://example.io",
  plugins: [
    {Serum.Plugins.SitemapGenerator, only: :prod}
  ]
}
```
