resolve 0.0.1
=============
Usage: 

    resolve [-h] basePath [relPath]

Resolves a relative path against a base path or URI. Given only a basePath,
simplifies it.

Examples:

    $ resolve /path/to/base ../hello/world/program//
    /path/to/hello/world/program/

    $ resolve http://example.com/catalog ../app1/download/file.tar.bz2
    http://example.com/app1/download/file.tar.bz2

    $ resolve /messy/../../complicated////../path/before/../tidied
    /path/tidied

Features
--------
* Does not access the filesystem or network; this is a string manipulation tool.
* Written to be cross-platform on Mac, Linux, and Cygwin.
