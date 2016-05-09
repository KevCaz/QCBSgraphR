library(slidify)
ext_arg <- commandArgs(trailingOnly=TRUE)
setwd(ext_arg)
slidify('./lecture/index.Rmd')
