pdfs = cv.pdf research_plan.pdf financial_plan.pdf publication_list.pdf

all: $(pdfs)

#merge: $(pdfs)
#	./merge.sh

#%.pdf: %.ps
#	# figures in PDF-format
#	#pdflatex $(dname)
#	#bibtex $(dname)
#	#pdflatex $(dname)
#	#pdflatex $(dname)
#	ps2pdf -dPDFSETTINGS=/prepress -dEmbedAllFonts=true -dSubsetFonts=true $(basename $@).ps $(basename $@).pdf

%.pdf: %.tex essay.cls
	# figures in EPS-format
	pdflatex $(basename $@)
	if test -f $(basename $@).bib;  \
	    then bibtex $(basename $@); \
	fi
	pdflatex $(basename $@)
	pdflatex $(basename $@)
	#dvips -o $(basename $@).ps -G0 -Ppdf $(basename $@)

clean:
	rm -f *.ps *.aux *.bbl *.blg *.dvi \
	*.log *.out *.toc *.lof \
	*.lot $(pdfs)
