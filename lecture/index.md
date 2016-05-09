---
title       : R Graphics
subtitle    : An overview of possibilities
author      : 'Kévin Cazelles and Nicolas Casajus'
job         : Université du Québec à Rimouski
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      #
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

<!--
# Custom the slidify.css
# J'ai fait un makefile, tu as juste à taper make !
# Tu peux le faire dans atom directement
-->

<!-- To set knitr  -->





## Outline

- Introduction
- R graphics basis
- Composition and multipanel plotting
- Graphics automation and export
- Ressources
- Exercises

--- .transition

## Introduction

---

## The importance of graphics


```
## [1] "/Users/kcazelles/Github/formations/QCBSgraphR/lecture"
```

---

## The components of a graphic

---

## Guidelines for better graphics

---

## The R system

--- &twocol w1:50% w2:50%

## Graphical packages - Graphics

*** =left
- The base package *graphics*
- S-like plotting functions
- Contains the famous `plot()` function


```r
plot(1, las = 1)
```

*** =right
![plot of chunk unnamed-chunk-4](assets/fig/unnamed-chunk-4-1.png)

---

## Graphical packages

- grid
- ggplot2
- lattice
- plotrix
- etc.

--- .transition

## R graphics basis

---

## Graphical parameters

The function/object `par()`

---

## The major types of graphics

- barchart
- histogram
- scatterplot
- line chart
- boxplot
- dotchart
- maps

---

## An empty plot




```r
vec1 <- c(2,3,8)
vec2 <- 1:10
vec3 <- rep(c(1,3),4)
vec4 <- seq(1,10,0.5)
print(vec1)
```

```
## [1] 2 3 8
```

---

## Adding points, lines, rectangles and polygons

- the functions: `points()`, `lines()`, `rect()`, `polygon()` and `box()`
- the arguments: pch, cex, lwd, lty, col, bg, fg, border, density, angle

---

## Adding textual informations

- title(), text(), mtext()
- font, family

---

## Changing colors

- predefined color palette
- the rgb system
- the hexadecimal nomenclature
- customized color palettes

---

## Changing fonts

- basic fonts
- the `showtext` package

---

## Adding/changing axis

---

## Adding legend

---

## Figure margins

- mar and oma

--- .transition

## Composition and multipanel plotting

---

## Window Partitioning

- mfrow and mfcol
- layout()

---

## Insets

- fig and new

--- .transition

## Graphics automation and export

---

- the loop for
- pdf(), png()

--- .transition

## Ressources

---

## Ressource

- QCBS worshops
- [QQ example](http://kevincazelles)
- [Task view](https://cran.r-project.org/web/views/Graphics.html)
- Some books (R graphics, ggplot2, R graphic cookbook)

--- .transition

## Let's do pratice!

---

## Two exercises

- refaire une figure du samedi
- autre figure
