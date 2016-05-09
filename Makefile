rmd=./lecture/index.Rmd
html=./lecture/index.html

ALL: $(html)

$(html): $(rmd)
	Rscript --no-site-file --no-init-file get_slidify.R `pwd`
