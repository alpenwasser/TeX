BOOKLET := booklet
SIG8 := signature8
CHILD := child

default: booklet sig8

child:
	@pdflatex $(CHILD)

booklet: child
	@pdflatex $(BOOKLET)
	
sig8: child
	@pdflatex $(SIG8)

clean:
	@rm -f $(BOOKLET).aux
	@rm -f $(BOOKLET).log
	@rm -f $(BOOKLET).out
	@rm -f $(BOOKLET).toc
	@rm -f $(SIG8).aux
	@rm -f $(SIG8).log
	@rm -f $(SIG8).out
	@rm -f $(SIG8).toc
	@rm -f $(CHILD).aux
	@rm -f $(CHILD).log
	@rm -f $(CHILD).out
	@rm -f $(CHILD).toc
