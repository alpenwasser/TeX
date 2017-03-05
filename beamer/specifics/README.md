LaTeX: Examples & Code Snippets
===============================

An aggregation of  various code snippets and solutions to  specific problems I
have deployed over the years. Maybe they will be of use to somebody else.

Can be compiled into a handout and a presentation version.


Dependencies
------------

- a reasoably up-to-date TeX  distribution 
- the metropolis theme for beamer (might be included in your TeX distribution)
- Pygmentize  (Python  syntax highlighter)
- the `make` utility if you wish to compile via the Makefile.


Compiling
---------

Non-comprehensive documentation of the Makefile:

- `make`: Compiles the presentation as `Main.pdf`.
- `make handout`: Compiles a handout version  of the presentation and saves it
   in `handout.pdf`. Basically the same content with a few sensible changes.
- `make  presentation`: Compiles the  presentation  version  an saves   it  in
   `presentation.pdf`.
- `make all`: Executes  both `make handout` and  `make presentation`, yielding
  both output files.
- `make clean`: Remove all output files (including cache and auxiliary files)




TODO
----

- Prevent `make clean` from removing committed milestone versions of the pdf
  documents.
- Frame numbers on handout version are incorrect.
