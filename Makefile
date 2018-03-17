PDFLATEX := pdflatex
PDFOPTS := -halt-on-error

sources := $(wildcard *.tex)
pdf := $(sources:.tex=.pdf)
aux := $(sources:.tex=.aux) $(sources:.tex=.log) $(sources:.tex=.out)

.PHONY: all cleanaux clean

all: $(pdf)

%.pdf: %.tex
	$(PDFLATEX) $(PDFOPTS) $+

cleanaux:
	rm -f $(aux)

clean: cleanaux
	rm -f $(pdf)
