# DEFINITIONS -----------------------------------------------------------------
DOC_PRINT = report_print
DOC_ONLINE = report_online
DOC_OUT_PRINT = EMANT_FS17_Labor_1_Team_Birrer_Mazlagic_Printversin.pdf
DOC_OUT_ONLINE = EMANT_FS17_Labor_1_Team_Birrer_Mazlagic_Onlineversion.pdf
OBJ_DIR = ./obj
FIG_DIR = ./../fig
DATA_DIR = ./../../sim

# TARGETS ---------------------------------------------------------------------
.PHONY: all bib doc figures latex gloss clean online print

online: figures data latex_online gloss_online bib_online doc_online clean

print: figures data latex_print gloss_print doc_print clean

# PRINT AND ONLINE VERSION ----------------------------------------------------
all: online print
	
# PRINT VERSION ---------------------------------------------------------------
doc_print:
	pdflatex $(DOC_PRINT).tex
	for i in {1..3}; do \
		pdflatex $(DOC_PRINT).tex; \
	done
	mv $(DOC_PRINT).pdf $(OBJ_DIR)/$(DOC_OUT_PRINT)

latex_print:
	pdflatex $(DOC_PRINT).tex

bib_print:
	bibtex $(DOC_PRINT).aux
 
gloss_print:
	makeglossaries $(DOC_PRINT)

# ONLINE VERSION --------------------------------------------------------------
doc_online:
	pdflatex $(DOC_ONLINE).tex
	for i in {1..3}; do \
		pdflatex $(DOC_ONLINE).tex; \
	done
	mv $(DOC_ONLINE).pdf $(OBJ_DIR)/$(DOC_OUT_ONLINE)

latex_online:
	pdflatex $(DOC_ONLINE).tex

bib_online:
	bibtex $(DOC_ONLINE).aux
 
gloss_online:
	makeglossaries $(DOC_ONLINE)

# COMMON ----------------------------------------------------------------------
figures:
	$(MAKE) -C $(FIG_DIR)

data:
	#$(MAKE) all -C $(DATA_DIR)


clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.lof
	rm -f *.log
	rm -f *.lot
	rm -f *.toc
	rm -f *.glg
	rm -f *.glo
	rm -f *.gls
	rm -f *.glsdefs
	rm -f *.out
	rm -f *.xdy
	rm -f *.acn
	rm -f *.acr
	rm -f *.alg
	rm -f $(DOC_PRINT).pdf
	rm -f $(DOC_ONLINE).pdf
