RM     := /bin/rm -rf

all: 
	xelatex -interaction=nonstopmode main ; bibtex main; xelatex -interaction=nonstopmode main; xelatex -interaction=nonstopmode main ; 
	$(RM)  *.log *.aux *.blg *.bbl *~* main.out *.synctex.gz 
	cp main.pdf docs/sandeep.pdf
	evince docs/sandeep.pdf
nobib: 
	xelatex -interaction=nonstopmode main ; xelatex -interaction=nonstopmode main; xelatex -interaction=nonstopmode main

clean: 
	$(RM) *.dvi paper.ps *.log *.aux *.pdf *.blg *.bbl *~* main.out *.synctex.gz
