default:
	@mkdir -p cache
	@pdflatex -shell-escape plotting-from-data

all:
	@pdflatex -shell-escape plotting-from-data
	@make -j 4 -f plotting-from-data.makefile
	@pdflatex -shell-escape plotting-from-data

clean:
	@rm -f *.aux
	@rm -f *.log
	@rm -f *.auxlock
	@rm -f *.dpth
	@rm -f cache/*
