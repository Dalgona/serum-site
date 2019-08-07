---
title: Live Reloader Plugin
group: docs-plugin
order: 4
template: doc
---

This plugin injects the live reloader script at the end of generated HTML
files. This plugin is included in the `serum` package, so you don't need to
add an extra dependency to use this plugin.

Once the page is loaded inside your web browser, the injected script tries to
connect to the Serum development server via WebSocket. When the page receives
`"reload"` message from the server, it refreshes the current page.

If you disable this plugin, you need to manually refresh the page after you
made some changes to your source files.

## Using the Plugin

This plugin is useless without the Serum development server. So you usually
don't want the script injected into pages when the server is not running. Let
the plugin run only when `Mix.env()` is `dev`, and run `MIX_ENV=prod mix
serum.build` when you are ready to publish your website.

```lang-elixir
# serum.exs:
%{
  plugins: [
    {Serum.Plugins.LiveReloader, only: :dev}
  ]
}
```
