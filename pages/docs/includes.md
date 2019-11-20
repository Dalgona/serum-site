---
title: Includes
group: docs
order: 7
template: doc
---

Includes are special kind of EEx templates which can be included into other
templates or includes. This document explains how to create and use includes in
your Serum projects.

<serum-toc start="2" end="3"></serum-toc>

## Creating a new include file

All includes should be saved under `includes/` directory, and its format is
almost the same as regular template's. For example, if you want to create an
include file for the navigation area of your website, you can name the template
`includes/nav.html.eex`, and its content would look like this:

```lang-html
<nav>
  <ul>
    <li><a href="<%= base() %>">Home</a>
    <li><a href="<%= page "about" %>">About Me</a>
    ...
  </ul>
</nav>
```

## Including contents

You can now include this template in other templates, such as
`templates/base.html.eex`, by using `include/1` template helper macro. Calls to
the `include/1` macro will be expanded into actual contents when the calling
template or include is being compiled.

```lang-html
<html>
  ...
  <body>
    ... <%= include "nav" %> ...
  </body>
</html>
```

Note that the argument passed to `include/1` macro is the name of the include
file without `.html.eex` extension.

### Limitations of `include/1`

Due to the nature of the compile-time include expansion, self or cyclic
inclusion is intentionally not allowed. That is, these following files will
fail to compile:

```lang-html
includes/self-include.html.eex:

<div>
  <!-- Self inclusion -->
  <%= include "self-include" %>
</div>
```

```lang-html
includes/cycle-1.html.eex:

<div class="depth-1">
  <%= include "cycle-2" %>
</div>
```

```lang-html
includes/cycle-2.html.eex:

<div class="depth-2">
  <!-- Cyclic inclusion -->
  <%= include "cycle-1" %>
</div>
```

These includes won't cause infinite loops though, because Serum will abort the
build when such cycles are detected. If you want to get recursive content
structures using includes, try using the `render/2` template helper which is
described below.

## Dynamically rendering contents

There is one more way to make use of your includes: The `render/2` template
helper. Unlike `include/1`, which expands the included contents during the
template compilation time, this helper dynamically renders contents of your
includes while your templates are being rendered into HTML documents.

The `render/2` helper expects the same argument which `include/1` does, but you
can optionally pass one more argument, `args`. `args` should be a keyword list
and it acts like "arguments" to the rendered template.

For example, there is a template fragment `includes/add.html.eex`:

```lang-html
<%
num1 = @args[:num1]
num2 = @args[:num2]
%>
<p>
  <%= num1 %> + <%= num2 %> = <%= num1 + num2 %>
</p>
```

Then you can render this template in another templates or includes:

```lang-html
<%= render "add", num1: 10, num2: 20 %>
```

Finally the resulting HTML document will look like this:

```lang-html
<p>
  10 + 20 = 30
<p>
```

The benefits of this template helper compared to `render/1` is that you can
introduce some variations to the rendered template fragment based on the
contents of a page or a blog post which is being rendered. Also, it is possible
to build recursive content structures by creating an include file which renders
itself within the template.

```lang-html
includes/recursive.html.eex:

<%
number = @args[:number]
max = @args[:max_number]
%>
<div>
  <p><%= number %><p>
  <%= if number < max do %>
    <%= render "recursive", number: number + 1, max_number: max %>
  <% end %>
</div>
```

The resulting HTML content will look like this:

```lang-html
<div>
  <p>1</p>
  <div>
    <p>2</p>
    <div>
      <p>3</p>
      ...
    </div>
  </div>
</div>
```

You need to write this kind of includes with caution, since Serum will enter an
infinite loop while rendering your templates if your includes are not carefully
written.
