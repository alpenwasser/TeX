TIMESTAMP := $(shell date '+%Y-%m-%d--%H-%M-%S')

.DEFAULT_GOAL := simple

.PHONY: code

simple: code
	@xelatex -shell-escape Main

# Clean cache
cclean:
	@rm -f cache/*.log cache/*.pdf cache/*.md5 cache/*.dpth cache/*.dep cache/*.ctr
	@rm -f _minted-Main/*

# http://www.cplusplus.com/forum/unices/28931/
code:
	$(MAKE) -C $@

# Clean all
clean: cclean
	@find . -not \( -path ./milestones -prune \) -iname '*.aux'     -exec rm {} ';'
	@find . -not \( -path ./milestones -prune \) -iname '*.lof'     -exec rm {} ';'
	@find . -not \( -path ./milestones -prune \) -iname '*.log'     -exec rm {} ';'
	@find . -not \( -path ./milestones -prune \) -iname '*.toc'     -exec rm {} ';'
	@find . -not \( -path ./milestones -prune \) -iname '*.out'     -exec rm {} ';'
	@find . -not \( -path ./milestones -prune \) -iname '*.auxlock' -exec rm {} ';'
	@find . -not \( -path ./milestones -prune \) -iname '*.dvi'     -exec rm {} ';'
	@find . -not \( -path ./milestones -prune \) -iname '*.ps'      -exec rm {} ';'
	@find . -not \( -path ./milestones -prune \) -iname '*.pdf'     -exec rm {} ';'
	@rm -rf _minted-Main
	@rm -f Main.bbl
	@rm -f Main.snm
	@rm -f Main.blg
	@rm -f Main.tdo
	@rm -f Main.nav
	@rm -f Main.vrb


# Open in evince after compilation:
view: simple
	@evince Main.pdf 2>/dev/null &

trans:
	@cp Main.tex Main.tex.bak
	@cat Main.tex.bak | \
		sed 's/^\\documentclass{/\\documentclass[trans]{/' | \
		sed 's/^%\?\\addtobeamertemplate{background canvas}{\\transdissolve\[duration=1\]\\hspace{-0.29em}}{}/%\\addtobeamertemplate{background canvas}{\\transdissolve\[duration=1\]\\hspace{-0.29em}}{}/' > Main.tex
	@xelatex -shell-escape Main
	@xelatex -shell-escape Main # For correct progress bar
	@cp Main.pdf transparencies.pdf
	@mv Main.tex.bak Main.tex

handout:
	@cp Main.tex Main.tex.bak
	@cat Main.tex.bak | \
		sed 's/^\\documentclass{/\\documentclass[handout]{/' | \
		sed 's/^%\?\\addtobeamertemplate{background canvas}{\\transdissolve\[duration=1\]\\hspace{-0.29em}}{}/%\\addtobeamertemplate{background canvas}{\\transdissolve\[duration=1\]\\hspace{-0.29em}}{}/' > Main.tex
	@xelatex -shell-escape Main
	@xelatex -shell-escape Main # For correct progress bar
	@cp Main.pdf handout.pdf
	@mv Main.tex.bak Main.tex

presentation:
	@cp Main.tex Main.tex.bak
	@cat Main.tex.bak | \
		sed 's/^%\?\\addtobeamertemplate{background canvas}{\\transdissolve\[duration=1\]\\hspace{-0.29em}}{}/\\addtobeamertemplate{background canvas}{\\transdissolve\[duration=1\]\\hspace{-0.29em}}{}/' > Main.tex
	@xelatex -shell-escape Main
	@xelatex -shell-escape Main
	@cp Main.pdf presentation.pdf
	@mv Main.tex.bak Main.tex

all: handout presentation trans

# Clean up, then recompile everything
rebuild: clean all

milestone: all
	@mkdir -p milestones
	@mv handout.pdf milestones/$(TIMESTAMP)--handout.pdf
	@mv presentation.pdf milestones/$(TIMESTAMP)--presentation.pdf
	@mv transparencies.pdf milestones/$(TIMESTAMP)--transparencies.pdf
