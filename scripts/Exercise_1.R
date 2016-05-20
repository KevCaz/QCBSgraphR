## @knitr Exercise_1

## Importing data
tab <- read.delim('../data/iris.txt')

## Graphical parameters settings
par(xaxs = 'i', yaxs = 'i', mar = c(3, 3, 2, 2), family = 'serif')

## Empty plot
plot(0, xlim = c(0, 8), ylim = c(0, 3), type = 'n', ann = FALSE, axes = FALSE)

## Grid
rect(0, 0, 8, 3, col = '#dddddd', border = NA)
abline(v = c(2, 4, 6), col = 'white', lty = 3)
abline(h = c(1, 2), col = 'white', lty = 3)

## x-Axis
par(mgp = c(3, 0.6, 0))
axis(side = 1, at = seq(0, 8, by = 2), labels = seq(0, 8, by = 2))
axis(side = 3, at = seq(0, 8, by = 2), labels = seq(0, 8, by = 2))
mtext(text = 'Petal length (in cm)', side = 1, line = 1.75, font = 2)

## y-Axis
par(mgp = c(3, 0.75, 0))
axis(side = 2, at = seq(0, 3, by = 1), labels = seq(0, 3, by = 1), las = 1)
axis(side = 4, at = seq(0, 3, by = 1), labels = seq(0, 3, by = 1), las = 1)
mtext(text = 'Petal width (in cm)', side = 2, line = 1.75, font = 2)

## Parameters
spp  <- c('versicolor', 'virginica', 'setosa')
col1 <- c('#505050', '#4e7bdb', '#8b0000')
col2 <- c('#50505088', '#4e7bdb88', '#8b000088')

for (i in 1 : length(spp)){

    ## Add points
    rat <- tab[tab$species == spp[i], ]
    points(rat[ , c('petal.l', 'petal.w')], col = col2[i], bg = col2[i],
           cex = rat[ , 'n']/1.25, pch = 21)

    ## Linear regression
    mod <- lm(petal.w ~ petal.l, data = rat)
    newrat <- data.frame(petal.l = seq(min(rat[ , 'petal.l']), max(rat[ , 'petal.l']), by = 0.05))
    ypred <- predict(object = mod, newdata = newrat, se.fit = TRUE)

    ## Add lines
    lines(x = newrat$petal.l, y = ypred$fit, col = col1[i], lwd = 2)
    lines(x = newrat$petal.l, y = ypred$fit + ypred$se.fit, col = col1[i], lwd = 1, lty = 2)
    lines(x = newrat$petal.l, y = ypred$fit - ypred$se.fit, col = col1[i], lwd = 1, lty = 2)
}

## Add legend
legend('topleft', lwd = 3, col = col1, legend = paste('I.', spp), bty = 'n')

## @knitr end_Exercise_1
