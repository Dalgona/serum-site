---
title: Writing Blog Posts
group: docs
order: 5
---

[Back to the index](%page:docs/index)

# Writing Blog Posts

Serum processes blog posts differently compared to other pages, so that posts
have additional features such as tagging, list generation, etc.

Source files for blog posts should be saved under `posts` directory in your
project directory. File name is not important to Serum, but it is recommended to
name your files like below for pretty directory listings.

```
YYYY-MM-DD-<title-slug>.md
```

* `YYYY` &mdash; Four digits of the year. (e.g. `2016`)
* `MM` &mdash; Two digits of the month, zero padded. (e.g. `05`, `11`)
* `DD` &mdash; Two digits of the date, zero padded. (e.g. `03`, `27`)

## Providing Metadata

At the beginning of each post source file, you need to write the post header
to define metadata of each post. The format of the header area can be found in
[Adding Pages to Your Website](%page:docs/pages) document. Currently there are
three post metadata you can define:

* `title` (string, **required**)

    Defines the title of the blog post. This title will be displayed in the
    title bar of a web browser and post listings.

* `date` (date and time, **required**)

    Defines the date and time when the post is written. The accepted formats
    are `YYYY-MM-DD hh:mm:ss` and `YYYY-MM-DD`.

* `tags` (comma-separated strings, optional)

    Defines one or more tags.

Following is an example of a valid source markdown file. Note that Serum doesn't
care about spaces between a comma and tags.

```
---
title: About GenServer in Elixir
date: 2017-06-15 13:27:00
tags: elixir,otp, study , foo
---

Lorem ipsum dolor sit amet ...
```

If you want to leave a post untagged, just drop the `tags: ...` line.

```
---
title: About GenServer in Elixir
date: 2017-06-15 13:27:00
---

Lorem ipsum dolor sit amet ...
```

## Automatic Post Generation

You can generate a new blog post by running `serum newpost` task. You need to
be in a valid Serum project directory, that is, the `serum.json` file must
be present under your shell's current working directory. Run `serum help
newpost` for the detailed help message.
