---
title: Project Definition
group: docs
order: 3
---

[Back to the index](%page:docs/index)

# Project Definition

Every Serum project has a file named `serum.json` right under the project's
root directory. This file indicates that the containing directory is a Serum
project directory, and it contains various metadata and options which are used
while Serum builds the project. This document describes how to configure your
own `serum.json` file properly.

## Properties

Below is an example of the project definition file:

```lang-javascript
{
  "site_name": "Serum",
  "site_description": "A simple static website generator",
  "author": "John Doe",
  "author_email": "john.doe@example.com",
  "base_url": "/~john/sample/",

  "date_format": "{D} {Mshort} {YYYY}",
  "list_title_all": "All Posts",
  "list_title_tag": "Posts Tagged \"~s\"",
  "pagination": true,
  "posts_per_page": 10
}
```

### Website Identification

* `site_name` (string, **required**)

    The name (title) of your website.

* `site_description` (string, **required**)

    A short description of your website.

* `author` (string, **required**)

    The name of the website author.

* `author_email` (string, **required**)

    The email address of the website author.

* `base_url` (string, **required**)

    The root path of the website on the web server. For example, if
    you want to make the front page of the website accessible from
    `http://example.com/~user/site1/`, you must set this property to
    `/~user/site1/`.

    Make sure you append a slash  (`/`) at the end of the value,
    or build will fail with a JSON validation error.

### Blog Configuration

* `date_format` (string, optional)

    Determines how the date and time should be represented in blog posts and
    blog post lists. It uses the default formatting language of
    [Timex](https://github.com/bitwalker/timex). Please read
    [this documentation](https://hexdocs.pm/timex/Timex.Format.DateTime.Formatters.Default.html)
    for detailed explanation of the formatting syntax.

    If this property is not defined or invalid, Serum will fall back to
    `"{YYYY}-{0M}-{0D}"`.

* `list_title_all` (string, optional)

    Sets the title text of "all posts" list page. If not given, `"All Posts"`
    will be used as the default title string.

* `list_title_tag` (string, optional)

    Defines title text format of tag-filtered list page. The default format is
    `"Posts Tagged ~s"`. Note that you must put exactly one `~s` in the format
    string, as this is the placeholder for tag name. If you need to display
    `~` character in pages, insert `~~` (two consecutive tildes).

    <blockquote class="note">
      <header>NOTE</header>
      <p>`list_title_all` and `list_title_tag` properties will be removed in
      the future. You can still format the list title in the template
      (<code>templates/list.html.eex</code>).
    </blockquote>

* `pagination` (boolean, optional)<br>
  `posts_per_page` (integer, optional)

    `pagination` Determines if pagination will be used while building post
    lists. If set to `true`, each post list will be split into pages, and each
    page will have at most `posts_per_page` post entries.

    Default values of `pagination` and `posts_per_page` are `false` and `5`,
    respectively.
