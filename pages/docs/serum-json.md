# The serum.json File

[Back to the index](%pages:docs/index)

## The `serum.json` File

Every Serum project has its own `serum.json` file under the root of the project
directory. This file holds the project metadata and various project-scoped
settings. Below is the content of `serum.json` which is used to build *this
website*.

```language-javascript
{
  "site_name": "Serum",
  "site_description": "A simple static website generator",
  "base_url": "/",
  "author_email": "dalgona@hontou.moe",
  "author": "Dalgona.",
  "date_format": "{WDfull}, {D} {Mshort} {YYYY}",
  "preview_length": 200
}
```

These are a list of fields currently accepted by Serum:

* `site_name` (string, required)

    The name (or title) of the website. The value of this field is intended to
    be shown in the top of pages and the titlebar of a web browser.

* `site_description` (string, required)

    The short description (or subtitle) of the website. Could be shown under
    the banner area of each page.

* `base_url` (string, required)

    The root path of the website on the web server. For example, if you want to
    make the front page of the website accessible from `http://example.com/~user/site1/`,
    you must set `base_url` as `"~user/site1/"`.

    Also, you must append a slash (`/`) at the end of the path, or the build
    process will fail with JSON validation errors.

* `author` (string, required)

    The name of the author (or admin). The main purpose of this field is not
    specified, and it can be used anywhere in the templates (e.g. in the footer
    area of a webpage or in the header area of a blog post)

* `author_email` (string, required)

    The email address of the author. The main purpose of this field is not
    specified.

* `date_format` (string, *optional*)

    Determines how the date and time should be represented in blog pages and
    blog post lists. It uses the default formatting language of
    [Timex](https://github.com/bitwalker/timex). Please read
    [this documentation](https://hexdocs.pm/timex/Timex.Format.DateTime.Formatters.Default.html)
    for detailed explanation of the formatting syntax.

    If this field is not defined or invalid, `"{YYYY}-{0M}-{0D}"` will be used
    as a default format specifier.

* `preview_length` (integer, *optional*)

    Specifies the maximum length of the preview text of each blog post, which
    can be displayed in blog post lists. The default value is `200`.

    If you don't want the preview texts to be displayed, it's more recommended
    to set `preview_length` as zero (rather than removing this field from
    `serum.json`), as it disables additional operations for generating preview
    texts.

