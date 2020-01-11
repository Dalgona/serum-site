---
title: Sitemap Generator Plugin
group: docs-plugin
order: 3
template: doc
---

Use `Serum.Plugins.SitemapGenerator` Plugin to generate a `sitemap.xml` file.
This file can later be used to help search engines index your blog posts.

This plugin is included in the `serum` package, so you don't need to add an
extra dependency to use this plugin.

```lang-elixir
# serum.exs:
%{
  server_root: "https://example.io",
  plugins: [
    {Serum.Plugins.SitemapGenerator, only: :prod}
  ]
}
```

By default, this plugin generates sitemap entries only for your blog posts.
You can change this behavior by setting the `:for` option.

```lang-elixir
# serum.exs:
%{
  plugins: [
    # Generate sitemap entries only for pages.
    {Serum.Plugins.SitemapGenerator, args: [for: [:pages]]}

    # Same as above.
    {Serum.Plugins.SitemapGenerator, args: [for: :pages]}

    # Generate sitemap entries for both pages and posts
    {Serum.Plugins.SitemapGenerator, args: [for: [:pages, :posts]]}
  ]
}
```
