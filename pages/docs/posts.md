===
title: Writing Blog Posts
===

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

The first two lines of each markdown file are reserved for the post metadata.
In the first line is the title of the post, and in the next line is a list of
tags delimited by a comma (`,`). These two lines must start with a pound sign
directly followed by a space (`'# '`).

Following is an example of a valid source markdown file:

```language-markdown
# About GenServer in Elixir
# elixir,otp,study

Lorem ipsum dolor sit amet ...
```

Serum doesn't care about spaces between a comma and the next tag, so below is
also a valid tag line:

```language-markdown
# elixir, otp, study
```

Even if a post is not supposed to have any tag, you should leave the pound sign
in the second line. In this case, the trailing space right after the pound sign
is not required.

So this markdown file is valid:

```language-markdown
# My First Post!
#

Lorem ipsum dolor sit amet ...
```

While this one is _invalid_:

```language-markdown
# My First Post!

Lorem ipsum dolor sit amet ...
```

<blockquote class="note">
  <header>NOTE</header>
  <p>Although the first two lines of source markdown files look like "Heading 1"
  block, this part is not parsed as a markdown code. Every special character you
  put in here will be displayed as is.</p>
</blockquote>
