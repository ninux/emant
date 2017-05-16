#!/bin/bash

pdflatex main.tex
bibtex main.aux
pdflatex main.tex
pdflatex main.tex

read -p "Press any key..." -t 10