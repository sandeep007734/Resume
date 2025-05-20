RM     := /bin/rm -rf

all: 
	xelatex main ; bibtex main; xelatex main; xelatex main ; 
	$(RM)  *.log *.aux *.blg *.bbl *~* main.out *.synctex.gz 
	cp main.pdf docs/sandeep.pdf
	# evince docs/sandeep.pdf
nobib: 
	xelatex main ; xelatex main; xelatex main

clean: 
	$(RM) *.dvi paper.ps *.log *.aux *.pdf *.blg *.bbl *~* main.out *.synctex.gz
