---
title: Serum Plugin Overview
group: docs-plugin
order: 1
template: doc
---

`Serum.Plugin` is a behaviour that all Serum plugin module must implement.
This behaviour allows experienced Serum users and developers to make their own
Serum plugins which can extend the functionality of Serum.

A Serum plugin can...

- Alter contents of input or output files,
- Execute arbitrary codes during some stages of site building,
- And optionally provide extra Mix tasks that extend Serum.

## For Plugin Developers

In order for a Serum plugin to work, you must implement at least these
six callbacks:

- `name/0`
- `version/0`
- `elixir/0`
- `serum/0`
- `description/0`
- `implements/0`

Also there are a number of other callbacks you can optionally implement.
Read [the documentation for this
module](https://hexdocs.pm/serum/Serum.Plugin.html#callbacks) to see which
callbacks you can implement and what each callback should do.

## For Plugin Users

To enable Serum plugins, add a `plugins` key to your `serum.exs`(if it does
not exist), and put names of Serum plugin modules there.

```lang-elixir
%{
  plugins: [
    Awesome.Serum.Plugin,
    Great.Serum.Plugin
  ]
}
```

You can also restrict some plugins to run only in specific Mix environments.
For example, if plugins are configured like the code below, only
`Awesome.Serum.Plugin` plugin will be loaded when `MIX_ENV` is set to `prod`.

```lang-elixir
%{
  plugins: [
    Awesome.Serum.Plugin,
    {Great.Serum.Plugin, only: :dev},
    {Another.Serum.Plugin, only: [:dev, :test]}
  ]
}
```

Finally, The order of plugins is important, as Serum will call plugins one by
one, from the first item to the last one. Therefore these two configurations
below may produce different results.

```lang-elixir
# Configuration 1:
%{
  plugins: [
    Awesome.Serum.Plugin,
    Another.Serum.Plugin
  ]
}

# Configuration 2:
%{
  plugins: [
    Another.Serum.Plugin,
    Awesome.Serum.Plugin
  ]
}
```
