.DEFAULT_GOAL := manuscript

LATEXMK ?= latexmk
LATEX_FLAGS := -pdf -interaction=nonstopmode -halt-on-error -file-line-error -no-shell-escape
MANUSCRIPT := Raw material/disk_log_gas_limits.tex

.PHONY: manuscript working compactness

manuscript:
	mkdir -p build/manuscript
	$(LATEXMK) $(LATEX_FLAGS) -outdir=build/manuscript "$(MANUSCRIPT)"

working:
	mkdir -p build/working
	$(LATEXMK) $(LATEX_FLAGS) -outdir=build/working main.tex

compactness:
	mkdir -p build/compactness
	$(LATEXMK) $(LATEX_FLAGS) -outdir=build/compactness compactness.tex
