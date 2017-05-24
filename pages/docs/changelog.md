===
title: Serum Changelog
===

# Serum Changelog

## May 2017

* Changed the syntax of markdown header.
* Introduced "includes" templates.
* Internal change: Serum now uses 2-pass building process.

## April 2017

* Serum now catches some errors occurring in template rendering procedure.

## March 2017

* Fixed inconsistencies in auto-generated default templates.

## February 2017

* Serum Development Server now reloads `serum.json` when rebuilding the project.
* Lots of internal code changes and maintainability improvements. (Not quite
related to end-user experiences, though.)

## January 2017

* Added `raw_date` post info variable.
* Now tags are displayed in alphabetical order.
* A new variable `raw_date` has been added to `post.html.eex` template. Read
    [&quot;Templates&quot;](%pages:docs/templates) to learn more.
* Format the codes so that warnings won't be generated in Elixir 1.4 and above.
* Site build will be aborted if the system timezone is not set.
* Improve error handling
* Minor bug fixes
