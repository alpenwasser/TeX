.DEFAULT_GOAL := simple

simple:
	pdflatex -shell-escape Main

bib:
	pdflatex -shell-escape -halt-on-error -interaction batchmode Main \
		&& bibtex Main \
		&& pdflatex -shell-escape -halt-on-error -interaction batchmode Main\
		&& pdflatex -shell-escape -halt-on-error -interaction batchmode Main

# Clean all
clean: cclean
	find . -type f -iname '*.aux'     -exec rm {} ';'
	find . -type f -iname '*.lof'     -exec rm {} ';'
	find . -type f -iname '*.log'     -exec rm {} ';'
	find . -type f -iname '*.toc'     -exec rm {} ';'
	find . -type f -iname '*.out'     -exec rm {} ';'
	find . -type f -iname '*.auxlock' -exec rm {} ';'
	rm -f Main.bbl
	rm -f Main.blg
	rm -f Main.pdf
	rm -f Main.tdo


# Clean cache
cclean:
	rm -f cache/*.log cache/*.pdf cache/*.md5 cache/*.dpth cache/*.dep cache/*.ctr
	rm -f _minted-Main/*

# Clean up, then recompile everything
rebuild: clean bib

# Open in evince after compilation:
view: simple
	evince Main.pdf 2>/dev/null &
