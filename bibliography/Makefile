DOCUMENT := Main

default:
	pdflatex $(DOCUMENT)

bibtex:
	bibtex $(DOCUMENT)

bib:
	@pdflatex $(DOCUMENT) && \
		bibtex $(DOCUMENT) &&\
		pdflatex $(DOCUMENT) &&\
		pdflatex $(DOCUMENT)

clean:
	@rm -f $(DOCUMENT).aux
	@rm -f $(DOCUMENT).bbl
	@rm -f $(DOCUMENT).blg
	@rm -f $(DOCUMENT).log
	@rm -f $(DOCUMENT).out
	@rm -f $(DOCUMENT).pdf
	@rm -f $(DOCUMENT).toc
