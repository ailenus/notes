ifeq ($(os), win)
	TEX = lualatex.exe --shell-escape
	CLEAN = powershell -Command "try { Remove-Item *.aux, *.log, *.out, *.toc, *.synctex.gz, tmp-ly -Recurse -Force -ErrorAction Stop } catch { echo . }"
	OPEN = powershell -Command "sumatra"
else ifeq ($(os), mac)
	TEX = lualatex --shell-escape
	CLEAN = rm -rf *.aux *.log *.out *.toc *.synctex.gz tmp-ly
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
