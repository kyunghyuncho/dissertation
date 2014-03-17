# Name of thesis (without postfix)
dname=diss_pre_new

#all: $(name).pdf $(name).ps
all: $(name).pdf 
    
$(name).pdf: $(dname).tex 
#$(name).pdf: $(name).ps
	# figures in PDF-format
	pdflatex $(dname)
	#bibtex $(dname)
	pdflatex $(dname)
	#pdflatex $(dname)
	#ps2pdf -dPDFSETTINGS=/prepress -dEmbedAllFonts=true -dSubsetFonts=true $(dname).ps $(dname).pdf

$(name).ps: $(dname).tex 
	# figures in EPS-format
	latex $(dname)
	dvips -o $(dname).ps -G0 -Ppdf $(dname)

clean:
	rm -f $(dname).ps $(dname).aux $(dname).bbl $(dname).blg $(dname).dvi \
	$(dname).log $(dname).out $(dname).toc $(dname).lof \
	$(dname).lot $(dname).pdf
