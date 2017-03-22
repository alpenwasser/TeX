DOCUMENT := listings

default:
	@pdflatex -shell-escape $(DOCUMENT)

clean:
	@rm -f $(DOCUMENT).aux
	@rm -f $(DOCUMENT).log
	@rm -f $(DOCUMENT).out
	@rm -f $(DOCUMENT).toc
	@rm -f $(DOCUMENT).listing
	@rm -rf _minted-listings
