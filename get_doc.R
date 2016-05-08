## Script to get the documents

#
ext_arg <- commandArgs(trailingOnly=TRUE)
setwd(ext_arg)
##
rmarkdown::render("./cours_program.Rmd", output_dir="./docs", "all")
