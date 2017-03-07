Introduction to LaTeX
=====================

A short  introduction and overview  for people  unfamiliar with LaTeX  on just
what the  heck it is,  and the *very*  basics of how  it can be  installed and
used.

Can be compiled into a handout, a presentation and a transparencies version.


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
- `make handout`: Compiles the handout version  and saves it in `Main.pdf` and
  `handout.pdf`
- `make  trans`: Compiles the  trans version  and saves  it in  `Main.pdf` and
  `trans.pdf`
- `make presentation`: Compiles  the trans version and saves  it in `Main.pdf`
  and `presentation.pdf`
- `make all`: Executes  `make handout`, `make presentation`  and `make trans`
- `make clean`: Remove all output files (including cache and auxiliary files),
  *except* milestone files.
- `make rebuild`: `make clean`, followed by `make all`
- `make milestone`: Executes `make all`,  creates a directory `milestones` (if
  it  does not  yet  exist), and  moves  all output  `*.pdf`  files into  that
  directory with timestamped file  names. Example: `presentation.pdf` is moved
  to  `milestones/2017-01-23--19-23-07--presentation.pdf` if  the compile  run
  was executed at 19:23:07h on January 23, 2017.


TODO
----

- Prevent `make clean` from removing committed milestone versions of the pdf
  documents.
- Frame numbers on handout version are incorrect.


Links
-----

- [Default beamer theme matrix](https://hartwork.org/beamer-theme-matrix/)
- [A subdued beamer theme by Cameron Bracken](http://cameron.bracken.bz/beamer-template)
- [Cuerna (another theme)](http://ctan.org/pkg/beamertheme-cuerna)
- Metropolis (the theme used in this presentation): 
  * [Github](https://github.com/matze/mtheme), 
  * [Blog post](http://bloerg.net/2014/09/20/a-modern-beamer-theme.html),
  * [CTAN (with manual)](http://ctan.org/pkg/beamertheme-metropolis)
