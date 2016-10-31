[Back to the index](%pages:docs/index)

## Assets and Media

Each Serum project can also have two additional directories: `assets` and
`media`. The assets directory is used for storing stylesheets, javascript
sources and images which are used globally within the project. While the media
directory is used to store images, audio or other media files which are
referenced by some of pages or blog posts. These directories and their contents
will be copied into the destination directory when the project is built.

When a new Serum project is being initialized, these two directories are also
automatically created. However you may remove those directories if you plan to
have no design assets or media files. In that case, Serum will warn you that
either assets or media directory is missing.

Serum also creates `css`, `js` and `images` directories under the `assets`
directory. This is just for your convenience, therefore you are free to change
the inner directory structure to fit your needs.

