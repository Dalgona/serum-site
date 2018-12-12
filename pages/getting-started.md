---
title: Getting Started
group: main-menu
order: 2
---

# Getting Started

## Requirement

* Elixir 1.4 or newer on UNIX-based OS

    Please visit [the official Elixir website](http://elixir-lang.org) for
    installation instructions.

    Serum has never been tested on the native Win32 build of Erlang runtime,
    therefore it won't work well on that platform. If you need to work on
    Microsoft Windows, please install Serum on Windows Subsystem for Linux
    (WSL), which comes with the latest version of Windows 10.

* To enable the automatic rebuild feature, you'll need to install an external
  package depending on your operating system.

    * For Linux-based OS (including WSL): Install `inotify-tools` with the
      package manager provided by your Linux distribution.
    * For macOS: Install `fsevent_watch` with brew.

## Getting Serum

### Automatic Installation

From Elixir 1.4, you can now install Serum in one step. Execute the command
below in your shell:

```
% mix escript.install github Dalgona/Serum
```

The escript will be installed under `~/.mix/escripts` directory. Append this
directory to your `PATH` environment variable to easily invoke Serum with
`serum` command.

### Manually Building Serum

You can manually fetch the source code and build Serum. Follow the steps below:

1. Use `git` to clone the repository.

    ```
    % git clone https://github.com/Dalgona/Serum.git
    ```

2. Run `make` to automatically fetch the dependencies and build Serum escript.
If the build succeeds, you will see `serum` executable in the PWD.

3. (Optional) Execute `make install` to copy the program into `/usr/local/bin/`
directory, so that you can use Serum from anywhere.

## My First Website

Once you have successfully installed Serum, you can create and test your first
website in a few minutes.

1. Run `serum init [directory]` to create a new Serum project.

    ```
    % serum init /path/to/project
    ```

2. CD into your project directory and type `serum build` to build your project.

    ```
    % cd /path/to/project
    % serum build
    ```

    When the build completes, the root of your website will be created under
    `/path/to/project/site` directory. Copy the contents of this directory to
    your own www directory, or upload them to the external web hosting service.

3. Or, you can test your project right away by running `serum server`.  The
Serum development server is useful when you need to check your website before
publishing it.

    ```
    % serum server --port <port>
    ```

    <blockquote class="note">
      <header>NOTE 1</header>
      <p>The server will listen on port 8080 if `--port` (or `-p`) option is
      not specified.</p>
    </blockquote>

    <blockquote class="note">
      <header>NOTE 2</header>
      <p>Always type `quit` command instead of pressing Control-C to quit the
      development server.</p>
    </blockquote>

4. Open a web browser and navigate to your website (i.e. `http://localhost`).

Congratulations! Yet it looks empty, you have successfully built your first
website with Serum. Now continue reading [documentations](%page:docs/index) to
customize your project and fill your website with your own contents.
