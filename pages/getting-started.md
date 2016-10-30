## Getting Started

### Requirement

* Elixir 1.2 or newer

    Please visit [the official Elixir website](elixir-lang.org) for
    installation instructions.

### Obtaining the Source Code

You can clone the Serum repository from
[GitHub](https://github.com/Dalgona/Serum). Currently there are two branches
which are considered to be suitable for daily use: `master` and
`dev/autobuild`.

* `master`: The main development line. Serum on this branch does not support
automatic rebuild when running the development server. Tested manually on
macOS and Debian GNU/Linux.
* `dev/autobuild`: Same as `master` with automatic rebuild support. This
feature was implemented by using [synrc/fs](https://github.com/synrc/fs).
Tested manually on Debian GNU/Linux with inotify-tools installed as a backend.
The Serum development server **fails** on macOS with fsevent.
[(Related issue)](https://github.com/Dalgona/Serum/issues/3)

### Building Serum

1. Use `git` to clone the repository.

        % git clone https://github.com/Dalgona/Serum.git

2. Type `make` to automatically fetch the dependencies and build Serum escript.
If the build succeeded, you will see `serum` executable in the PWD.

3. (Optional) Execute `make install` to copy the program into `/usr/local/bin/`
directory, so that you can use Serum from anywhere.

### My First Website

Once you have successfully installed Serum, you can create and test your first
website with a few keystrokes.

1. Execute `serum init [directory]` to create a new Serum project.

        % serum init /path/to/project

2. CD into your project directory and type `serum build` to build your project.

        % cd /path/to/project
        % serum build

    When the build completes, the root of your website will be created under
    `/path/to/project/site` directory. Copy the contents of this directory to
    your own www directory, or upload them to the external web hosting service.

3. Or, you can just test your project right away by running `serum server`.
The Serum development server is useful when you need to check your website
before publishing it.

        % serum server --port <port>

    **NOTE 1:** The server will listen on port 8080 if `--port` (or `-p`)
    option is not specified.

    **NOTE 2:** Always type `quit` command instead of pressing Control-C to
    quit the development server.

4. Open a web brower and navigate to your website. That's it!

Congratulations! Yet it looks empty, you have successfully created and built
your first website with Serum. Now continue reading
[documentations](%pages:docs/index) to customize your project and fill your
website with your own contents.

<!--### Configuration

When you initialize a new project, Serum will create directory/file structure described below:

    /path/to/project/
    |-- serum.json
    |-- posts
    |-- pages
    |   |-- pages.json
    |   +-- index.md
    |-- templates
    |   |-- base.html.eex
    |   |-- list.html.eex
    |   |-- post.html.eex
    |   +-- nav.html.eex
    |-- assets
    |   |-- css
    |   |-- js
    |   +-- images
    +-- media

`serum.json` holds information about the current project, which looks like:

    {
      "site_name": "Sample Website",
      "site_description": "This website shows what Serum can do.",
      "author": "Dalgona.",
      "author_email": "dalgona@hontou.moe",
      "base_url": "/serum-sample/"
    }

* `site_name` &mdash; The title of your website.
* `site_description` &mdash; The description of your website. Can be used as a subtitle.
* `author_name` &mdash; The name of author of blog posts.
* `author_email` &mdash; The email address of the author.
* `base_url` &mdash; The base path of your web site. I recommend you to put a trailing `/`.

> These attributes can be referenced by using template tags like `<%= @site_name %>`.

### Adding Pages to Your Website

Inside `pages/` directory you can put source codes for pages other than blog posts. Serum accepts both markdown files(names should end with `.md`) and HTML files(names should end with `.html`), and those files will be applied by `templates/page.html.eex` template, and then combined with `templates/base.html.eex` template and will produce output files into the root directory of website(`site/`).

To display your pages properly, you also need to configure `pages.json` inside `pages/` directory. This file contains titles and other attributes of each page, which look like:

    [
      // ...,
      {
        "name": "index",
        "type": "md",
        "title": "Welcome",
        "menu": false,
        "menu_text": "Home",
        "menu_icon": "assets/images/menu_index.png"
      },
      // ...
    ]

* `name` &mdash; The filename of page source file.
* `type` &mdash; The extension of page source file. Only `"html"` and `"md"` are accepted.
* `title` &mdash; The text that appears on the titlebar of your web browser.
* `menu` &mdash; Sets whether the link of specified page appears in the navigation area. Ignored by some templates.
* `menu_text` &mdash; The link text that appears on the navigation area.
* `menu_icon` &mdash; The path of image file that appears on the navigation area. Ignored by some templates.

> If you do not define properties for a page in `pages.json`, that page WILL NOT included in the website when building the project, even if the source code for that page exists under `pages/` directory.

### Templates

Serum generates web pages by applying four templates: `base.html.eex`, `list.html.eex`, `post.html.eex` and `nav.html.eex`. When the new project is created, the minimally implemented templates are also created under `templates/` directory, which still have all template variables provided by Serum. So you can create your own templates base on those files. The role of each templates are described below:

* `base.html.eex` &mdash; Defines the overall structure and design of your website. The HTML root tag is located inside this template.
* `list.html.eex` &mdash; Template for the list of all registered blog posts.
* `post.html.eex` &mdash; Template for blog posts.
* `page.html.eex` &mdash; Template for pages other than blog posts.
* `nav.html.eex` &mdash; Template for the navigation area of the website.

### Assets and Media

You can put all resources such as stylesheets, scripts and images under `assets/` directory. Serum also creates `css`, `js` `images` directory under `assets/` for the convenience, but it does not matter even if you modify the directory structure as needed. When the site is being built, `assets/` directory itself is copied into `site/assets/` directory, so you can reference the resources like this: `href="<%= @base_url %>assets/css/style.css"`.

All pictures referenced by blog posts should be saved under `media/` directory. Then you can point to that media in the markdown by using `%media:` syntax. For example, the code `![Image](%media:foo.jpg)` will be expanded into `<img src="/base/url/media/foo.jpg" alt="Image">`.

> **NOTE**: Due to the limitations caused by the implementation, using `"` character in the source URL of the image may result in unexpected behavior.
-->
