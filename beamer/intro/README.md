Introduction to LaTeX
=====================

A short  introduction and overview  for people  unfamiliar with LaTeX  on just
what the  heck it is,  and the *very*  basics of how  it can be  installed and
used.

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

Prevent `make  clean` from  removing committed milestone  versions of  the pdf
documents.
