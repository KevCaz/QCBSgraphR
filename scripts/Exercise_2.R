###############################################################
##################### I- Get the data #########################

## For those who simply want to reproduce only the figure,
## do directly to section II

## Function to alloacte letters to a choosen number of bins (= convert letter position into bins);
## see methodology => David Taylor
## at http://www.prooffreader.com/2014/05/graphing-distribution-of-english.html

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



## Set your directory 'setwd()'
# setwd(yourpath)


## Load the data
# eng
load("data/word_eng.Rdata")
# load("data/word_fr.Rdata")
wrd_ls <- word_eng
# wrd_ls <- word_fr
##
let_tot <- unlist(strsplit(wrd_ls,""))
let_frq <- table(letter_tot)/length(letter_tot)*100
## a quick graph showing the letter frequency:
## plot(letter_freq, type="h")
##
dat_let <- data.frame(matrix(0,15,26))
colnames(dat_let) <- letters[1:26]
##
boom <- strsplit(wrd_ls,"")

for (i in 1:26){
  cat(paste0("\r letter:  ", letters[i]))
  match_let <- lapply(boom, grep, pattern=letters[i])
  sz_match <- lapply(match_let, length)
  vec_pos <- unlist(match_let)
  vec_sz <- rep(nchar(wrd_ls), unlist(sz_match))
  mydata <- cbind(vec_pos, vec_sz)
  # dat_wher <- countbin(vec_pos[1],vec_sz[1],15)
  dat_wher <- apply( mydata, 1,  FUN=function(x) countbin(x[1],x[2],15))
  dat_wher <- do.call( "rbind", dat_wher)
  cool <- aggregate(val~rg, data=dat_wher, FUN=sum)
  for (j in 1:nrow(cool)){
    dat_let[j,i] <- cool[cool[j,1], 2]
  }
}
cat("\n")

## to save the datasets you need for the graph, run the command line below:
# save(dat_let, file="data/dat_let.Rdata")
# save(let_frq, file="data/let_frq.Rdata")




###############################################################
################### I- Get the figure #########################

load("data/dat_let.Rdata")
load("data/let_frq.Rdata")

dat_let <- dat_let
let_freq <- let_frq

fallInto <- function (x) max(which(x > mybin))
# mypal <- colorRampPalette(c("#ffffd1","#981729"))(8)
mypal <- c("#feffcb", "#fcf1a9", "#f9dd74", "#f9b74b", "#f68c3f", "#f44234", "#dd0029", "#ab002d")



mybin <- c(0,0.1,0.5,1,2,3,5,9)
categ <- sapply(let_freq, fallInto)


## Figure (change the path to export your figure wherever you want)
pdf("./let_distr_eng.pdf", width=6, height=12)

  lay_mat <- matrix(1:26,13)
  lay_mat <- rbind(27,lay_mat,28)
  layout(lay_mat)

  par(mar=c(1,1.8,0,0), las=1)
  for (i in 1:26){
    vec <- dat_let[,i]/sum(dat_let[,i])
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
