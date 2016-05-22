#######
##
##
##
##
##
##
##
setwd("~/Github/formations/QCBSgraphR")
##
load("data/word_eng.Rdata")
##
countbin <- function(pos, sz, bin=15){
  cool <- (pos+c(-1,0))/sz*(bin)
  # print(cool)
  rt1 <- cool[1]-floor(cool[1])
  rt2 <- cool[2]-floor(cool[2])
  rg <- floor(cool[1]):(floor(cool[2]))
  if (rt2==0) rg <- floor(cool[1]):(floor(cool[2])-1)
  rg <- rg+1
  val <- rep(1,length(rg))
  if (rt2>0) val[length(val)] <- rt2
  if (rt1>0) val[1] <- 1-rt1
  return(cbind(rg,val=val/sum(val)))
}

# countbin(2, sz=12, bin=15)

##
letter_tot <- unlist(strsplit(word_eng,""))
letter_freq <- table(letter_tot)/length(letter_tot)*100
# plot(letter_freq, type="h")
##
mycount <- function(x, pattern="a"){
  vec <- unlist(strsplit(x,""))
  val <- grep(pattern, vec)
  sz
  if (length(val)==0) out <- 0 else {

  }
  return(out)
}
##
datlet <- data.frame(matrix(0,15,26))
colnames(datlet) <- letters[1:26]
##
boom <- strsplit(word_eng,"")


for (i in 1:26){
  cat(paste0("\r letter:  ", letters[i]))
  match_let <- lapply(boom, grep, pattern=letters[i])
  sz_match <- lapply(match_let, length)
  vec_pos <- unlist(match_let)
  vec_sz <- rep(nchar(word_eng), unlist(sz_match))
  mydata <- cbind(vec_pos, vec_sz)
  # dat_wher <- countbin(vec_pos[1],vec_sz[1],15)
  dat_wher <- apply( mydata, 1,  FUN=function(x) countbin(x[1],x[2],15))
  dat_wher <- do.call( "rbind", dat_wher)
  cool <- aggregate(val~rg, data=dat_wher, FUN=sum)
  for (j in 1:nrow(cool)){
    datlet[j,i] <- cool[cool[j,1], 2]
  }
}
cat("\n")


## Figure
pdf("~/Desktop/cool.pdf", width=6, height=12)

mypal <- colorRampPalette(c("#ffffd1","#981729"))(8)
mybin <- c(0,0.1,0.5,1,2,3,5,9)

fallInto <- function (x) max(which(x > mybin))
categ <- sapply(letter_freq, fallInto)

lay_mat <- matrix(1:26,13)
lay_mat <- rbind(27,lay_mat,28)
layout(lay_mat)

par(mar=c(1,1.8,0,0), las=1)
for (i in 1:26){
  vec <- datlet[,i]/sum(datlet[,i])
  plot(vec, type = 'l', axes=FALSE, ann=FALSE)
  polygon(c(1,1:15,15),c(0,vec,0), border=NA, col=mypal[categ[i]])
  mtext(side=2, letters[i], cex=1.2)
}
## Title
plot(0,0, ann=FALSE, axes=FALSE, type="n")
text(0,.35,c("Distribution of English Letters toward"),cex=2)
text(0,-.45,c("beggining, middle, and end of words"),cex=2)
## Legend
par(mar=c(2,8,3,8), mgp=c(3,0.4,0))
image(matrix(1:8,ncol=1), col=mypal, axes=FALSE, ann=FALSE)
mtext(side=3, at=0, text="Frequency of letters:")
axis(1, at=seq(-1/14,1+1/14,len=9),labels=paste0(c(mybin,13), "%"), lwd=0)

dev.off()
