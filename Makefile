clean:
	rm -f *.dim *.aux *.log *.pdf
	rm -f example-inline-*

standalone:
	pdflatex example-standalone.tex
	pdflatex example-standalone-catcode.tex
	pdflatex example-standalone-hash.tex
