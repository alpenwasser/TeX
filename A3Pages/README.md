A3 Pages
========

A LaTeX environment used for inserting A3  pages at arbitrary points into an 4
A(portait orientation) document.

There is  a version for the  memoir class (`a3pagesMem`), and  for the article
class (`a3pages`). The two differ in the  way in which they calculate the text
width due the different lengths memoir uses/provides for laying out its page. 

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

Include  the `a3pages.tex`  file  in your  preamble via  `\input{a3pages.tex}`
(relative path to your main TeX file), then invoke via:

```
{\begin{a3pages}
    Stuff on A3 pages
\end{a3pages}}
```

Compiling the Examples
----------------------

`make` compiles both versions. `make clean` removes the log and aux files.


Limitations/TODOs
-----------------

-  Currently,  an  opening  and  closing  brace  must  be  placed  before  the
invocation of the  `\begin{a3pages}` command, and after the  invocation of the
`\end{a3pages}` command (see example above).  If  anyone knows a fix for this,
feel free to let me know.
- Convert into a package.
