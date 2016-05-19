---
title       : R Graphics
subtitle    : An overview of possibilities
author      : 'Kévin Cazelles and Nicolas Casajus'
job         : Université du Québec à Rimouski
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : sunburst      #
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---


<!-- Faudra faire attention si on met des majuscule en début d'hyphenation... -->

<!-- To set knitr  -->


<!-- Call the script -->





<!-- <style>
article li.build {
  font-size: 16px;
}
</style> -->


## Outline

- Introduction
- The `graphics` package basis
- Composition and multi-panel plotting
- Graphics automation and exporting
- Resources
- Exercises

--- .transition

## Introduction

--- .andy

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

--- &twocol

## The components of a graphic

<!-- *** =left -->

*** =right
![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-3-1.pdf)

--- &twocol

## The components of a graphic

*** =left
- Chart area

*** =right
![plot of chunk unnamed-chunk-4](assets/fig/unnamed-chunk-4-1.pdf)

--- &twocol

## The components of a graphic

*** =left
- Chart area
- Plot area

*** =right
![plot of chunk unnamed-chunk-5](assets/fig/unnamed-chunk-5-1.pdf)

--- &twocol

## The components of a graphic

*** =left
- Chart area
- Plot area
- Data representation


*** =right
![plot of chunk unnamed-chunk-6](assets/fig/unnamed-chunk-6-1.pdf)

--- &twocol

## The components of a graphic

*** =left
- Chart area
- Plot area
- Data representation
- Axis (scaling, labeling)

*** =right
![plot of chunk unnamed-chunk-7](assets/fig/unnamed-chunk-7-1.pdf)

--- &twocol

## The components of a graphic

*** =left
- Chart area
- Plot area
- Data representation
- Axis (scaling, labeling)
- Figure title

*** =right
![plot of chunk unnamed-chunk-8](assets/fig/unnamed-chunk-8-1.pdf)

--- &twocol

## The components of a graphic

*** =left
- Chart area
- Plot area
- Data representation
- Axis (scaling, labeling)
- Figure title
- Legend

*** =right
![plot of chunk unnamed-chunk-9](assets/fig/unnamed-chunk-9-1.pdf)

---

## Some guidelines for better graphics

--- &twocol

## Some guidelines for better graphics

*** =left
- Do not use pie chart
- Do not use 3D (never)
- Use consistent colors

*** =right
![plot of chunk unnamed-chunk-10](assets/fig/unnamed-chunk-10-1.pdf)

--- &twocol

## Some guidelines for better graphics

*** =left
- Do not use pie chart
- Do not use 3D (never)
- Use consistent colors
- Do prefer this representation

*** =right
![plot of chunk unnamed-chunk-11](assets/fig/unnamed-chunk-11-1.pdf)

--- &twocol

## Some guidelines for better graphics

*** =left
- Do not use more than 6 colors
- Do not use high contrast color

*** =right
![plot of chunk unnamed-chunk-12](assets/fig/unnamed-chunk-12-1.pdf)

--- &twocol

## Some guidelines for better graphics

*** =left
- Do not use more than 6 colors
- Do not use high contrast color
- Sometimes sizes and symbols are better

*** =right
![plot of chunk unnamed-chunk-13](assets/fig/unnamed-chunk-13-1.pdf)

--- &twocol

## Some guidelines for better graphics

*** =left
- Write textual informations horizontally
- Do not use distracting elements
- Do not add chart junk

*** =right
![plot of chunk unnamed-chunk-14](assets/fig/unnamed-chunk-14-1.pdf)

--- &twocol

## Some guidelines for better graphics

*** =left
- Write textual informations horizontally
- Do not use distracting elements
- Do not add chart junk
- Think about the Data-Ink ratio (Tufte, 1983)

*** =right
![plot of chunk unnamed-chunk-15](assets/fig/unnamed-chunk-15-1.pdf)

---

## Some guidelines for better graphics

<q>Each element of a graph has to help understanding data</q>

<q>Choose the graphic that shows what you want to show</q>


--- &twocol

## The R system

*** =left
<div style='text-align: left; margin: 10% 5%;'>
    <img src='./assets/img/Rlogo.png' style="width:90%;"/>
</div>

*** =right
- Software environment for statistical computing and graphics
- Open-source, free and multiplatform
- Widely used in the scientific community
- Programming language
- Implementation of the S programming language
- The core system is extended through user-created packages
- You can do what you want with R


---

## The R system

  <img src='./assets/img/Murrell2015.jpg' style="width:60%; margin: 0 20%;"/>
  <div class='centered'>Murrell, P. (2015) The gridGraphics Package. The R Jounal.</div>


--- &twocol

## Graphical packages - graphics

*** =left
- Base package
- S-like plotting functions
- Contains the famous function `plot()`
- And a lot of well-known functions: `boxplot()`, `barplot()`, `hist()`, `lines()`, `points()`, `legend()`, etc.


