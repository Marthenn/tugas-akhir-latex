all: clean install

install:
	mkdir -p output
	mkdir -p build
	latexmk -pdf -bibtex -outdir=../build -cd src/thesis.tex
	cp build/thesis.pdf output

clean:
	rm -rf output/* build/*
	find . -iname "*~" -exec rm '{}' ';'
