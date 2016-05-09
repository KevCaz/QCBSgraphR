rmd=./lecture/index.Rmd
html=./lecture/index.html

ALL: $(html)

$(html): $(rmd)
	Rscript get_slidify.R `pwd`
