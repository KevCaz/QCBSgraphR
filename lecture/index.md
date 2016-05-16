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

<q>A picture is worth a thousand words</q>

- Visual summary of data / information
- More efficient than table and text
- Useful for exploring data
    - trends, correlations, cycles, outliers, etc.
- Essential for presenting results

<br />

- But a bad graph can lie about data
- And sometimes a graphic is not the solution

---

## The components of a graphic

- Chart area vs. Plot area
- Data representations (points, bars, lines, etc.)
- Axis (scaling, labeling)
- Figure and Axes titles
- Figure and Symbols legend

---

## Some guidelines for better graphics

- Do not use 3D (never)
- Do not use pie chart
- Do not use more than 6 colors
- Write textual informations horizontally
- Use consistent colors
- Do not use high contrast color
- Start axis at 0
- Do not use distracting elements
- Do not add chart junk

<!-- end-->

- <b>Each element of a graph must have a signification to understand data</b>


--- &twocol w1:50% w2:50%

## The R system

*** =left
<div style='text-align: left; margin-top: 20%;'>
    <img src='./assets/img/r-logo.png' />
</div>
<!-- ![](./assets/img/r-logo.png) -->

*** =right
- Software environment for statistical computing and graphics
- Open-source, free and multiplatform
- Widely used in the scientific community
- Programming language
- Implementation of the S programming language
- The core system is extended through user-created packages
- You can do what you want with R

--- &twocol w1:50% w2:50%

## Graphical packages - graphics

*** =left
- Base package
- S-like plotting functions
- Contains the famous function `plot()`
- And a lot of well-known functions: `boxplot()`, `barplot()`, `hist()`, `lines()`, `points()`, `legend()`, etc.


```r
plot(x = 1, y = 1)
```

*** =right
![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3-1.pdf)

--- &twocol w1:50% w2:50%

## Graphical packages - grid

*** =left
- ...


*** =right
![plot of chunk unnamed-chunk-4](assets/fig/unnamed-chunk-4-1.pdf)

--- &twocol w1:50% w2:50%

## Graphical packages - lattice

*** =left
- Based on the `grid` package
- High-level system inspired by Trellis graphics
- Specialised on multivariate data
- and multipanel figures


```r
library(lattice)
xyplot(1 ~ 1)
```

*** =right
![plot of chunk unnamed-chunk-6](assets/fig/unnamed-chunk-6-1.pdf)

--- &twocol w1:50% w2:50%

## Graphical packages - ggplot2

*** =left
- Also based on the `grid` package
- A complete plotting system for R
- Based on the Grammar of Graphics
- But introduces its own syntax
- and requires a long time to master it


```r
library(ggplot2)
qplot(x = 1, y = 1)
```

<br />

- See the QCBS workshop on [ggplot2](http://qcbs.ca/wiki/r_workshop4)
*** =right
![plot of chunk unnamed-chunk-8](assets/fig/unnamed-chunk-8-1.pdf)

--- &twocol w1:50% w2:50%

## Graphical packages - plotrix

*** =left
- Based on the `graphics` package
- Contains a lots of specialized plots (i.e. polar plots)
- and various labeling, axis and color scaling functions


*** =right
![plot of chunk unnamed-chunk-9](assets/fig/unnamed-chunk-9-1.pdf)

---

## Graphical packages - others

- More than 80 others graphical packages
- For an overview see this [R task view](https://cran.r-project.org/web/views/Graphics.html)
- For an exhaustive list see this [post](http://kevincazelles.fr/rgraphics/2015/12/04/r-and-graphics.html)

<br />

- On this workshop we will only use the `graphics` package

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

<!-- end -->

- High-level plotting functions vs. low-level plotting functions

--- &twocol

## An empty plot

*** =left
- The default plot


```r
plot(x = 1, y = 1)
```

*** =right
![plot of chunk unnamed-chunk-11](assets/fig/unnamed-chunk-11-1.pdf)

--- &twocol

## An empty plot

*** =left
- First let's remove the box


```r
plot(x = 1, y = 1,
     bty = 'n')
```

*** =right
![plot of chunk unnamed-chunk-13](assets/fig/unnamed-chunk-13-1.pdf)

--- &twocol

## An empty plot

*** =left
- Now remove the textual annotation


```r
plot(x = 1, y = 1,
     bty = 'n',
     ann = FALSE)
```

*** =right
![plot of chunk unnamed-chunk-15](assets/fig/unnamed-chunk-15-1.pdf)

--- &twocol

## An empty plot

*** =left
- Let's remove the x-axis


```r
plot(x = 1, y = 1,
     bty = 'n',
     ann = FALSE,
     xaxt = 'n')
```

*** =right
![plot of chunk unnamed-chunk-17](assets/fig/unnamed-chunk-17-1.pdf)

--- &twocol

## An empty plot

*** =left
- And the y-axis


```r
plot(x = 1, y = 1,
     bty = 'n',
     ann = FALSE,
     xaxt = 'n',
     yaxt = 'n')
```

*** =right
![plot of chunk unnamed-chunk-19](assets/fig/unnamed-chunk-19-1.pdf)

--- &twocol

## An empty plot

*** =left
- Using `axes=FALSE` is the same as `bty='n'`+`xaxt='n'`+`yaxt='n'`


```r
plot(x = 1, y = 1,
     ann = FALSE,
     axes = FALSE)
```

*** =right
![plot of chunk unnamed-chunk-21](assets/fig/unnamed-chunk-21-1.pdf)

--- &twocol

## An empty plot

*** =left
- Finally let's remove data


```r
plot(x = 1, y = 1,
     ann = FALSE,
     axes = FALSE,
     type = 'n')
```

<!-- end -->

- In an empty plot, visual information is not displayed but the graph is defined in the window
- It is now possible to use low-level plotting functions such as `points()` or `axis()`

*** =right
![plot of chunk unnamed-chunk-23](assets/fig/unnamed-chunk-23-1.pdf)

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

## Ressources

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
