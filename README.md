# The `locpream` package: Local preambles within LaTeX documents

The `locpream` LaTeX package allows the use of preambles that are local
to specific parts of a document.  This is useful for using symbols from
packages without loading those packages into the main document.  For
example, `locpream` allow the simultaneous use of symbols from packages
that conflict with each other or otherwise cannot be loaded together.

## Warning

This package is pre-alpha, and its interface may change without notice.

## Download

The most-recently released version of this package can be downloaded at
<https://www.ctan.org/pkg/locpream>. (TODO: Link not active, yet.  Will
upload when out of pre-alpha.)

For the development version of this package see the "Source Code"
section of this `README.md` file.

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

## Source Code

The source-code repository for this package is at
<https://github.com/adamsmd/tex-pkg-locpream/>.

### Source-Code Structure

* Meta-information
  - `README.md`: The document you are currently reading.
  - `Makefile`: Builds the documentation for this package.

* Style files
  - `locpream.sty`:
      The main style file that implements this package.
  - `locpream.code.sty`:
      A style file containing just the code for `\LocalPreambleCode`.
      Used by `locpream.sty`.  Able to be loaded separately and
      designed to load quickly in order to improve compilation times on
      documents with many pieces of LaTeX code with local preambles.

* Documentation
  - `locpream.tex`:
      LaTeX for the documentation for this package.
  - `locpream.pdf`:
      PDF for the documentation for this package.
  - `locpream-standalone-catcode.tex`:
      Helper file used by the documentation for this pacakge.
  - `locpream-standalone-hash.tex`:
      Helper file used by the documentation for this pacakge.
  - `locpream-standalone-simple.tex`:
      Helper file used by the documentation for this pacakge.

### Building Documentation

To build the documentation for this package, run `make`, `make all`, or
`make docs`.  This will produce a documentation file named
`locpream.pdf`.

You can remove the temporary files generated during building with
`make clean`.

You can build the documentation for this package with specifically
`pdflatex`, `xelatex`, and `lualatex` using `make docs-pdf`,
`make docs-xe`, and `make docs-lua`, respectively.

#### Warning

Building the documentation produces a large number (~200) of temporary
files in the current directory.  They all have filenames of the form
`locpream-locpream-*`.  These files can be deleted by running the
command `make clean`.

#### Warning

The documentation for this package uses the `changelog` package, which
is relatively new and may not be part of your TeX distribution yet.

If this is the case, download `changelog.sty` from
<http://mirrors.ctan.org/macros/latex/contrib/changelog/changelog.sty>
and place it either in the directory containing `locpream.tex` or a
directory in the style-file search path for LaTeX.

## Contributing

I am not an expert at LaTeX programming, so suggestions about better
ways to write or package this package are welcome.

My spare time is very limited, and this is not my primary project, so
bug reports that include pull requests are more likely to be fixed.

I would be happy to hand over maintenance of this package to someone
with more free time and experience than I.

### Desired Features

I would be particularly interested in pull requests that add the
following features.

* Caching so that compilation can be skipped when a piece of code with
  a local preamble has not changed.

* Better solutions to the issues in the "Issues and Workarounds"
  section of the documentation.  Ideally these solutions would be
  automatic and require no effort on the part of the user.

* It may be possible to use the `subfiles` or `childdoc` packages to
  copy the preamble of the master document into code with local
  preambles.  This would not be enabled by default, but it would be
  nice for it to be option that a user can select.

* The ability to pass default options when loading the package.  That
  is to say, `\usepackage[...]{locpream}` would be the same as
  `\usepackage{locpream}\locpreamkeys{...}`.  I attempted to use the
  `kvoptions` package to do this but ran into trouble with the example:

      \documentclass{article}
      \usepackage[preamble={\usepackage{amsmath}}]{locpream}
      \begin{document}
      \locpream{$\iint$}
      \end{document}

### Bug Reports

Bugs should be submitted to the issue tracker at
<https://github.com/adamsmd/tex-pkg-locpream/issues>.

### Patches

Patches should be submitted via pull requests at
<https://github.com/adamsmd/tex-pkg-locpream/pulls>.

Patches are expected to work under all of `pdflatex`, `xelatex`, and
`lualatex`.  This can be tested by running `make clean docs-pdf`,
`make clean docs-xe`, and `make clean docs-lua`, respectively.

## License

This work may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either version 1.3
of this license or (at your option) any later version.
The latest version of this license is in
  http://www.latex-project.org/lppl.txt
and version 1.3 or later is part of all distributions of LaTeX
version 2005/12/01 or later.

This work has the LPPL maintenance status 'maintained'.

The Current Maintainer of this work is Michael D. Adams.
