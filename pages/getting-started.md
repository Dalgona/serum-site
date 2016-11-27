# Getting Started

# Getting Started

## Requirement

* Elixir 1.2 or newer (1.3.3 or newer is required when running
  [Dialyxir](https://github.com/jeremyjh/dialyxir)&#x29;

    Please visit [the official Elixir website](http://elixir-lang.org) for
    installation instructions.

## Obtaining the Source Code

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

## Building Serum

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

    **NOTE 1:** The server will listen on port 8080 if `--port` (or `-p`)
    option is not specified.

    **NOTE 2:** Always type `quit` command instead of pressing Control-C to
    quit the development server.

4. Open a web brower and navigate to your website. That's it!

Congratulations! Yet it looks empty, you have successfully created and built
your first website with Serum. Now continue reading
[documentations](%pages:docs/index) to customize your project and fill your
website with your own contents.

