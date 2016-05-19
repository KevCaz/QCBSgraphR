## ScriptKC
## 2016-05-19

################## - Colors
## @knitr kccolors

# grey => Slidify
colg <- "#505050"
# red => template slidify
colr <- "#8b0000"
# blue => R logo
# colb <- "#4067b5"
# blue => link slifify
colb <- "#4e7bdb"
##
palette(c("transparent", colr, colg, colb))


################## - Functions
## @knitr kcfunction

fillIt <- function(col){
  lp <- par()$usr
  coor <- list(xleft=lp[1], ybottom=lp[3], xright=lp[2], ytop=lp[4])
  do.call("rect", args=as.list(c(coor,col=col)))
}

eplot <- function() plot(0,0, type="n", ann=FALSE, axes=FALSE)

fourplots <- function() {
  for (i in 1:4) {
    eplot()
    fillIt(col=i)
    text(0,0, labels=i, cex=4)
  }
}

################## - par(mfrow)
## @knitr mfrow

par(mfrow=c(2,2), mar=c(1,1,1,1))
fourplots()


################## - screen.split
## @knitr screen
par(mar=c(1,1,1,1))
spl1<- split.screen(c(1, 2))
spl2<- split.screen(c(3, 1), screen = 2)

# split.screen(c(1, 3), screen = 2)
# eplot()
nbs <- c(1,3,4,5)
for (i in 1:4) {
  screen(nbs[i])
  eplot()
  fillIt(col=i)
  text(0,0, labels=i, cex=4)
}

close.screen(all = TRUE)



################## - layout
## @knitr layout
par(mar=c(1,1,1,1))
mat_lay <- matrix(c(1,2,4,1,3,4),nrow=3)
layout(mat_lay)
fourplots()
