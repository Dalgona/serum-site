---
title: Includable Templates
group: docs
order: 6
---

[Back to the index](%page:docs/index)

# Includable Templates

Includable templates are special kind of EEx templates which are compiled and
rendered as HTML stubs before any other mandatory templates are processed. This
document explains how to create and use includes in your Serum project.

## Creating a new includable template

All includable template should be saved under `includes/` directory, and its
format is almost the same as regular template's. For example, if you want to
create an includable template for the navigation area of your website, you can
name the template `includes/nav.html.eex`, and its content would look like this:

```
<nav>
  <ul>
    <li><a href="<%= base() %>">Home</a>
    <li><a href="<%= page "about" %>">About Me</a>
    ...
  </ul>
</nav>
```

You can now "include" this includable template in other templates, such as
`templates/base.html.eex`, by using `include/1` template helper macro.

```
<html>
  ...
  <body>
    ... <%= include "nav" %> ...
  </body>
</html>
```

Note that the argument passed to `include/1` macro is the name of the includable
template file without `.html.eex` suffix.

<blockquote class="note">
  <header>NOTE:</header>
  <p>Includable templates cannot include other includable templates. They can
  only be included by regular templates located under <code>templates/</code>
  directory.</p>
</blockquote>
