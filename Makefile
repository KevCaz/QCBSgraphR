RMD=./cours_program.Rmd
PDF=./document/cours_program.pdf
# REF=library.bib
# CSL=styles/theoretical-ecology.csl
# PFLAGS=  --latex-engine=pdflatex #--bibliography=$(REF) --csl=$(CSL)

ALL: $(PDF)

$(PDF): $(RMD)
	Rscript get_doc.R `pwd`
