RM     := /bin/rm -rf

.PHONY: all clean copy

all:
	xelatex -interaction=nonstopmode -file-line-error main.tex
# 	$(MAKE) copy
	

copy:
	@if [ -f main.pdf ]; then \
		cp main.pdf docs/sandeep_cv_latest.pdf; \
		echo "SUCCESS: copied -> docs/sandeep_cv_latest.pdf"; \
		if [ -d "$$HOME/Downloads" ]; then \
			cp main.pdf "$$HOME/Downloads/sandeep_cv_latest.pdf"; \
			echo "SUCCESS: copied -> $$HOME/Downloads/sandeep_cv_latest.pdf"; \
		else \
			echo "INFO: $$HOME/Downloads not found; skipping Downloads copy"; \
		fi; \
	else \
		echo "ERROR: main.pdf not found; run 'make' first." 1>&2; \
	fi


clean:
	latexmk -C
	$(RM) paper.ps *~*
