pandoc_cmd=pandoc --metadata-file=metadata.yml --pdf-engine=xelatex --template=tmpl.tex --toc --toc-depth=2 -V documentclass=report --filter pandoc-theorem-exe

.PHONY: all
all: notes.pdf ex.pdf

.PHONY: clean
clean:
	rm -f notes.pdf ex.pdf

notes.pdf: notes/*.md Makefile metadata.yml
	@echo "notes.pdf"
	$(pandoc_cmd) -o $@ notes/*.md

ex.pdf: ex/*.md Makefile metadata.yml
	@echo "ex.pdf"
	$(pandoc_cmd) -o $@ ex/*.md
