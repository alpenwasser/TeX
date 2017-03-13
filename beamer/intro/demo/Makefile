DEMOFILE := demo

default:
	@pdflatex $(DEMOFILE)
	@evince $(DEMOFILE).pdf

clean:
	@rm -f $(DEMOFILE).log
	@rm -f $(DEMOFILE).aux
	@rm -f $(DEMOFILE).pdf
	@rm -f $(DEMOFILE).tex
