# Nikita Kouevda
# 2013/09/05

# LaTeX compiler and options
PDFLATEX = pdflatex
PDFOPTS = -halt-on-error

# Sources, targets, and other output files
SOURCES = $(wildcard *.tex)
TARGETS = $(SOURCES:.tex=.pdf)
AUX = $(SOURCES:.tex=.aux)
LOG = $(SOURCES:.tex=.log)
OUT = $(SOURCES:.tex=.out)

# Phony targets
.PHONY: all cleanaux clean

all: $(TARGETS)

%.pdf: %.tex
	$(PDFLATEX) $(PDFOPTS) $+

cleanaux:
	rm -f $(AUX) $(LOG) $(OUT)

clean: cleanaux
	rm -f $(TARGETS)
