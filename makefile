ifeq ($(platform), windows)
	TEX = xelatex.exe
	CLEAN = powershell -Command "Remove-Item *.aux, *.log, *.out, *.toc, *.synctex.gz -ErrorAction SilentlyContinue"
	OPEN = Explorer.exe
else ifeq ($(platform), mac)
	TEX = xelatex
	CLEAN = rm -f *.aux *.log *.out *.toc *.synctex.gz
	OPEN = open -a Preview.app
else
$(error Please specify platform with 'platform=windows' or 'platform=mac')
endif

ifndef name
$(error Please specify filename with 'name={filename}')
endif

all: $(name).pdf clean open

$(name).pdf: $(name).tex
	$(TEX) $(name).tex
	$(TEX) $(name).tex

open:
	$(OPEN) $(name).pdf

clean:
	$(CLEAN)
