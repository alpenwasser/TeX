.DEFAULT_GOAL := simple

simple: simplest packages structure compiletest
	xelatex -shell-escape Main

simplest:
	pdflatex -output-directory code code/simplest.tex

packages:
	pdflatex -output-directory code code/packages.tex

structure:
	pdflatex -output-directory code code/structure.tex

compiletest:
	pdflatex -output-directory code code/compiletest.tex
	mv code/compiletest.pdf code/compiletest_pdflatex.pdf
	latex -output-directory code code/compiletest.tex &&\
		dvips  code/compiletest.dvi &&\
		ps2pdf compiletest.ps  && \
		mv compiletest.ps code/ &&\
		mv compiletest.pdf code/compiletest_dvips_ps2pdf.pdf

# Clean cache
cclean:
	rm -f cache/*.log cache/*.pdf cache/*.md5 cache/*.dpth cache/*.dep cache/*.ctr
	rm -f _minted-Main/*


# Clean all
clean: cclean
	find . -type f -iname '*.aux'     -exec rm {} ';'
	find . -type f -iname '*.lof'     -exec rm {} ';'
	find . -type f -iname '*.log'     -exec rm {} ';'
	find . -type f -iname '*.toc'     -exec rm {} ';'
	find . -type f -iname '*.out'     -exec rm {} ';'
	find . -type f -iname '*.auxlock' -exec rm {} ';'
	find . -type f -iname '*.dvi'     -exec rm {} ';'
	find . -type f -iname '*.ps'      -exec rm {} ';'
	find . -type f -iname '*.pdf'     -exec rm {} ';'
	rmdir _minted-Main
	rm -f Main.bbl
	rm -f Main.snm
	rm -f Main.blg
	rm -f Main.tdo
	rm -f Main.nav
	rm -f Main.vrb


# Clean up, then recompile everything
rebuild: clean simple
	xelatex -shell-escape Main

# Open in evince after compilation:
view: simple
	evince Main.pdf 2>/dev/null &

handout: simplest packages structure compiletest
	cp Main.tex Main.tex.bak
	cat Main.tex.bak | sed 's/^\\documentclass{/\\documentclass[handout]{/' > Main.tex
	xelatex -shell-escape Main
	cp Main.pdf handout.pdf
	mv Main.tex.bak Main.tex

presentation: simple
	xelatex -shell-escape Main # Table of Contents
	cp Main.pdf presentation.pdf

all: handout presentation
	cp Main.pdf presentation.pdf
