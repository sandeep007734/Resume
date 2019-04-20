RM     := /bin/rm -rf

all: 
	pdflatex main ; bibtex main; pdflatex main; pdflatex main; evince main.pdf & 
	$(RM)  *.log *.aux *.blg *.bbl *~* main.out *.synctex.gz 
nobib: 
	pdflatex main ; pdflatex main; pdflatex main

clean: 
	$(RM) *.dvi paper.ps *.log *.aux *.pdf *.blg *.bbl *~* main.out *.synctex.gz
