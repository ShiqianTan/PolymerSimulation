# Makefile — compile all Markdown docs into a single PDF book
# Requires: pandoc, xelatex (or pdflatex)
# Install on macOS: brew install pandoc && brew install --cask basictex
#   then:          sudo tlmgr update --self && sudo tlmgr install collection-fontsrecommended

OUTPUT      := PolymerSimulation.pdf
PANDOC      := pandoc
PDF_ENGINE  := xelatex
DATE        := $(shell date +%Y-%m-%d)

# Chapter order: root intro first, then subject folders
SOURCES := \
	README.md \
	papers/README.md \
	tutorials/README.md \
	scripts/README.md \
	tools/README.md \
	code/README.md \
	resources/README.md

# Search path for images/assets in any subfolder
RESOURCE_PATH := .:papers:tutorials:scripts:tools:code:resources

PANDOC_FLAGS := \
	--pdf-engine=$(PDF_ENGINE) \
	--toc \
	--toc-depth=3 \
	--number-sections \
	--resource-path=$(RESOURCE_PATH) \
	-V geometry:margin=1in \
	-V fontsize=11pt \
	-V documentclass=report \
	-V colorlinks=true \
	-V linkcolor=NavyBlue \
	-V urlcolor=NavyBlue \
	-V toccolor=NavyBlue \
	--metadata title="Polymer Simulation Knowledge Base" \
	--metadata author="ShiqianTan" \
	--metadata date="$(DATE)" \
	--highlight-style=tango \
	-V header-includes="\usepackage{booktabs}\usepackage{longtable}\usepackage{array}"

.PHONY: all clean check-deps install-deps help

all: check-deps $(OUTPUT)

$(OUTPUT): $(SOURCES)
	$(PANDOC) $(PANDOC_FLAGS) -o $@ $^
	@echo "Built: $@"

clean:
	rm -f $(OUTPUT)

# Verify required tools are on PATH
check-deps:
	@command -v $(PANDOC) >/dev/null 2>&1 || \
		{ echo "Error: pandoc not found. Run: make install-deps"; exit 1; }
	@command -v $(PDF_ENGINE) >/dev/null 2>&1 || \
		{ echo "Error: $(PDF_ENGINE) not found. Run: make install-deps"; exit 1; }
	@echo "Dependencies OK (pandoc + $(PDF_ENGINE) found)."

# One-time setup on macOS with Homebrew
install-deps:
	@echo "==> Installing pandoc..."
	brew install pandoc
	@echo ""
	@echo "==> Installing BasicTeX (minimal LaTeX distribution)..."
	brew install --cask basictex
	@echo ""
	@echo "==> You may need to restart your shell, then run:"
	@echo "    sudo tlmgr update --self"
	@echo "    sudo tlmgr install collection-fontsrecommended"

help:
	@echo "Targets:"
	@echo "  all          Build $(OUTPUT)  (default)"
	@echo "  clean        Remove $(OUTPUT)"
	@echo "  check-deps   Verify pandoc and $(PDF_ENGINE) are available"
	@echo "  install-deps Install dependencies via Homebrew (macOS)"