```r
plot(x, y, ...)
points(x, y, ...)
title(main, ...)
legend(legend, ...)
```

*** =right
![plot of chunk unnamed-chunk-17](assets/fig/unnamed-chunk-17-1.pdf)

--- &twocol

## Graphical packages - grid

*** =left
- An alternative set of graphical functions
- Well-suited for developers
- `ggplot2` is based on this package


*** =right
![plot of chunk unnamed-chunk-18](assets/fig/unnamed-chunk-18-1.pdf)

--- &twocol

## Graphical packages - lattice

*** =left
- Based on the `grid` package
- High-level system inspired by Trellis graphics
- Specialized on multivariate data
- and multipanel figures


```r
library(lattice)
xyplot(y ~ x, dat, group = z,
       auto.key = list(columns = 2))
```

*** =right
![plot of chunk unnamed-chunk-20](assets/fig/unnamed-chunk-20-1.pdf)

--- &twocol

## Graphical packages - ggplot2

*** =left
- Also based on the `grid` package
- A complete plotting system for R
- Based on the Grammar of Graphics
- But introduces its own syntax
- and requires a long time to master it


```r
library(ggplot2)
p <- ggplot(data = dat,
            aes(x = x, y = y, colour = z))
p <- p + geom_point(size = 3)
p
```

