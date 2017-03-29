DOCUMENT := floats

default:
	@pdflatex -shell-escape $(DOCUMENT)

clean:
	@rm -f $(DOCUMENT).aux
	@rm -f $(DOCUMENT).listing
	@rm -f $(DOCUMENT).lof
	@rm -f $(DOCUMENT).log
	@rm -f $(DOCUMENT).lol
	@rm -f $(DOCUMENT).lot
	@rm -f $(DOCUMENT).out
	@rm -f $(DOCUMENT).toc
	@rm -rf _minted-floats
	@rm -f texput.log
