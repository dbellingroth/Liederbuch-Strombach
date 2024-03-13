.DEFAULT_GOAL := build

.PHONY: build clean clean_aux

build: Liederbuch\ Strombach.pdf clean_aux

Liederbuch\ Strombach.pdf: *.tex
	xelatex "Liederbuch Strombach.tex"
	texindy -C utf8 -M inhalt.xdy "Liederbuch Strombach.idx"
	xelatex "Liederbuch Strombach.tex"	

clean_aux:
	-rm *.aux
	-rm "Liederbuch Strombach.out"
	-rm "Liederbuch Strombach.ilg"
	-rm "Liederbuch Strombach.ind"
	-rm "Liederbuch Strombach.log"
	-rm "Liederbuch Strombach.idx"
	-rm inhalt.xdy

clean: clean_aux
	-rm "Liederbuch Strombach.pdf"
