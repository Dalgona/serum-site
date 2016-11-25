# Adding Pages to Your Website

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

For successful build, you need to provide metadata in the first line of every
page source files. This special one line is neither processed by the markdown
processor nor displayed on web browsers, but it can be used to set text
displayed in the title bar of web browsers. The first line of each source file
must contain a pound sign and a space (`"# "`) at the very beginning of the
line, and the title of the page after those two characters. Below is an example
of valid page source file.

```lang-markdown
# Welcome to My Website

... contents (in markdown or HTML) ...
```

