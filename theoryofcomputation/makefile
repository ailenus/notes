NAME=theoryofcomputation
TEX=xelatex.exe

SRC=$(wildcard *.tex)

default: $(NAME).pdf clean open

$(NAME).pdf: $(SRC)
	$(TEX) -shell-escape $(NAME)
	$(TEX) -shell-escape $(NAME)

open:
	Explorer.exe $(NAME).pdf

clean:
	del *.aux *.log *.blg *.out *.toc *.nay *.snm *.dvi *.bbl
