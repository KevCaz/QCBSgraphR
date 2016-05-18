## @knitr load_data
load('../data/xyz.RData')
## @knitr end_load_data

################################################################################

## @knitr component_1
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
plot(dat[dat[ , 'z'] == 'A', c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 19, cex = 1.5, las = 1)
points(dat[dat[ , 'z'] == 'B', c('x', 'y')],
       pch = 17, cex = 1.5)
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2)
legend('bottomright', c('Series A', 'Series B'),
       ncol = 2, pch = c(19, 17), bty = 'n', cex = 1.25)
## @knitr end_component_1

################################################################################

## @knitr component_2
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'lightgray',
    col.axis = 'lightgray',
    fg = 'lightgray')
plot(dat[dat[ , 'z'] == 'A', c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 19, cex = 1.5, las = 1)
points(dat[dat[ , 'z'] == 'B', c('x', 'y')],
       pch = 17, cex = 1.5)
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2)
legend('bottomright', c('Series A', 'Series B'),
       ncol = 2, pch = c(19, 17), bty = 'n', cex = 1.25)
par(xpd = TRUE)
rect(0.455, 0.455, 1.471, 1.473, col = 'transparent', border = 'black')
text(0.45, 0.7, 'Chart area', font = 2, col = 'black', cex = 2, pos = 4)
par(xpd = FALSE)
## @knitr end_component_2

################################################################################
################################################################################

## @knitr component_3
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'lightgray',
    col.axis = 'lightgray',
    fg = 'lightgray')
plot(dat[dat[ , 'z'] == 'A', c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 19, cex = 1.5, las = 1)
points(dat[dat[ , 'z'] == 'B', c('x', 'y')],
       pch = 17, cex = 1.5)
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2)
legend('bottomright', c('Series A', 'Series B'),
       ncol = 2, pch = c(19, 17), bty = 'n', cex = 1.25)
box('plot', col = 'black', lwd = 1)
text(.6, 1.38, 'Plot area', font = 2, col = 'black', cex = 2, pos = 4)
## @knitr end_component_3

################################################################################

## @knitr component_4
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'lightgray',
    col.axis = 'lightgray',
    fg = 'lightgray')
plot(dat[dat[ , 'z'] == 'A', c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 19, cex = 1.5, las = 1, col = 'black')
points(dat[dat[ , 'z'] == 'B', c('x', 'y')],
       pch = 17, cex = 1.5, col = 'black')
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2)
legend('bottomright', c('Series A', 'Series B'),
       ncol = 2, pch = c(19, 17), bty = 'n', cex = 1.25)
## @knitr end_component_4

################################################################################

## @knitr component_5
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black',
    col = 'lightgray')
plot(dat[dat[ , 'z'] == 'A', c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 19, cex = 1.5, las = 1)
points(dat[dat[ , 'z'] == 'B', c('x', 'y')],
       pch = 17, cex = 1.5)
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2)
legend('bottomright', c('Series A', 'Series B'),
       ncol = 2, pch = c(19, 17), bty = 'n', cex = 1.25)
## @knitr end_component_5

################################################################################

## @knitr component_6
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'lightgray',
    col.axis = 'lightgray',
    fg = 'lightgray')
plot(dat[dat[ , 'z'] == 'A', c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 19, cex = 1.5, las = 1)
points(dat[dat[ , 'z'] == 'B', c('x', 'y')],
       pch = 17, cex = 1.5)
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2, col = 'black')
legend('bottomright', c('Series A', 'Series B'),
       ncol = 2, pch = c(19, 17), bty = 'n', cex = 1.25)
## @knitr end_component_6

################################################################################

## @knitr component_7
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'lightgray',
    col.axis = 'lightgray',
    fg = 'lightgray')
plot(dat[dat[ , 'z'] == 'A', c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 19, cex = 1.5, las = 1)
points(dat[dat[ , 'z'] == 'B', c('x', 'y')],
       pch = 17, cex = 1.5)
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2)
legend('bottomright', c('Series A', 'Series B'),
       ncol = 2, pch = c(19, 17), bty = 'n', cex = 1.25,
       col = 'black', text.col = 'black')
## @knitr end_component_7

################################################################################

## @knitr pie3d_1
library(plotrix)
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'lightgray',
    col = 'black')
slices <- c(10, 12, 4, 16, 8)
lbls <- c("A", "B", "C", "D", "E")
pie3D(slices, labels = lbls, explode = 0.1,
  	main = "", labelcol = 'black')
## @knitr end_pie3d_1

################################################################################

## @knitr pie3d_2
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black',
    col = 'black')
slices <- c(4, 6, 10, 12, 16)
lbls <- c("C", "E", "A", "B", "D")
bar <- barplot(slices, names.arg = '', col = 'black', horiz = TRUE, las = 1, xlim = c(0, 18), axes = F)
text(slices + 1, bar[ , 1], lbls, font = 1, cex = 1.5)
axis(1, seq(0, 18, by = 2), seq(0, 18, by = 2), pos = par()$usr[3])
mtext('x-axis', side = 1, line = 2)
## @knitr end_pie3d_2

################################################################################

## @knitr bubble_1
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black',
    col = 'black')
plot(dat[ , c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 19, las = 1, col = palette())
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2)
legend('bottomright', legend = 1:8,
       ncol = 4, pch = 19, bty = 'n', cex = 1.25, col = palette())
## @knitr end_bubble_1

################################################################################

