---
title: Assets and Media
group: docs
order: 7
---

[Back to the index](%pages:docs/index)

# Assets and Media

Each Serum project can also have two additional directories: `assets` and
`media`. The assets directory is used for storing stylesheets, javascript
sources and images which are used globally within the project. While the media
directory is used to store images, audio or other media files which are
referenced by some pages or blog posts. These directories and their contents
will be copied into the destination directory when the project is built.

When a new Serum project is being initialized, these two directories are also
automatically created. However you may remove those directories if you plan to
have no design assets or media files. In that case, Serum will warn you that
either assets or media directory is missing.

Serum also creates `css`, `js` and `images` directories under the `assets`
directory. This is just for your convenience, therefore you are free to change
the inner directory structure to fit your needs.

You can reference any assets from any template by using `asset/1` template
helper macro.

```html
<!-- Example: -->
<link rel="stylesheet" href="<%= asset "css/style.css" %>">
```

By doing this, you can avoid hard-coding the full URL in every reference to
your assets.

<blockquote class="note">
  <header>NOTE</header>
  <p>You can also refer to any media files in templates by using
  <code>base/1</code> macro. However, it's not recommended to do this because
  media files are intended to be used in a specific page or blog post.</p>
</blockquote>
