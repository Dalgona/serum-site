---
title: The Command-line Program
group: docs
order: 1
---

[Back to the index](%page:docs/index)

# The Command-line Program

Every task related to your Serum projects is done by using the Serum
command-line program "`serum`." This document describes all tasks and their
options provided by Serum.

<blockquote class="note">
  <header>NOTE</header>
  <p>This document assumes that you have installed Serum on an easily reachable
  directory or you have set <code>$PATH</code> environment variable
  appropriately.</p>
</blockquote>

## Exit Status

The command-line program reports one of these exit status code depending on the
result of the task:

* `0` &mdash; The task has been completed normally.
* `1` &mdash; An error occurred while running the task.
* `2` &mdash; There is a problem in the command-line argument.

## Standard Tasks

Standard tasks are Serum tasks that can be invoked at any time.

### `init` &mdash; Creates a New Project

```
% serum init [(-f|--force)] [directory]
```

The `init` task initializes a new Serum project into the given `directory`.
If the target directory does not exist, that directory will be automatically
created. If the target directory already exists and is not empty, Serum will
refuse to create a new project. Use `-f (--force)` option to create a new
project anyway.

If the `directory` argument is not passed, Serum will try to initialize a new
project into your current working directory.

Read [Project Structure](%page:docs/project_structure) document to see which
files and directories are created during the initialization process.

#### Options

* `-f` or `--force`

    Forces the initialization of new project on a non-empty directory. Any
    existing files may be overwritten without any warning.

- - -

### `build` &mdash; Builds a Project

```
% serum build [(-o|--output) <outdir>] [directory]
```

The `build` task builds your Serum project into a complete website. The
`directory` argument should point at a valid Serum project directory. This
argument may be ignored, in this case you need to be in (i.e, the PWD must be
set to) a valid Serum project directory.

#### Options

* `-o <outdir>` or `--output <outdir>`

    The output directory of your website can be set by using this option. It
    is recommended to point to an empty directory, because all existing files
    or directories will be deleted without any warning or a question. If this
    option is not supplied, Serum will build the website into
    `</path/to/project>/site` directory by default.

    <blockquote class="note">
      <header>NOTE</header>
      <p>Hidden files whose names start with `'.'` are preserved, as they may
      contain important data, such as version control information.</p>
    </blockquote>

- - -

### `server` &mdash; The Serum Development Server

```
% serum server [(-p|--port) <port>] [directory]
```

The `server` task builds your Serum project and starts the development server.
Like the `build` task, the optional `directory` option should be a valid Serum
project directory. The website will be built into a temporary directory under
`/tmp`, and will be removed when the server quits.

#### Options

* `-p <port>` or `--port <port>`

    By default, the Serum development server listens on port 8080. If that port
    is unavailable or you need to use the other port, you can override that by
    using this option.

#### Server Commands

Once the development server has successfully started, you can interact with
the server by typing commands. Available commands are:

* `build` &mdash; Rebuilds current project.

* `quit` &mdash; Stops the development server and quit.

    <blockquote class="note">
      <header>NOTE</header>
      <p> Please make sure you type the <code>quit</code> command to stop the
      development server. Pressing Control-C causes unclean exit, leaving the
      temporary directory not removed.</p>
    </blockquote>

- - -

### `help` &mdash; Shows the Help Message

```
% serum help [task]
```

If executed without any argument, the `help` task prints summary of all tasks.
If you want to read detailed explanation about a specific task, give the name of
the task as an argument (e.g. `serum help build`).

## Project Utility Tasks

Project utility tasks are additional Serum tasks that can be invoked only if
the current working directory is a valid Serum project directory.

### `newpage` &mdash; Adds a New Page to the Current Project

```
% serum newpage [OPTIONS]
```

The `newpage` task helps you add a new page to your Serum project.

#### Options

It is helpful to read [Adding Pages to Your Website](%page:docs/pages) document
if you want to know what these options actually do.

* `-t <title>` or `--title <title>`

    **Required.** Title of the new page.

* `-l <label>` or `--label <label>`

    Label of the new page.

* `-g <group>` or `--group <group>`

    Name of a group the new page belongs to (if any).

* `-r <number>` or `--order <number>`

    The order of the new page in a group. Defaults to `0`. This option has no
    effect if the group is not specified.

* `-o <path>` or `--output <path>`

    **Required.** The path where the new page will be saved, relative to
    `pages/` directory. It must end with one of `.md`, `.html`, or `.html.eex`.

- - -

### `newpost` &mdash; Adds a New Blog Post to the Current Project

The `newpost` task helps you add a new blog post to your project.

#### Options

Currently, there is no option for specifying the post date. Post date will be
automatically set to the moment this task is executed.

* `-t <title>` or `--title <title>`

    **Required.** Title of the new post.

* `-g <tag>` or `--tag <tag>`

    Tag(s) of the new post. You can provide this option zero or more times to
    give multiple tags to the post.

* `-o <name>` or `--output <name>`

    **Required.** Name of the generated post file. The actual path to the
    generated fill will be in the form of `posts/YYYY-MM-DD-<name>.md`.
