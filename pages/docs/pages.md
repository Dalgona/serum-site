---
title: Adding Pages to Your Website
---

[Back to the index](%pages:docs/index)

# Adding Pages to Your Website

All source codes for your pages should be located under `pages/` directory.
Serum scans this directory and its subdirectories recursively, so you may have
the page hierarchy as wide as you want, and as deep as you want.

Currently only two types of source files are supported by Serum: Markdown and
HTML. The name of all markdown file must end with `.md` and the name of all
HTML file must end with `.html`, as Serum determines source type by examining
filename extensions. Although almost all HTML files are accepted by markdown
processor, it is recommended to save HTML documents as HTML file because the
extra procedure of markdown processing can be skipped.

For successful build, you need to provide metadata at the beginning of every
page source files. The beginning and the end of each page header are delimited
by a `---` line, and between these two lines, each metadata is defined in a line
in the form of `<key>: <value>`. Currently, there is only one metadata you can
define:

* `title` (string, required)

    Defines the text displayed in the title bar of a web browser.

Below is an example of a valid page source file.

```lang-markdown
---
title: Welcome to My Website
---

... contents (in markdown or HTML) ...
```

