all:
	pdflatex external.ins
	pdflatex -shell-escape external.dtx

all-pdf: standalone-pdf
	pdflatex -shell-escape example.tex

all-xe: standalone-pdf
	xelatex -shell-escape example.tex

all-lua: standalone-pdf
	lualatex -shell-escape example.tex

standalone: standalone-pdf
standalone-pdf:
	pdflatex example-standalone-simple.tex
	pdflatex example-standalone-catcode.tex
	pdflatex example-standalone-hash.tex

standalone-xe:
	xelatex example-standalone-simple.tex
	xelatex example-standalone-catcode.tex
	xelatex example-standalone-hash.tex

standalone-lua:
	lualatex example-standalone-simple.tex
	lualatex example-standalone-catcode.tex
	lualatex example-standalone-hash.tex

clean:
	rm -f *.aux *.dim *.glo *.idx *.log *.listing *.out *.pdf
	rm -f example-inline-* example-external-*
	rm -f external-external-* external-standalone-*
	rm -f external.sty external.code.sty
