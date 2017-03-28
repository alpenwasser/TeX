MASTER := cli-args
CHAP1  := chapters/chapter1
CHAP2  := chapters/chapter2
CHAP3  := chapters/chapter3
CHAP4  := chapters/chapter4
CHAPTERDIR := chapters

CHAPTERFILES := $(shell find $(CHAPTERDIR) -name '*.tex' | sed 's/\.tex//')
PDFLATEXOPEN := @pdflatex "'\def\mychapters{"
PDFLATEXCLOSE := "}\input{$(MASTER)}'"

default:
	@pdflatex $(MASTER)

silly:
	@echo $@

# $(chaps) comma-separated list from command line, like so:
# $ make partial chaps=chapter1file,chapter2file,...
# This is useful for when you want to compile more than one
# chapter, but not the entire document
partial:
	@pdflatex "\def\mychapters{$(chaps)}\input{$(MASTER)}"

# Generate a target in the makefile for each chapter
#  Do not forget to add an \include{chaptername} to the master tex file.
gen:
	@$(foreach chapterfile,$(CHAPTERFILES),\
		echo $(chapterfile):| sed 's/$(CHAPTERDIR)\///' >> Makefile;\
		echo -e '\t'$(PDFLATEXOPEN)$(chapterfile)$(PDFLATEXCLOSE)'\n' >> Makefile;)

chapter1:
	@pdflatex '\def\mychapters{chapters/chapter1}\input{cli-args}'

chapter2:
	@pdflatex '\def\mychapters{chapters/chapter2}\input{cli-args}'

chapter3:
	@pdflatex '\def\mychapters{chapters/chapter3}\input{cli-args}'

chapter4:
	@pdflatex '\def\mychapters{chapters/chapter4}\input{cli-args}'

some-random-chapter-name:
	@pdflatex '\def\mychapters{chapters/some-random-chapter-name}\input{cli-args}'

