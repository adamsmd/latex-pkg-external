all: standalone
	pdflatex -shell-escape example.tex

standalone:
	pdflatex example-standalone-simple.tex
	pdflatex example-standalone-catcode.tex
	pdflatex example-standalone-hash.tex

clean:
	rm -f *.aux *.dim *.log *.listing *.pdf
	rm -f example-inline-*
