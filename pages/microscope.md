# Microscope

# The Microscope Project

Microscope is a simple static web server which powers Serum's development
server functionality. Originally, it was a part of Serum, but it has been
extracted to a separate project for better maintainability and extensibility.
Now Microscope is a general-purpose static web server, which is not only useful
for testing your static websites, but also a handy tool for quickly sharing
your files on your computer over HTTP, and more!

Microscope can be run as a child process (under a supervision tree or not) or
as a standalone program. Visit the [GitHub repositiory](https://github.com/Dalgona/microscope)
for more information.

## Features

These are the key features Microscope currently supports:

* **Response compression**

    Microscope compresses the contents of a response using gzip if
    Content-Length is below 32768 bytes.

* **Automatic index generation**

    Microscope generates and sends a fallback "Index of" page which contains a
    list of subdirectories and files, if the requested URL points to a directory
    where neither `index.html` nor `index.htm` exists. Microscope must be
    started with `index` flag enabled to use this feature.

    ![A screenshot of auto-generated index page](%media:microscope/auto-index-demo.png)

Microscope is intended to be used as a test server or a temporary server for
quick file sharing, and I don't and won't have any plan to make Microscope a
huge web server like NGINX or Apache httpd. So some rich features like HTTPS and
Cache-Control are not likely to be implemented. Please keep this in your mind
when contributing or requesting a new feature to this project.
