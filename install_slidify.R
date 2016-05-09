###
### INSTALL SLIDIFY
###

### Installation
library(devtools)

install_github("ramnathv/slidify")
install_github("ramnathv/slidifyLibraries")

### Generate deck
library(slidify)

setwd('~/MEGA/QCBSgraphR')
# setwd('~/Github/formations/QCBSgraphR')
author('lecture', use_git = FALSE, open_rmd = FALSE)
