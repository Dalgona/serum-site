===
title: Getting Started
===

# Getting Started

## Requirement

* Elixir 1.4 or newer

    Please visit [the official Elixir website](http://elixir-lang.org) for
    installation instructions.

* To enable the automatic rebuild feature, you need to install an external
package depending on your operating system.

    * For Linux-based OS: `inotify-tools`
    * For macOS: Install `fsevent_watch` with brew

## Getting Serum

### The Easiest Way

From Elixir 1.4, you can now install Serum in _one_ step. Simply execute the
command below:

```
% mix escript.install github Dalgona/Serum
```

The escript will be installed under `~/.mix/escripts` directory. Append this
directory to your `PATH` environment variable to easily invoke Serum with
`serum` command.

### Still an Easy Way

You can still manually fetch the source code and build Serum. Follow the steps
below:

1. Use `git` to clone the repository.

        % git clone https://github.com/Dalgona/Serum.git

2. Type `make` to automatically fetch the dependencies and build Serum escript.
If the build succeeded, you will see `serum` executable in the PWD.

3. (Optional) Execute `make install` to copy the program into `/usr/local/bin/`
directory, so that you can use Serum from anywhere.

## My First Website

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

4. Open a web brower and navigate to your website. That's it!

Congratulations! Yet it looks empty, you have successfully created and built
your first website with Serum. Now continue reading
[documentations](%pages:docs/index) to customize your project and fill your
website with your own contents.