## @knitr bubble_2
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black',
    col = 'black')
plot(dat[ , c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 21, cex = (1:8)/1.5, las = 1, col = 'transparent', bg = '#00000088')
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2)
legend('bottomright', c('2', '4', '6', '8'), pt.cex = seq(2, 8, by = 2)/1.5, x.intersp = 1.1,
       ncol = 4, pch = 21, pt.bg = '#00000088', bty = 'n', cex = 1.25, col = 'transparent')
## @knitr end_bubble_2

################################################################################

## @knitr tufte_1
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black',
    col = 'black')
slices <- c(13, 16, 11, 12, 6, 19, 15, 13, 14)
lbls <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", 'Aug', 'Sep')
bar <- barplot(slices, names.arg = lbls, col = '#4b4b4b', border = 'transparent', las = 1, ylim = c(0, 20), axes = F)
rect(par()$usr[1], par()$usr[3], par()$usr[2], par()$usr[4], col = '#c1dfe2', border = 'transparent')
barplot(slices, names.arg = '', col = '#4b4b4b', border = 'transparent', axes = FALSE, ylim = c(0, 20), add = TRUE)
par(xpd = TRUE)
box('plot')
par(xpd = FALSE)
abline(h = seq(5, 15, by = 5))
abline(v = bar[ , 1])
abline(v = (bar[-1, 1]+bar[-nrow(bar), 1])/2)
abline(v = bar[1, 1] - .6)
abline(v = bar[nrow(bar), 1] + .6)
axis(2, seq(5, 15, by = 5), paste(seq(5, 15, by = 5), '%', sep = ''), pos = par()$usr[1])
mtext('y-axis', side = 2, line = 2.5)
## @knitr end_tufte_1

################################################################################

## @knitr tufte_2
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = '#4b4b4b',
    col.axis = '#4b4b4b',
    fg = '#4b4b4b',
    col = '#4b4b4b')
slices <- c(13, 16, 11, 12, 6, 19, 15, 13, 14)
lbls <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", 'Aug', 'Sep')
bar <- barplot(slices, names.arg = lbls, col = '#4b4b4b', border = 'transparent', las = 1, ylim = c(0, 20), axes = F)
abline(h = seq(5, 15, by = 5), col = 'white')
axis(2, seq(5, 15, by = 5), paste(seq(5, 15, by = 5), '%', sep = ''), pos = par()$usr[1], las = 1, lwd = 0, lwd.ticks = 1)
lines(c(bar[1, 1]-.5, bar[nrow(bar), 1]+.5), c(0, 0), lwd = 2)
## @knitr end_tufte_2

################################################################################

## @knitr scatter
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black')
plot(dat[dat[ , 'z'] == 'A', c('x', 'y')],
     xlab = 'x-axis', ylab = 'y-axis',
     xlim = c(.6, 1.4), ylim = c(.6, 1.4),
     pch = 19, cex = 1.5, las = 1)
points(dat[dat[ , 'z'] == 'B', c('x', 'y')],
       pch = 17, cex = 1.5)
text(1.4, 1.38, 'Figure title', font = 2, cex = 1.25, pos = 2)
legend('bottomright', c('Series A', 'Series B'),
       ncol = 2, pch = c(19, 17), bty = 'n', cex = 1.25)
## @knitr end_scatter

################################################################################

## @knitr scatter_cmd
plot(x, y, ...)
points(x, y, ...)
title(main, ...)
legend(legend, ...)
## @knitr end_scatter_cmd

################################################################################

## @knitr lattice_cmd
library(lattice)
xyplot(y ~ x, dat, group = z,
       auto.key = list(columns = 2))
## @knitr end_lattice_cmd

################################################################################

## @knitr lattice
library(lattice)
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black',
    col = 'black')
xyplot(y ~ x, dat, group = z,
       auto.key = list(columns = 2))
## @knitr end_lattice

################################################################################

## @knitr ggplot_cmd
library(ggplot2)
p <- ggplot(data = dat,
            aes(x = x, y = y, colour = z))
p <- p + geom_point(size = 3)
p
## @knitr end_ggplot_cmd

################################################################################

## @knitr ggplot
library(ggplot2)
par(mar = c(4, 4, 1.5, 1.5),
    bg = 'transparent',
    col.lab = 'black',
    col.axis = 'black',
    fg = 'black',
    col = 'black')
p <- ggplot(data = dat, aes(x = x, y = y, colour = z))
(p <- p + geom_point(size = 3))
## @knitr end_ggplot

################################################################################

## @knitr plotrix
par(mar = c(4, 4, 1.5, 1.5), bg = 'transparent')
library(plotrix)
data(soils)
triax.plot(soils[1 : 10, ], show.grid = TRUE, show.legend = TRUE,
           col.symbols = rainbow(10), pch = 19)
## @knitr end_plotrix

################################################################################

## @knitr plotrix_cmd
library(plotrix)
data(soils)
triax.plot(...)
## @knitr end_plotrix_cmd

################################################################################

## @knitr gplots
par(mar = c(4, 4, 1.5, 1.5), bg = 'transparent', fg = "#8b0000")
library(gplots, verbose = FALSE)
ls_venn <- list()
for (i in 1 : 4)
    ls_venn[[i]] <- floor(runif(100, 0, 150))
venn(ls_venn)
## @knitr end_gplots

################################################################################

## @knitr gplots_cmd
library(gplots)
venn(...)
## @knitr end_gplots_cmd
