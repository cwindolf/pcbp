pandoc_cmd=pandoc --metadata-file=metadata.yml --pdf-engine=xelatex --include-in-header=preamble.tex --toc --toc-depth=2 -V documentclass=report --filter pandoc-theorem-exe

scratch_cmd=pandoc --metadata-file=metadata.yml --pdf-engine=xelatex --include-in-header=preamble.tex -V documentclass=article --filter pandoc-theorem-exe


.PHONY: all
all: pdf/notes.pdf pdf/ex.pdf pdf/scratch.pdf

.PHONY: clean
clean:
	rm -f pdf/*

pdf/notes.pdf: notes/*.md Makefile metadata.yml
	@echo "notes.pdf"
	$(pandoc_cmd) -o $@ notes/*.md

pdf/ex.pdf: ex/*.md Makefile metadata.yml
	@echo "ex.pdf"
	$(pandoc_cmd) -o $@ ex/*.md

pdf/scratch.pdf: scratch.md Makefile metadata.yml
	@echo "scratch.pdf"
	$(scratch_cmd) -o $@ scratch.md
