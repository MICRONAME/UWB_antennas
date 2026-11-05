LATEX ?= tectonic

.PHONY: all article clean

# The repository contains one article; make/all build only that article.
all: article

article:
	mkdir -p build
	$(LATEX) -o build article.tex

clean:
	rm -rf build dist
	rm -f *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.log *.out *.run.xml *.synctex.gz *.toc *.xdv
	rm -f article.pdf
