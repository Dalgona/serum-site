---
title: Getting Started
group: main-menu
order: 2
---

# Getting Started

## Requirements

* **Elixir 1.7.0 or newer**

    Please visit [the official Elixir website](http://elixir-lang.org) for
    installation instructions.

* **UNIX-based operating system or Microsoft Windows**

    Serum has not been thoroughly tested on Microsoft Windows, but most of
    functions should work. If you have any issue with Serum on Windows, please
    open an issue on GitHub. Also, if you are running the latest update of
    Windows 10, you could try using Serum on Windows Subsystem for Linux (WSL).

* To enable the automatic rebuild feature, you'll need to install an external
  package depending on your operating system.

    * For Linux-based OS (including WSL): Install `inotify-tools` with the
      package manager provided by your Linux distribution.
    * For macOS: Install `fsevent_watch` with brew.

## Installing Serum

First, run the following command in your shell to install the Serum installer
archive under your home directory.

```
$ mix archive.install hex serum_new
```

Now, you can create a new Serum project using `mix serum.new` command
from anywhere.

## My First Website

Now you can create and test your first website in a few minutes.

First, run `mix serum.new <PATH>` to create a new Serum project.

```
$ mix serum.new /path/to/project
```

Enter your project directory and install Serum to your new project.

```
$ cd /path/to/project
$ mix do deps.get, deps.compile
```

Try building your new website with `serum.build` Mix task. Unless the `-o`
option is given, the website will be built at `/path/to/project/site`.

```
$ MIX_ENV=prod mix serum.build
```

Or you can test your project right away by running `serum.server`. The Serum
development server is useful when you need to check your website before
publishing it.

```
$ mix serum.server [--port <PORT>]
```

> Note 1
> {: .title }
>
> The server will listen on port 8080 if `--port` (or `-p`) option is
> not given.
{: .note }

> Note 2
> {: .title }
>
> Always type the `quit` command, instead of pressing <kbd>Ctrl</kbd> +
> <kbd>C</kbd>, to quit the development server.
{: .note }

Open a web browser and navigate to your website (i.e. `http://localhost`).
You should be able to see a web page like this:

![Your new website seen in a web browser](%media:getting-started/new-website.png)

You are not the only one who thinks it looks ugly. There are two ways to make
your website look nicer: One is to modify the templates and add CSS files to
get your own look and feel, and the other is to use **Serum themes**. We are
going to use a theme this time. _Essence_ is a Serum theme which makes your
website look like... "this one."

In order to use a Serum theme, you need to add a theme package to your
dependencies list in `mix.exs`.

```lang-elixir
def deps do
  [
    # Append this line
    {:serum_theme_essence, "~> 1.0"}
  ]
end
```

Fetch the dependency using `mix`.

```
$ mix deps.get
```

Then, edit your `serum.exs` to configure your project to use
`Serum.Themes.Essence` as a theme provider module.

```lang-elixir
%{
  # Append this line
  theme: Serum.Themes.Essence
}
```

Any resources provided by a theme are overridden by files in your project
directory. So you will need to remove the `templates/` directory, or move that
directory to somewhere outside your project directory.

Now, start the Serum development server to check your website.

```
$ mix serum.server
```

You should be able to see a page with _Essence_ theme applied this time:

![Your new website seen in a web browser, with a theme applied](%media:getting-started/new-website-with-theme.png)

Congratulations! You have successfully built your first website with Serum.
Now continue reading the [docs](%page:docs/index) to customize your project and
fill your website with your own contents.
