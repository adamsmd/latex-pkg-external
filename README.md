# The `locpream` package: Local preambles within a LaTeX document

The `locpream` package allows the use of a preamble that is local to a
specific part of the document.  This is useful for using symbols from a
package without loading it into the main document.  For example, the
main document may use symbols from multiple packages that conflict or
otherwise cannot be loaded together.

## Status

This package is pre-alpha and its interface may change without notice.

## Download

The latest copy can be downloaded at:

https://github.com/adamsmd/tex-pkg-locpream

## Installing

To install, copy `locpream.sty` and `locpream.code.sty` to somewhere in
the style-file search path for LaTeX.

## Example Usages

Using `\textbeta` without having to load the `textgreek` package in the
main document:

    An atom undergoing
    \localpreamble[preamble={\usepackage{textgreek}}]{\textbeta-decay}
    can emit an electron.

The same but as an environment:

    An atom undergoing
    \begin{localpreambleenv}[preamble={\usepackage{textgreek}}]
    \textbeta-decay
    \end{localpreambleenv}
    ~can emit an electron.

Typesetting code as display math:

    The solution to the two dimensional integral
    \localpreamble[preamble={\usepackage{amsmath}}, math=display]
    {\iint xy\,dx\,dy}
    is involves $x^2$ and $y^2$.

For more details, see the documentation in `locpream.pdf`.

## Building Documentation

To build the documentation for this package, run `make`.  This will
produce a documentation file named `locpream.pdf`.

### Warning

This also produces a large number (~200) of temporary files in the
current directory.  They all have filenames of the form
`locpream-locpream-*`.  These files can be deleted by running the
command `make clean`.

## Contributing

I am not an expert on LaTeX programming, so suggestions about better
ways to write or package the code are welcome.

My spare time is also very limited and this is not my primary project,
so bug reports that include pull requests are more likely to be fixed.

I would be happy to hand over maintenance of this package to anyone
with more experience and time than I.

### Desired Feature

A notably missing feature is caching.  I would be particularly
interested in pull requests that add this feature.

### Bug Reports

Bugs should be submitted to the issue tracker at
https://github.com/adamsmd/tex-pkg-locpream/issues

### Patches

Patches should be submitted via pull requests at
https://github.com/adamsmd/tex-pkg-locpream/pulls

Patches are expected to work under all of `pdflatex`, `xelatex`, and
`lualatex`.  This can be tested by running `make docs-pdf`, `make
docs-xe`, and `make docs-lua`, respectively, each from a clean
repository.

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
