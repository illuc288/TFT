open: notes.pdf
	open notes.pdf

notes.pdf: main.tex notes.bbl notes.aux
	pdflatex -jobname notes main

notes.aux:

notes.bbl: refs.bib
	pdflatex -jobname notes main
	bibtex notes
	pdflatex -jobname notes main

clean:
	rm *.toc *.aux *.log *.out *.blg *.bbl
