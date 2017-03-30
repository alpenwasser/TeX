ALL_FIGURE_NAMES=$(shell cat plotting-from-data.figlist)
ALL_FIGURES=$(ALL_FIGURE_NAMES:%=%.pdf)

allimages: $(ALL_FIGURES)
	@echo All images exist now. Use make -B to re-generate them.

FORCEREMAKE:

include $(ALL_FIGURE_NAMES:%=%.dep)

%.dep:
	mkdir -p "$(dir $@)"
	touch "$@" # will be filled later.

cache/plotting-from-data-figure0.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "cache/plotting-from-data-figure0" "\def\tikzexternalrealjob{plotting-from-data}\input{plotting-from-data}"

cache/plotting-from-data-figure0.pdf: cache/plotting-from-data-figure0.md5
cache/plotting-from-data-figure1.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "cache/plotting-from-data-figure1" "\def\tikzexternalrealjob{plotting-from-data}\input{plotting-from-data}"

cache/plotting-from-data-figure1.pdf: cache/plotting-from-data-figure1.md5
cache/plotting-from-data-figure2.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "cache/plotting-from-data-figure2" "\def\tikzexternalrealjob{plotting-from-data}\input{plotting-from-data}"

cache/plotting-from-data-figure2.pdf: cache/plotting-from-data-figure2.md5
cache/plotting-from-data-figure3.pdf: 
	pdflatex -shell-escape -halt-on-error -interaction=batchmode -jobname "cache/plotting-from-data-figure3" "\def\tikzexternalrealjob{plotting-from-data}\input{plotting-from-data}"

cache/plotting-from-data-figure3.pdf: cache/plotting-from-data-figure3.md5
