DOCUMENT := hex-chap

defaul:
	@python3 randInts.py > randInts.tex
	@pdflatex -shell-escape $(DOCUMENT)

clean:
	@rm -f $(DOCUMENT).pdf
	@rm -f $(DOCUMENT).log
	@rm -f $(DOCUMENT).aux
	@rm -f $(DOCUMENT).auxlock
