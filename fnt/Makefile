name=main

#all: $(name).pdf $(name).ps
all: $(name).pdf 
    
#$(name).pdf: $(name).ps
$(name).pdf: $(name).tex 
	# figures in PDF-format
	#ps2pdf -dPDFSETTINGS=/prepress -dEmbedAllFonts=true -dSubsetFonts=true $(dname).ps $(dname).pdf
	pdflatex -shell-escape $(name)
	bibtex $(name) || true
	makeindex $(name).nlo -s nomencl.ist -o $(name).nls
	pdflatex -shell-escape $(name)
	pdflatex -shell-escape $(name)

$(name).ps: $(dname).tex $(bname).bib
	# figures in EPS-format
	latex $(dname)
	bibtex $(dname)
	latex $(dname)
	latex $(dname)
	dvips -o $(dname).ps -G0 -Ppdf $(dname)

clean:
	rm -f $(name).ps $(name).aux $(name).bbl $(name).blg $(name).dvi \
	$(name).log $(name).out $(name).toc $(name).lof \
	$(name).lot $(name).pdf
