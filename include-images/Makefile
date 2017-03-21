DOCUMENT := includeIMG
GRID8 := grid8cm

default:
	@pdflatex $(DOCUMENT)

grid8:
	@cd images/; pdflatex $(GRID8)

clean:
	@rm -f $(DOCUMENT).aux
	@rm -f $(DOCUMENT).log
	@rm -f $(DOCUMENT).out
	@rm -f $(DOCUMENT).toc
	@cd images/; rm -f $(GRID8).aux
	@cd images/; rm -f $(GRID8).log
	@cd images/; rm -f $(GRID8).out
	@cd images/; rm -f $(GRID8).toc
