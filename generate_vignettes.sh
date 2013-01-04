#!/bin/sh

R CMD Sweave ~/projects/quant/isobar/inst/doc/isobar.Rnw && R CMD pdflatex isobar.tex && R CMD pdflatex isobar.tex

R CMD Sweave ~/projects/quant/isobar/inst/doc/isobar-ptm.Rnw && R CMD pdflatex isobar-ptm.tex && R CMD pdflatex isobar-ptm.tex
