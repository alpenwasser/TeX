.DEFAULT_GOAL := simple

simple:
	@pdflatex -shell-escape Main

# Clean all
clean: cclean
	@find . -type f -iname '*.aux'     -exec rm {} ';'
	@find . -type f -iname '*.lof'     -exec rm {} ';'
	@find . -type f -iname '*.log'     -exec rm {} ';'
	@find . -type f -iname '*.toc'     -exec rm {} ';'
	@find . -type f -iname '*.out'     -exec rm {} ';'
	@find . -type f -iname '*.auxlock' -exec rm {} ';'
	@rm -f Main.bbl
	@rm -f Main.blg
	@rm -f Main.tdo


# Clean cache
cclean:
	@rm -f cache/*.log cache/*.pdf cache/*.md5 cache/*.dpth cache/*.dep cache/*.ctr
	@rm -f _minted-Main/*
