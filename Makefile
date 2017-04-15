rmd=./docs/index.Rmd
html=./docs/index.html

ALL: $(html)

$(html): $(rmd)
	Rscript --no-site-file --no-init-file -e 'library(slidify); slidify('./docs/index.Rmd')'

clean:
	rm ./docs/index.md ./docs/index.html
	rm -rf ./docs/.cache
