ifeq ($(platform), windows)
	TEX = xelatex.exe
	CLEANUP = powershell -Command "Remove-Item *.aux, *.log, *.out, *.toc, *.synctex.gz -ErrorAction SilentlyContinue"
else ifeq ($(platform), mac)
	TEX = xelatex
	CLEANUP = rm -f *.aux *.log *.out *.toc *.synctex.gz
else
$(error Please specify platform with 'platform=windows' or 'platform=mac')
endif

ifndef name
$(error Please specify name with 'name=...')
endif

all: $(name).pdf clean

$(name).pdf: $(name).tex
	$(TEX) $(name).tex
	$(TEX) $(name).tex

clean:
	$(CLEANUP)
