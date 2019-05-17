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

1. Run `mix serum.new <PATH>` to create a new Serum project.

    ```
    $ mix serum.new /path/to/project
    ```

2. Enter your project directory and install Serum into your new project.

    ```
    $ cd /path/to/project
    $ mix do deps.get, deps.compile
    ```

3. Try building your new website with `serum.build` Mix task. Unless the `-o`
   option is given, the website will be built at `/path/to/project/site`.

    ```
    $ mix serum.build
    ```

4. Or, you can test your project right away by running `serum.server`. The
Serum development server is useful when you need to check your website before
publishing it.

    ```
    $ mix serum.server [--port <PORT>]
    ```

    Open a web browser and navigate to your website (i.e. `http://localhost`).

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

Congratulations! Yet it looks empty, you have successfully built your first
website with Serum. Now continue reading [documentations](%page:docs/index) to
customize your project and fill your website with your own contents.
