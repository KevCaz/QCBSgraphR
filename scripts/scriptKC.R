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


################## - Functions and packages
## @knitr kcfunction

library(plotrix)

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




####################################
####################################

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



####################################
####################################

## We now look at 'layout()' in more details

################## - layout/matrix

## @knitr laymat1

par(mar=c(1,1,1,1))
mat_lay <- matrix(c(1,2,4,1,3,4),nrow=3)
layout(mat_lay)
eplot()
# fourplots()

## @knitr laymat2

par(mar=c(1,1,1,1))
mat_lay <- matrix(c(0,2,2,1,3,3,1,4,0),nrow=3)
layout(mat_lay)
fourplots()

## @knitr laywd

par(mar=c(1,1,1,1))
mat_lay <- matrix(c(0,2,2,1,3,3,1,4,0),nrow=3)
layout(mat_lay, widths=c(.25,1,1))
fourplots()


## @knitr layhg

par(mar=c(1,1,1,1))
mat_lay <- matrix(c(0,2,2,1,3,3,1,4,0),nrow=3)
layout(mat_lay, widths=c(.25,1,1), heights=c(.2,1,.4))
fourplots()


## @knitr laymar
mat_lay <- matrix(c(0,2,2,1,3,3,1,4,0),nrow=3)
layout(mat_lay, widths=c(.25,1,1), heights=c(.2,1,.4))
for (i in 1:4) {
  if (i<3) par(mar=rep(1,4)) else par(mar=rep(4,4))
  eplot()
  fillIt(col=i)
  text(0,0, labels=i, cex=4)
}

## @knitr rmvcomment

####################################
####################################

## Embeded figures

## @knitr fignew1

par(mar=c(1,1,1,1))
eplot()
fillIt(col=2)
text(0,0, labels=1, cex=4)

## @knitr fignew2

eplot()
fillIt(col=1)
