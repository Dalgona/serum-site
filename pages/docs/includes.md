---
title: Includes
group: docs
order: 7
template: doc
---

Includes are special kind of EEx templates which can be included into other
templates or includes. This document explains how to create and use includes in
your Serum projects.

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
build when such cycles are detected.
