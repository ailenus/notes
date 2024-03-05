NAME=template
TEX=xelatex.exe
# BIBTEX=bibtex.exe

SRC=$(wildcard *.tex)
# REF=$(wildcard *.bib)

default: $(NAME).pdf clean open

$(NAME).pdf: $(SRC) # $(REF)
	$(TEX) $(NAME)
# $(BIBTEX) $(NAME)
	$(TEX) $(NAME)
# $(TEX) $(NAME)

# this returns error code 1 but opens the PDF file using the default viewer
open:
	Explorer.exe $(NAME).pdf

clean:
	del *.aux *.log *.blg *.out *.toc *.nay *.snm *.dvi *.bbl
