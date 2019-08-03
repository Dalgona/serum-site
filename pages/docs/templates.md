---
title: Templates
group: docs
order: 6
---

[Back to the index](%page:docs/index)

# Templates

Serum generates HTML pages by applying templates to your contents. Templates
are _Embedded Elixir (EEx)_ files. Please read [the official EEx
documentation](https://hexdocs.pm/eex) for more information about EEx.

<div><serum-toc start="2" end="4"></serum-toc></div>

## List of Required Templates

Unless provided by Serum [themes](https://hexdocs.pm/serum/Serum.Theme.html),
these four template files must be present in the `templates/` directory, and
their names must not be changed.

### `base.html.eex`

This template defines the overall structure and visual layout of the page. That
is, you should place the root `<html>` tag in this template.

### `page.html.eex`

This template simply wraps the contents of your pages. Any file in the `pages/`
directory is processed, rendered as HTML, and its contents are merged into
this template.

### `post.html.eex`

This template is used to display the contents and metadata of your blog posts.

### `list.html.eex`

This template defines how a list of blog posts is displayed.

## Custom Templates

Since Serum v1.2.0, you can use custom templates for your pages and blog posts.
Simply add template files with names of your choice, `foo.html.eex` for
example. Then you can have your pages or blog posts rendered using your custom
templates by setting `template` property in the page or post header area:

```
---
title: Example Page
label: Example
group: sample
order: 3
template: foo
---

This page will be rendered using `foo.html.eex` template,
instead of `page.html.eex`!
```

## Variables

Serum provides a number of variables for use in templates described above. Some
of them are always available and constant all the time, and some of them are
not available in all templates and may have different values depending on the
page being rendered at the moment.

### Common Variables

These variables are available in any template and have constant values.

#### `@site` - Website Information

```lang-elixir
%{
  name: "Serum",
  description: "A simple static website generator",
  author: "Dalgona.",
  author_email: "dalgona@hontou.moe",
  server_root: "https://dalgona.github.io",
  base_url: "/Serum/"
}
```

```lang-html
<!-- Usage in EEx -->
<header>
  <h1><%= @site.name %></h1>
  <p><%= @site.description %></p>
</header>
```

The `@site` variable contains the information about your website. You can
customize its values by editing the
[`serum.exs` file.](%page:docs/project-definition)

#### `@all_pages` - List of All Pages

```lang-elixir
[
  %{
    type: :page,
    title: "Welcome",
    label: "Home",
    group: "main-menu",
    order: "1",
    url: "/Serum/index.html"
  },
  ...
]
```

```lang-html
<!-- Usage in EEx -->
<ul>
  <%= for page <- @all_pages, page.group === "main-menu" do %>
    <li><a href="page.url" title="<%= page.title %>"><%= page.label %></a></li>
  <% end %>
</ul>
```

The `@all_pages` variable contains a list of all pages, sorted by `order` in
ascending order. You can filter this list by `group` to make a customized
navigation list or a table of contents.

#### `@all_posts` - List of All Posts

```lang-elixir
[
  %{
    type: :post,
    title: "My First Post",
    date: "Thursday, 18 April 2019",
    raw_date: {{2019, 4, 18}, {10, 36, 27}},
    preview: "The quick brown fox jumps over ...",
    tags: [
      %{name: "Tag1", list_url: "/Serum/tags/Tag1/"},
      %{name: "Tag3", list_url: "/Serum/tags/Tag3/"}
    ],
    url: "/Serum/posts/2019-04-18-my-first-post.html"
  },
  ...
]
```

```lang-html
<!-- Usage in EEx -->
<h2>Recent Posts</h2>
<ul>
  <%= for post <- Enum.take(@all_posts, 5) do>
    <li><a href="<%= post.url %>"><%= post.title %></a></li>
  <% end %>
</li>
```

The `@all_posts` variable contains a list of all blog posts, sorted by
`raw_date`. The newest one comes first.

#### `@all_tags` - List of All Tags

```lang-elixir
[
  {%{name: "Tag1", list_url: "/Serum/tags/Tag1/"}, 3},
  {%{name: "Tag2", list_url: "/Serum/tags/Tag2/"}, 7},
  {%{name: "Tag3", list_url: "/Serum/tags/Tag3/"}, 5},
  ...
]
```

```lang-html
<!-- Usage in EEx -->
<%= for {tag, count} <- @all_tags do>
  <a href="<%= tag.list_url %>">
    <%= tag.name %> <span class="count"><%= count %></span>
  </a>
<% end %>
```

The `@all_tags` variable contains a list of 2-element tuple, which consists of
a tag and the number of blog posts associated with the tag. The list is not
sorted; you can use it as is to make a "tag cloud," or you can sort the list
by the use count to make a "top tags" list.

### Page-specific Variables

These variables have different values depending on the page being rendered at
the moment, and may not be available in some templates.

#### `@page` - Current Page

The `@page` variable contains a metadata of the page being rendered. When
rendering a page or a blog post, the type of its value is almost the same as
the type of an element of [`@all_pages`](#s_2.1.2) or an element of
[`@all_posts`](#s_2.1.3), but there is additional `:images` key, which value
is a list of URLs of images used inside the page or the blog post.

When rendering a blog post list, its value looks like the following:

```lang-elixir
%{
  type: :list,

  # This is set to `nil` when a list of all posts is being rendered.
  tag: %{name: "Tag1", list_url: "/Serum/tags/Tag1/"},

  current_page: 2,
  max_page: 5,
  title: "Posts tagged \"Tag1\"",
  posts: [ ... ],
  url: "/Serum/tags/Tag1/page-2.html",
  images: [],

  # This is set to `nil` if current_page == 1.
  prev_url: "/Serum/tags/Tag1/page-1.html",

  # This is set to `nil` if current_page == max_page.
  next_url: "/Serum/tags/Tag1/page-3.html"
}
```

#### `@contents` - Page Contents

The `@contents` variable contains a rendered HTML content as a binary. When
used in `page.html.eex`, this is the contents of your page. When used in
`post.html.eex`, this is the main text of your blog post. Finally, when used in
`base.html.eex`, this is the rendered content of `page.html.eex`,
`post.html.eex`, or `list.html.eex`. Note that this variable is not available
in `list.html.eex`.

## Helper Macros

[`Serum.Template.Helpers`](https://hexdocs.pm/serum/Serum.Template.Helpers.html)
module provides some helper macros for use in your templates. This module is
automatically `require`d and `import`ed when templates are compiled, so you
usually don't need to write any code in order to use these macros.

### `base/0`

This is equivalent to `@site.base_url`.

```lang-html
<a href="<%= base() %>">Home</a>

<!-- The above code expands to: -->
<a href="/base/url/">Home</a>
```

### `base/1`

Returns the URL relative to `@site.base_url`.

```lang-html
<a href="<%= base("/path/to/some_file.txt") %>">File</a>

<!-- The above code expands to: -->
<a href="/base/url/path/to/some_file.txt">File</a>
```

### `page/1`

Returns the URL of the given page.

```lang-html
<a href="<%= page("docs/index") %>">Serum Docs</a>

<!-- The above code expands to: -->
<a href="/base/url/docs/index.html">Serum Docs</a>
```

Note that the trailing `.html` is automatically appended.

### `post/1`

Returns the URL of the given blog post.

```lang-html
<a href="<%= post("2019-04-18-hello-world") %>">Hello, world!</a>

<!-- The above code expands to: -->
<a href="/base/url/posts/2019-04-18-hello-world.html">Hello, world!</a>
```

### `asset/1`

Returns the URL of the given asset.

```lang-html
<img src="<%= asset("images/icon-warning.png") %>">

<!-- The above code expands to: -->
<img src="/base/url/assets/images/icon-warning.png">
```

### `include/1`

Includes the given template saved in `includes/` directory. See [Includable
Templates](%page:docs/includes) for more information about including templates.

Actually this macro is not defined in the `Serum.Template.Helpers` module.
The Serum template processor traverses the compiled template code (which is an
Elixir AST), and directly expands the call to this macro into the corresponding
includable template.

```lang-html
<!-- includes/nav.html.eex -->
<nav>
  <ul>
    <li>Home</li>
    <li>About</li>
    <li>Posts</li>
  </ul>
</nav>
```

```lang-html
<!-- part of templates/base.html.eex -->
<div class="navigation">
<%= include("nav") %>
</div>

<!-- The above code expands to: -->
<div class="navigation">
<nav>
  <ul>
    <li>Home</li>
    <li>About</li>
    <li>Posts</li>
  </ul>
</nav>
</div>
```
