default:
	@pdflatex bibtex
	@bibtex bibtex
	@pdflatex bibtex
	@pdflatex bibtex
	@pdflatex native
	@pdflatex native

clean:
	@rm -f bibtex.aux
	@rm -f bibtex.bbl
	@rm -f bibtex.blg
	@rm -f bibtex.log
	@rm -f bibtex.pdf
	@rm -f native.aux
	@rm -f native.log
	@rm -f native.pdf
