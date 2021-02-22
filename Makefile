.PHONY: view all clean

DOC:=cv
PDF:=$(DOC).pdf
TEX:=$(DOC).tex

view: all
	zathura $(PDF)

all: $(PDF)

$(PDF): $(TEX)
	pdflatex $<

clean:
	rm -f $(PDF) $(DOC).log
