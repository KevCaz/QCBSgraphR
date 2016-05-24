## How to code a boxplot on your own
## a dataframe
## without outliers


myboxpot <- function(x, add=FALSE, ...){

  qx <- apply(x,2, quantile, probs=.01*c(5,25,50,75,95))
  nb <- ncol(qx)
  seqx <- 0:nb
  seqc <- 1:nb - .5

  ## empty plot
  if (!add) plot(c(0,nb), range(qx), type='n', axes=FALSE, ann=FALSE)

  ##
  for (i in (1:nb)){
    cx1 <- seqx[i]+.2
    cx2 <- seqx[i]+.8
    cc <- seqc[i]
    # box
    rect(cx1, qx[2,i], cx2, qx[4,i], ...)
    # med
    lines(c(cx1,cx2), rep(qx[3,i],2,), lwd=2)
    #
    segments(cc, qx[1,i], y1=qx[2,i])
    segments(cc, qx[4,i], y1=qx[5,i])
    #
    segments(cx1, qx[1,i], x1=cx2)
    segments(cx1, qx[5,i], x1=cx2)
  }
  axis(1, seqc, labels=colnames(x))
  axis(2)
  box(bty="l")
}

mydata <- data.frame(matrix(runif(500),100))
myboxpot(mydata)
myboxpot(mydata, col="grey85")