- See the QCBS workshop on [ggplot2](http://qcbs.ca/wiki/r_workshop4)
*** =right
![plot of chunk unnamed-chunk-22](assets/fig/unnamed-chunk-22-1.pdf)

--- &twocol

## Graphical packages - plotrix

*** =left
- Based on the `graphics` package
- Contains a lots of specialized plots (i.e. polar plots)
- and various labeling, axis and color scaling functions


```r
library(plotrix)
data(soils)
triax.plot(...)
```

*** =right
![plot of chunk unnamed-chunk-24](assets/fig/unnamed-chunk-24-1.pdf)


--- &twocol

## Graphical packages - gplots

*** =left
- Based on the `graphics` package
- Adds enhanced versions of standard plots (e.g. `boxplot2`)
- and some extra functions (e.g. Venn diagram)


```r
library(gplots)
venn(...)
```

*** =right
![plot of chunk unnamed-chunk-26](assets/fig/unnamed-chunk-26-1.pdf)

---

## Graphical packages - others

- More than 80 others graphical packages
- For an overview see this [R task view](https://cran.r-project.org/web/views/Graphics.html)
- For a more exhaustive list see this [post](http://kevincazelles.fr/rgraphics/2015/12/04/r-and-graphics.html)

<br />

- On this workshop we will only use the `graphics` package

<!-- Faudrait dire que c'est un des coûts d'avoir autant de facilité... -->

--- .transition

## The graphics package basis

---

## Graphical parameters

The function/object `par()`

---

## The major types of graphics

- High-level plotting functions vs. low-level plotting functions

--- &twocol

## The major types of graphics

*** =left
- Bar chart
- Usage: representation of discrete variables
- The length of bars is proportional to values



```r
x <- seq(50, 0, by = -10)

barplot(height = x,
        names.arg = LETTERS[1:length(x)],
        col = '#08519c',
        border = '#2c7fb8',
        las = 1)
```

*** =right
![plot of chunk unnamed-chunk-28](assets/fig/unnamed-chunk-28-1.pdf)

--- &twocol

## An empty plot

*** =left
- The default plot


```r
plot(x = 1, y = 1)
```

*** =right
![plot of chunk unnamed-chunk-30](assets/fig/unnamed-chunk-30-1.pdf)

--- &twocol

## An empty plot

*** =left
- First let's remove the box


```r
plot(x = 1, y = 1,
     bty = 'n')
```

*** =right
![plot of chunk unnamed-chunk-32](assets/fig/unnamed-chunk-32-1.pdf)

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
![plot of chunk unnamed-chunk-34](assets/fig/unnamed-chunk-34-1.pdf)

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
![plot of chunk unnamed-chunk-36](assets/fig/unnamed-chunk-36-1.pdf)

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
![plot of chunk unnamed-chunk-38](assets/fig/unnamed-chunk-38-1.pdf)

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
![plot of chunk unnamed-chunk-40](assets/fig/unnamed-chunk-40-1.pdf)

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
![plot of chunk unnamed-chunk-42](assets/fig/unnamed-chunk-42-1.pdf)

---

## Adding points, lines, rectangles and polygons

- the functions: `points()`, `lines()`, `rect()`, `polygon()`, `axis()` and `box()`
- the arguments: pch, cex, lwd, lty, col, bg, fg, border, density, angle

---

## Adding textual informations

- `title()`, `text()`, `mtext()`
- font, family

---

## Changing colors

- [A blog post](http://www.stat.ubc.ca/~jenny/STAT545A/block14_colors.html)
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

*** =right



--- &twocol

## Dividing the output device

*** =left
- `mfrow` and `mfcol` in `par()`


```r
par(mfrow=c(2,2))
```
or


```r
par(mfcol=c(2,2))
```

*** =right
![plot of chunk unnamed-chunk-46](assets/fig/unnamed-chunk-46-1.pdf)


--- &twocol

## Dividing the output device

*** =left
- `mfrow` and `mfcol` in `par()`
- `split.screen()`


```r
split.screen(c(1, 2))
split.screen(c(3, 1), screen = 2)
```

*** =right
![plot of chunk unnamed-chunk-48](assets/fig/unnamed-chunk-48-1.pdf)


--- &twocol

## Dividing the output device

*** =left
- mfrow and mfcol in `par()`
- `split.screen()`
- layout()


```r
mat_lay <- matrix(c(1,2,4,1,3,4),nrow=3)
layout(mat_lay)
```

*** =right
![plot of chunk unnamed-chunk-50](assets/fig/unnamed-chunk-50-1.pdf)


--- &twocol

## More about 'layout()'

*** =left


```r
mat_lay <- matrix(c(1,2,4,1,3,4), nrow=3)
layout(mat_lay)
```


```
#>      [,1] [,2]
#> [1,]    1    1
#> [2,]    2    3
#> [3,]    4    4
```

*** =right
![plot of chunk unnamed-chunk-53](assets/fig/unnamed-chunk-53-1.pdf)


--- &twocol

## More about 'layout()'

*** =left


```r
mat_lay <- matrix(c(0,2,2,1,3,3,1,4,0), nrow=3)
layout(mat_lay)
```


```
#>      [,1] [,2] [,3]
#> [1,]    0    1    1
#> [2,]    2    3    4
#> [3,]    2    3    0
```

*** =right
![plot of chunk unnamed-chunk-56](assets/fig/unnamed-chunk-56-1.pdf)


--- &twocol

## More about 'layout()'

*** =left


```r
mat_lay <- matrix(c(0,2,2,1,3,3,1,4,0),nrow=3)
layout(mat_lay, widths=c(.25,1,1))
```

*** =right
![plot of chunk unnamed-chunk-58](assets/fig/unnamed-chunk-58-1.pdf)


--- &twocol

## More about 'layout()'

*** =left


```r
mat_lay <- matrix(c(0,2,2,1,3,3,1,4,0),nrow=3)
layout(mat_lay, widths=c(.25,1,1),
  heights=c(.25,1,.25))
```

*** =right
![plot of chunk unnamed-chunk-60](assets/fig/unnamed-chunk-60-1.pdf)


--- &twocol

## Combining 'layout()' and 'mar'

*** =left


```r
mat_lay <- matrix(c(0,2,2,1,3,3,1,4,0),nrow=3)
layout(mat_lay, widths=c(.25,1,1), heights=c(.2,1,.4))
for (i in 1:4) {
  if (i<3) par(mar=rep(1,4)) else par(mar=rep(4,4))
  eplot()
  fillIt(col=i)
  text(0,0, labels=i, cex=4)
}
```

*** =right
![plot of chunk unnamed-chunk-62](assets/fig/unnamed-chunk-62-1.pdf)



--- &twocol

## Embedded plots

*** =left

- You must call `new=TRUE` and specifying `fig` in `par()` :

  1. Create your first post
  2. use `par()`
  3. add your new figure


  *** =right

  ![plot of chunk unnamed-chunk-63](assets/fig/unnamed-chunk-63-1.pdf)

--- &twocol


## Embedded plots

*** =left

- You must call `new=TRUE` and specifying `fig` in `par()` :

  1. Create your first post
  2. use `par()`
  3. add your new figure

*** =right

![plot of chunk unnamed-chunk-64](assets/fig/unnamed-chunk-64-1.pdf)

-- &twocol

## Embedded plots

*** =left

- You must call `new=TRUE` and specifying `fig` in `par()` :

  1. Create your first post
  2. use `par()`
  3. add your new figure

*** =right

![plot of chunk unnamed-chunk-65](assets/fig/unnamed-chunk-65-1.pdf)



<!-- http://www.r-bloggers.com/digging-up-embedded-plots/ -->









--- .transition

## Graphics automation and export

---

- the loop for
- `pdf()`, `png()`, `jpeg()`, `bmp()`, `tiff()`
















--- .transition

## Ressources

---

## Ressources

- [CRAN task view](https://cran.r-project.org/web/views/Graphics.html)
- [More package indexed](http://kevincazelles.fr/rgraphics/2015/12/04/r-and-graphics.html)
- [ggplot2](http://docs.ggplot2.org/current/)

--- .transition

## Let's pratice!

---

## Two exercises

- "refaire une figure du samedi"
- autre figure
-
