---
title: Preview Text Generator Plugin
group: docs-plugin
order: 5
template: doc
---

`Serum.Plugins.PreviewGenerator` is a Serum plugin that generates preview texts
of pages and blog posts. This plugin is included in the `serum` package, so you
don't need to add an extra dependency to use this plugin.

## Using the Plugin

First, add this plugin to your `serum.exs`:

```lang-elixir
%{
  plugins: [
    # Use this plugin with default options.
    Serum.Plugins.PreviewGenerator

    # Or, use this plugin with custom options.
    {Serum.Plugins.PreviewGenerator, args: options}
  ]
}
```

By default, this plugin takes the text of the first paragraph (`<p>` tag) to
generate the preview text for each page or blog post. This behavior can be
customized; see the [Configuration section](#configuration) below for a list of
available options.

Generated preview texts will be saved in `:extras` map of each page or post,
with `"preview"` key. The name of key can also be customized.

```lang-markup
<%= for post <- @all_posts do %>
  <div class="post-list-item">
    <!-- ... -->
    <p class="preview"><%= post.extras["preview"]</p>
  </div>
<% end %>
```

If a page or a blog post already has `extras["preview"]` (or other key
specified by the `:preview_key` option), its value will be used instead.

```
---
title: Sample Blog Post
date: 2020-07-17
tags: sample
preview: This string will be used instead as a preview text of this post.
---

Lorem ipsum dolor sit amet, ...
```

## Configuration

- `:length`

  A keyword list which determines the maximum length of each preview text.
  Each item of this keyword list is called a "length spec," and a length
  spec should look like one of the followings:

  - `{:chars, max_chars}` - Limits the maximum length of preview texts to
    `max_chars` characters.

  - `{:words, max_words}` - Limits the maximum length of preview texts to
    `max_words` words. Each word is a group of characters splitted by one
    or more whitespace characters.

  - `{:paragraphs, max_paragraphs}` - Limits the maximum length of preview
    texts to `max_paragraphs` paragraphs. This option assumes that contents
    of each page or blog post is well-organized using `<p>` tags. Otherwise
    this plugin may produce undesired results.

  This keyword list can have more than one length specs. In that case, this
  plugin will "sample" multiple preview texts for each page or blog post,
  and it will pick the shortest one as a final preview text.

  Defaults to `[paragraphs: 1]`.

- `:preview_key`

    A string which will be used as an alternative key for storing generated
    preview texts. For example, if you set `:preview_key` to `"summary"`, you
    will be able to access the preview text in your templates like this:

    ```lang-markup
  <% %Serum.Post{} = post %>
  <p><%= post.extras["summary"] %></p>
    ```

  Defaults to `"preview"`. If any value is given, any leading or trailing
  whitespaces will be trimmed.

### Configuration Example

```lang-elixir
# In your serum.exs:
%{
  plugins: [
    {Serum.Plugins.PreviewGenerator,
     args: [
       length: [paragraphs: 1, chars: 250],
       preview_key: "preview_text"
     ]}
  ]
}
```
