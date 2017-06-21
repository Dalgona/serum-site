---
title: Special Syntax for Markdown
group: docs
order: 8
---

[Back to the index](%pages:docs/index)

# Special Syntax for Markdown

Most of the time you will need to add links to other pages or blog posts
within your website, or you are going to include some media files to your pages
or posts. Actually, you can achieve this just by hard-coding the full path like
this:

```lang-markdown
* [Documentation](/base/url/docs/index.html)
* [My First Post](/base/url/posts/YYYY-MM-DD-hhmm-first-post.html)

![Logo](/base/url/media/logo.png)
```

The above method works well. However, if the base URL changes for some reason,
it would be painful to replace all occurrence of previous base URL to the new
one. To prevent this problem, Serum provides some special notations for use in
markdown files to reference pages or media files without worrying about the
base URL:

```lang-markdown
* [Documentation](%pages:docs/index)
* [My First Post](%posts:YYYY-MM-DD-hhmm-first-post)

![Logo](%media:logo.png)
```

This code is quite self-explanatory. The only one thing you need to remember
is that you should not append ".html" at the end when using `%pages:` or
`%posts:` notation.

