doc: build/informe.pdf

build:
	-mkdir -p build/imagenes

build/informe.pdf: build
	pdflatex --output-directory build doc/informe.tex
	pdflatex --output-directory build doc/informe.tex
	pdflatex --output-directory build doc/informe.tex

clean:
	rm -rf build
	rm -f Trabajo\ de\ campo.pdf

doc-preview: doc
	cp build/informe.pdf Trabajo\ de\ campo.pdf
	evince Trabajo\ de\ campo.pdf &
