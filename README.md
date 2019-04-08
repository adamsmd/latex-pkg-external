# The `external` package: A package for including into a document separately compiled LaTeX

The `external` package allows you to include the result of rendering
LaTeX code in a separate document that has its own preamble.  This is
useful when you want to use symbols from a package that you do not want
to load into your main document.  For example, your main document may
use symbols from multiple packages that conflict or otherwise cannot be
loaded together.

## Status

This package is pre-alpha and its interface may change without notice.

## Download

You can download the latest copy at:

https://github.com/adamsmd/latex-pkg-external

## Installing

To install, copy `external.sty` and `external.code.sty` to somewhere in
the style-file search path for LaTeX.

## Example Usages

Using `\textbeta` without having to load the `textgreek` package in the
main document:

    An atom undergoing
    \external[preamble={\usepackage{textgreek}}]{\textbeta-decay}
    can emit an electron.

The same but as an environment:

    An atom undergoing
    \begin{externalenv}[preamble={\usepackage{textgreek}}]
    \textbeta-decay
    \end{externalenv}
    ~can emit an electron.

Typesetting external code as display math:

    The solution to the two dimensional integral
    \external[preamble={\usepackage{amsmath}}, math=display]
    {\iint xy\,dx\,dy}
    is involves $x^2$ and $y^2$.

For more details, see the documentation in `external.pdf`.

## Building Documentation

To build the documentation for this package, run `make`.  This will
produce a documentation file named `external.pdf`.

### Warning

This also produces a large number (~200) of temporary files in the
current directory.  They all have filenames of the form
`external-external-*`.  You can delete these files by running the
command `make clean`.

## Contributing

I am not an expert on LaTeX programming, so suggestions about better
ways to write or package the code are welcome.

My spare time is very limited and this is not my primary project, so
bug reports that include pull requests are more likely to be fixed.

I am also looking for someone to take over maintenance of this package.

### Desired Feature

A desired feature would be to subsume the functionality of the TikZ
`externalize` library.  In order to do this, the following features
need to be implemented.

- Use `pgfkeys`
- Support automatic caching
- Make it possible to copy the preamble of the master document into the
  externally compiled code.

### Bug Reports

Bugs should be submitted to the issue tracker at
https://github.com/adamsmd/latex-pkg-external/issues

### Patches

Patches should be submitted via pull requests at
https://github.com/adamsmd/latex-pkg-external/pulls

Patches are expected to work under all of `pdflatex`, `xelatex`, and
`lualatex`.  This can be tested by running `make docs-pdf`, `make
docs-xe`, and `make docs-lua`, respectively.

## License

This work may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either version 1.3
of this license or (at your option) any later version.
The latest version of this license is in
  http://www.latex-project.org/lppl.txt
and version 1.3 or later is part of all distributions of LaTeX
version 2005/12/01 or later.

This work has the LPPL maintenance status `maintained'.

The Current Maintainer of this work is Michael D. Adams.
