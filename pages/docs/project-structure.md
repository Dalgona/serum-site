---
title: Project Structure
group: docs
order: 2
template: doc
---

When you create a new Serum project by running `mix serum.new`, the following
directories and files are created.

<pre>
<code><span style="color:#4078c0">/path/to/project/</span>
├── <b>serum.exs</b>
├── <span style="color:#4078c0">pages/</span>
│   └── <b>index.md</b>
├── <span style="color:#4078c0">posts/</span>
├── <span style="color:#4078c0">templates/</span>
│   ├── <b>base.html.eex</b>
│   ├── <b>list.html.eex</b>
│   ├── <b>page.html.eex</b>
│   └── <b>post.html.eex</b>
├── <span style="color:#4078c0">includes/</span>
│   └── <b>nav.html.eex</b>
├── <span style="color:#4078c0">assets/</span>
│   ├── <span style="color:#4078c0">css/</span>
│   ├── <span style="color:#4078c0">js/</span>
│   └── <span style="color:#4078c0">images/</span>
├── <span style="color:#4078c0">media/</span>
├── <span style="color:#4078c0">files/</span>
└── <b>mix.exs</b>
</code>
</pre>

## `serum.exs` (or `serum.json`)

This file indicates that the containing directory is a Serum project. And it
contains various metadata and options which are used while Serum builds the
project. See [Project Definition](%page:docs/project_definition) document for
more information.

## `pages` Directory

This is where source files for your pages should be saved. You may create
subdirectories to organize your pages hierarchically.
[Adding Pages to Your Website](%page:docs/pages) document discusses how to add
new pages in your website.

## `posts` Directory

Serum processes blog posts differently, compared to ordinary pages. So they
should be saved into a separate directory. Read
[Writing Blog Posts](%page:docs/posts) document to learn more about blogging
with Serum. It is safe to remove this directory if you are not going to write
any blog post.

## `templates` Directory

Templates define overall layout of your website. There are four templates you
must define. [Templates](%page:docs/templates) document describes each of them.

## `includes` Directory

Includable templates ("includes") are a special kind of templates which can be
included in regular templates or pages in `.html.eex` format.
Read [Includable Templates](%page:docs/includes) document to learn more. You
can remove this directory if you don't need to use any includable templates.

## `assets` Directory

Assets are static files which are used throughout the website, such as
stylesheets, JavaScript files, background images, and so on. You may remove
this directory if your website is supposed to have no assets at all. Read
[Assets and Media](%page:docs/asset_media) document for more information.

## `media` Directory

Media files are static files which are referenced by a few pages or blog posts,
such as pictures, video clips, audio files, etc. You may remove this directory
if none of your pages or blog posts uses media files. Read
[Assets and Media](%page:docs/asset_media) document for more information.

## `files` Directory

Files or directories in this directory will be copied to the root directory of
your website after Serum has successfully built your project. This is useful,
for example, when you need to set favicons for your website.

## `mix.exs`

A Serum project is also a Mix project. You need to keep this file in order to
install and use Serum. You will also need this file to manage dependencies for
your own codes.

Note that some files or directories may be created by Mix to store dependencies
and build artifacts.
