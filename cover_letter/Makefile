RM     := /bin/rm -rf

.PHONY: all clean

all:
	TEXINPUTS=..:$(TEXINPUTS) latexmk -xelatex -interaction=nonstopmode -file-line-error cover_letter.tex
	cp cover_letter.pdf ../docs/cover_letter.pdf

clean:
	latexmk -C
	$(RM) paper.ps *~*
