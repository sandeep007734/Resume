RM     := /bin/rm -rf

.PHONY: all clean

all:
	xelatex -interaction=nonstopmode -file-line-error main.tex
	cp main.pdf docs/sandeep_cv_latest.pdf

clean:
	latexmk -C
	$(RM) paper.ps *~*
