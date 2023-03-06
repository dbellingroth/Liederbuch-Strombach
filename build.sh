#!/bin/sh
# Script zum Kompilieren unter Linux und macOS
xelatex "Liederbuch Strombach.tex"
texindy -C utf8 -M inhalt.xdy "Liederbuch Strombach.idx"
xelatex "Liederbuch Strombach.tex"
rm *.aux
rm "Liederbuch Strombach.out"
rm "Liederbuch Strombach.ilg"
rm "Liederbuch Strombach.ind"
rm "Liederbuch Strombach.log"
rm "Liederbuch Strombach.idx"
rm inhalt.xdy
