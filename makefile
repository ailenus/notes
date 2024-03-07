ifeq ($(os), win)
	TEX = lualatex.exe
	CLEAN = powershell -Command "Remove-Item *.aux, *.log, *.out, *.toc, *.synctex.gz -ErrorAction SilentlyContinue"
	OPEN = powershell -Command "sumatra"
else ifeq ($(os), mac)
	TEX = lualatex
	CLEAN = rm -f *.aux *.log *.out *.toc *.synctex.gz
	OPEN = open -a Preview.app
else
$(error Please specify platform with 'os=win' or 'os=mac')
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
