---
title: Writing Blog Posts
---

[Back to the index](%pages:docs/index)

# Writing Blog Posts

Serum is a blog-aware static website generator and it provides an easy way to
write blog posts. All you need to do is naming the markdown file properly and
writing the first two lines of each markdown file appropriately.

## Source File Naming Rules

All blog post source files should be located under `posts` subdirectory of your
project directory, and should be named according to the following format:

```
YYYY-MM-DD-hhmm-<title-slug>.md
```

The first four parts delimited by a hypen (`-`) represents the date of the blog
post.

* `YYYY` &mdash; Four digits of the year. (e.g. `2016`)
* `MM` &mdash; Two digits of the month, zero padded. (e.g. `05`, `11`)
* `DD` &mdash; Two digits of the date, zero padded. (e.g. `03`, `27`)
* `hhmm` &mdash; Two digits of the hours in 24-hour format (0-23), followed by
  two digits of the minutes (0-59). Each field is zero padded.
  (e.g. `0947`, `2205`)

Followings are examples of valid source file names:

```
2016-07-28-1945-hello-world.md
2016-09-14-1027-about-gen-server-in-elixir.md
2016-10-06-1409-serum-is-awesome.md
```

## Providing Metadata

At the beginning of each post source file, you need to write the post header
to define metadata of each post. The format of header area can be found in
[Adding Pages to Your Website](%pages:docs/pages) documentation. Currently there
are two post metadata you can define:

* `title` (string, required)

    Defines the title of the blog post. This title will be displayed in the
    title bar of a web browser and post listings.

* `tags` (comma-separated strings, *optional*)

    Defines one or more tags.

Following is an example of a valid source markdown file. Note that Serum doesn't
care about spaces between a comma and tags.

```language-markdown
---
title: About GenServer in Elixir
tags: elixir,otp, study , foo
---

Lorem ipsum dolor sit amet ...
```

If you want to leave a post untagged, just drop the `tags: ...` line.

```language-markdown
---
title: About GenServer in Elixir
---

Lorem ipsum dolor sit amet ...
```
