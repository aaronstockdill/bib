SML_FILES=src/bib.sml

.PHONY: all clean dirs
all: pdf bib

clean:
	mv doc/mybook.cls mybook.cls
	rm -f doc/* src/* bin/*
	mv mybook.cls doc/mybook.cls

dirs:
	mkdir -p doc src bin



# Documentation

doc: pdf

pdf: doc/bib.tex
	cd doc && xelatex bib.tex # latexmk -pdf

doc/bib.tex: bib.nw dirs
	noweave -delay $< > $@



# Executables

bib: bin/bib

bin/bib: $(SML_FILES)
	mlton -output ./bin/bib ./src/bib.sml

src/%.sml: bib.nw dirs
	notangle -R$(notdir $@) $< > $@
