all: docs

docs: docs-pdf
docs-pdf: standalone-pdf
	pdflatex -shell-escape locpream.tex
	makeindex locpream.idx
	pdflatex -shell-escape locpream.tex
	pdflatex -shell-escape locpream.tex

docs-xe: standalone-pdf
	xelatex -shell-escape locpream.tex
	pdflatex -shell-escape locpream.tex
	xelatex -shell-escape locpream.tex
	xelatex -shell-escape locpream.tex

docs-lua: standalone-pdf
	lualatex -shell-escape locpream.tex
	pdflatex -shell-escape locpream.tex
	lualatex -shell-escape locpream.tex
	lualatex -shell-escape locpream.tex

standalone: standalone-pdf
standalone-pdf:
	pdflatex locpream-standalone-simple.tex
	pdflatex locpream-standalone-catcode.tex
	pdflatex locpream-standalone-hash.tex

standalone-xe:
	xelatex locpream-standalone-simple.tex
	xelatex locpream-standalone-catcode.tex
	xelatex locpream-standalone-hash.tex

standalone-lua:
	lualatex locpream-standalone-simple.tex
	lualatex locpream-standalone-catcode.tex
	lualatex locpream-standalone-hash.tex

clean:
	rm -f *.aux *.dim *.glo *.idx *.ilg *.ind *.log *.out *.tcbtemp *.toc
	rm -f locpream-locpream-* locpream-standalone-*.pdf
