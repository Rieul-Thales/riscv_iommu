HEADER_SOURCE := header.adoc
PDF_RESULT := riscv-iommu.pdf

all: build

build:

	@echo "Building asciidoc"
	asciidoctor-pdf \
    --attribute=mathematical-format=svg \
    --attribute=pdf-fontsdir=docs-resources/fonts \
    --attribute=pdf-style=docs-resources/themes/riscv-pdf.yml \
    --failure-level=ERROR \
    --require=asciidoctor-bibtex \
    --require=asciidoctor-diagram \
    --out-file=$(PDF_RESULT) \
    $(HEADER_SOURCE)

clean:
	rm $(PDF_RESULT)
