MASTER        := cli-args
CHAP1         := chapters/chapter1
CHAP2         := chapters/chapter2
CHAP3         := chapters/chapter3
CHAP4         := chapters/chapter4
CHAPTERDIR    := chapters
CHAPTERFILES  := $(shell find $(CHAPTERDIR) -name '*.tex' | sed 's/\.tex//')

PDFLATEXOPEN  := @pdflatex "'\def\mychapters{"
PDFLATEXCLOSE := "}\input{$(MASTER)}'"

# Fine the line number in the makefile with the AUTOSECTION marker.
LINENO := $(shell grep -n AUTOSECTION Makefile  | sed -r 's/^([0-9]*):.*$$/\1/' | tail -n 1)

default:
	@pdflatex $(MASTER)

# Just for testing.
reflect:
	@echo $@

# -------------------------------------------------------- #
# $(chaps)  comma-separated list  from command  line, like #
# so:  make   partial  chaps=chapter1file,chapter2file,... #
# This is  useful for when  you want to compile  more than #
# one chapter, but not the entire document.                #
# -------------------------------------------------------- #
partial:
	@pdflatex "\def\mychapters{$(chaps)}\input{$(MASTER)}"

# -------------------------------------------------------- #
# Generate  new  targets  based on  the  existing  chapter #
# files.  Do not forget to add an \include{chaptername} to #
# the master tex file.                                     #
# -------------------------------------------------------- #
gen:
	@$(foreach chapterfile,$(CHAPTERFILES),\
		echo $(chapterfile):| sed 's/$(CHAPTERDIR)\///' >> Makefile;\
		echo -e '\t'$(PDFLATEXOPEN)$(chapterfile)$(PDFLATEXCLOSE)'\n' >> Makefile;)
	@echo '+ ------------------------------------------------ +'
	@echo '| Do not forget to add an \include{chaptername} to |'
	@echo '| the master tex file.                             |'
	@echo '+ ------------------------------------------------ +'

# -------------------------------------------------------- #
# Remove  everything below  the  AUTOSECTION  line in  the #
# Makefile.                                                #
# -------------------------------------------------------- #
reset:
	@sed "1,$(LINENO)!d" Makefile > new.Makefile
	@printf '\n' >> new.Makefile
	@mv new.Makefile Makefile

# Remove automatic targets, generate new ones.
regen: reset gen

# -------------------------------------------------------- #
# Below  here: Automatically   generated  targets. Do  not #
# remove the AUTOSECTION line,  and only edit the makefile #
# above the AUDOSECTION LINE.                              #
# -------------------------------------------------------- #
# ------------------- # AUTOSECTION # -------------------- #

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

