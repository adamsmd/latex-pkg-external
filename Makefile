all-pdf: standalone-pdf
	pdflatex -shell-escape external.tex
	pdflatex -shell-escape external.tex

all-xe: standalone-pdf
	xelatex -shell-escape external.tex
	xelatex -shell-escape external.tex

all-lua: standalone-pdf
	lualatex -shell-escape external.tex
	lualatex -shell-escape external.tex

standalone: standalone-pdf
standalone-pdf:
	pdflatex external-standalone-simple.tex
	pdflatex external-standalone-catcode.tex
	pdflatex external-standalone-hash.tex

standalone-xe:
	xelatex external-standalone-simple.tex
	xelatex external-standalone-catcode.tex
	xelatex external-standalone-hash.tex

standalone-lua:
	lualatex external-standalone-simple.tex
	lualatex external-standalone-catcode.tex
	lualatex external-standalone-hash.tex

clean:
	rm -f *.aux *.dim *.glo *.idx *.log *.listing *.out *.pdf
	rm -f external-inline-* external-external-*
