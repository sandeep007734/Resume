RM     := /bin/rm -rf

.PHONY: all clean copy

all:
	TEXINPUTS=..:$(TEXINPUTS) latexmk -xelatex -interaction=nonstopmode -file-line-error cover_letter.tex
# 	$(MAKE) copy


copy:
	@if [ -f cover_letter.pdf ]; then \
		cp cover_letter.pdf ../docs/sandeep_cover_letter.pdf; \
		echo "SUCCESS: copied -> ../docs/sandeep_cover_letter.pdf"; \
		if [ -d "$$HOME/Downloads" ]; then \
			cp cover_letter.pdf "$$HOME/Downloads/sandeep_cover_letter.pdf"; \
			echo "SUCCESS: copied -> $$HOME/Downloads/sandeep_cover_letter.pdf"; \
		else \
			echo "INFO: $$HOME/Downloads not found; skipping Downloads copy"; \
		fi; \
	else \
		echo "ERROR: cover_letter.pdf not found; run 'make' first." 1>&2; \
	fi

clean:
	latexmk -C
	$(RM) paper.ps *~*
