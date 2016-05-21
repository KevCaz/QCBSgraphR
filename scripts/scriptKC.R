## ScriptKC
## 2016-05-19

################## - Colors / par
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

mypar <- list(mar=c(1,1,1,1), las=1)

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

exExport <- function(add=FALSE, ...){
  par(fg="white")
  plot(c(0,1), c(0,1), type="n", ann=FALSE, axes=FALSE)
  fillIt(col=2)
  seqy <- c(.2,.5,.8)
  seqc <- c(.5,1,2)
  for (i in 1:3) {
      text(.65, seqy[i], labels="Maps", cex=seqc[i])
      text(.75, seqy[i], labels=paste0("cex = ", seqc[i]), cex=1, pos=4)
  }
  points(rep(0.35,9), 1:9*.1, pch=rep(15:17, each=3), cex=rep(c(.5,1,2), 3))
  text(rep(0.3,9), 1:9*.1, labels=rep(paste0("cex = ", seqc),3), pos=2)
}
# exExport()

####################################
####################################

################## - par(mfrow)
## @knitr mfrow

par(mfrow=c(2,2), mar=c(1,1,1,1))
fourplots()


################## - screen.split
## @knitr screen
par(mypar)
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
par(mypar)
mat_lay <- matrix(c(1,2,4,1,3,4),nrow=3)
layout(mat_lay)
fourplots()



####################################
####################################

## We now look at 'layout()' in more details

################## - layout/matrix

## @knitr laymat1

par(mypar)
mat_lay <- matrix(c(1,2,4,1,3,4),nrow=3)
layout(mat_lay)
eplot()
# fourplots()

## @knitr laymat2

par(mypar)
mat_lay <- matrix(c(0,2,2,1,3,3,1,4,0),nrow=3)
layout(mat_lay)
fourplots()

## @knitr laywd

par(mypar)
mat_lay <- matrix(c(0,2,2,1,3,3,1,4,0),nrow=3)
layout(mat_lay, widths=c(.25,1,1))
fourplots()


## @knitr layhg

par(mypar)
mat_lay <- matrix(c(0,2,2,1,3,3,1,4,0),nrow=3)
layout(mat_lay, widths=c(.25,1,1), heights=c(.2,1,.4))
fourplots()


## @knitr laymar
mat_lay <- matrix(c(0,2,2,1,3,3,1,4,0),nrow=3)
layout(mat_lay, widths=c(.25,1,1),
  heights=c(.2,1,.4))

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

par(mypar)
# fig 1
eplot()
fillIt(col=2)
text(0,0, labels=1, cex=4)

## @knitr fignew2

par(mar=c(1,1,1,1), las=1)
eplot()
fillIt(col=2)
text(0,0, labels=1, cex=4)
par(new=TRUE, fig=c(0.5,1,0.5,1))
# fig 2
eplot()
fillIt(col=3)
text(0,0, labels=2, cex=4)
axis(2)

## @knitr rmvcomment



####################################
####################################
## Exportation

## @knitr export1
png(filename="assets/img/fig1.png")
  par(mypar)
  exExport()
dev.off()

## @knitr export2
png(filename="assets/img/fig2.png", width=1440, height=1440)
  par(mypar)
  exExport()
dev.off()

## @knitr export3
png(filename="assets/img/fig3.png", res=72)
  par(mypar)
  exExport()
  axis(2, at=seq(0,1,by=1/20), label=seq(0,480,by=24), tcl=-.25,  pos=.5, col.axis="white")
  hl <- c(233,247,372,397)
  abline(h=hl/480, col="white")
dev.off()


## @knitr export4
png(filename="assets/img/fig4.png",res=144)
  par(mypar)
  exExport()
dev.off()

## @knitr export5
png(filename="assets/img/fig5.png", res=144, height=7, width=7, unit="in")
  par(mypar)
  exExport()
dev.off()


## @knitr export6
png(filename="assets/img/fig6.png", res=288, height=7, width=7, unit="in")
  exExport()
dev.off()


## @knitr export7
png(filename="assets/img/fig7.png", res=288, height=7, width=7, unit="in")
  par(mypar)
  par(mfrow=c(2,1))
  exExport()
  eplot()
  fillIt(colb)
dev.off()


## @knitr export8
png(filename="assets/img/fig8.png", res=288, height=2*7, width=7, unit="in")
  par(mypar)
  par(mfrow=c(2,1))
  exExport()
  eplot()
  fillIt(colb)
dev.off()


## @knitr pdf1
pdf(file="assets/img/fig9.pdf", height=7, width=7)
  par(mypar)
  exExport()
dev.off()


## @knitr svg1
svg(filename="assets/img/fig10.svg", height=7, width=7)
  par(mypar)
  exExport()
dev.off()
