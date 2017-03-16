The a3pages Package
===================

A LaTeX package for inserting A3 pages at arbitrary points into an 4 A(portait
orientation) document.

The package  is compatible with the  memoir and the article  class for now. If
you need compatibility with other  packages (or even implement them yourself),
feel free to open an issue or a pull request.

For more information, see Chapter Two in the 
[manual for the memoir class](http://mirrors.ctan.org/macros/latex/contrib/memoir/memman.pdf)
(careful: large pdf)
and [the LaTeX Guide on Wikibooks](https://en.wikibooks.org/wiki/LaTeX/Page_Layout).

*NOTE*: It is not recommended to just spread text out over a landscape A3 page
at the default font size. Lines of such length are very hard to read and annoy
any  sane  reader. I  recommend  either  using  the  a3pages  environment  for
inserting large drawings  into your document, or using two  or more columns on
an A3 page, if you must (e.g. via minipages). See also the provided examples.


Using a3pages in your document
------------------------------

Put the `a3pages.sty` file in the directory of your LaTeX project, and add

```
\usepackage{a3pages}
```
to the preamble. No options are available, and no further configuration should
be needed (for the supported document classes).

Then invoke via:

```
\begin{a3pages}
    Content which is to go on A3 pages.
\end{a3pages}
```


Compiling the Examples
----------------------

`make` compiles  both examples,  one for  the memoir and  one for  the article
document class . `make clean` removes the log and aux files.


Limitations/TODOs
-----------------

- Support more document classes.
- Allow page layout configuration?
