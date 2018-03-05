#Este trabalho está licenciado sob a Licença Creative Commons Atribuição-CompartilhaIgual 3.0 Não Adaptada. Para ver uma cópia desta licença, visite https://creativecommons.org/licenses/by-sa/3.0/ ou envie uma carta para Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.

########################################
#
# ATENÇÃO
#
# POR SEGURANÇA, NÃO EDITE ESTE ARQUIVO.
#
########################################

pdf: livro.tex
	cp config-pdf.knd config.knd
	pdflatex livro
	pdflatex livro	
	pdflatex livro

dvi: livro.tex
	cp config-pdf.knd config.knd
	latex livro
	latex livro	
	latex livro

html: livro.html

livro.html: livro.tex
	rm -f html/*
	cp config-html.knd config.knd
	mkdir -p html
	latex livro
	latex livro
	latex livro
	htlatex livro "myconfig,3,notoc*" " -cunihtf" "-d./html/"
	cp config-pdf.knd config.knd

.PHONY: clean

clean:
	rm -f *.aux *.log *.out *.toc *.bbl \
	*.idx *.ilg *.ind *.blg *.backup \
	*.4tc *.lg *.tmp *.xref *.png *.html \
	*.4ct *.css *.idv *.maf *.mtc *.mtc0 \
	*.xml

