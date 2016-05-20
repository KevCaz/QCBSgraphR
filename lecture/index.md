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
assets      :
  css: "https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"
---


<!-- Rq:
1. Faudra faire attention si on met des majuscule en début d'hyphenation...
-->


<!-- Setting knitr  -->


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
  <div class='centered'>Murrell, P. (2015) <a href="https://journal.r-project.org/archive/2015-1/murrell.pdf">The gridGraphics Package</a>. The R Jounal.</div>


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

--- &twocol

## Graphical parameters

*** =left
- Default values of graphical parameters are stored in `par()`
- `par()` is an object
    - we can get the value of a parameter
- `par()` is also a function
    - we can change the default values

*** =right

```r
## How many graphical parameters?
length(par())
## [1] 72

## Let's get the default value of text color
par()$col
## [1] "black"

## Let's set 'red' for text color
par(col = 'red')

## Check
par()$col
## [1] "red"

## We're good!
```

---

## Graphical parameters

- Important: when you change the value of one parameter, the new value affects all the graphs until the graphical window is closed

<!-- end -->

---

## Graphical parameters

- Important: when you change the value of one parameter, the new value affects all the graphs until the graphical window is closed

<!-- end -->

- A recommendation:
    - Save the default par(): `opar <- par()`
    - Change the values: `par(col = 'red')`
    - Do the graph
    - Restaure the old par(): `par(opar)`


---

## High-level vs. low-level plotting functions

### <u>High-level plotting functions</u>

- Open a new graphical window
- Or erase the content of the previous window
- Examples: `plot()`, `boxplot()`, `barplot()`, `hist()`, etc.

---

## High-level vs. low-level plotting functions

### <u>High-level plotting functions</u>

- Open a new graphical window
- Or erase the content of the previous window
- Examples: `plot()`, `boxplot()`, `barplot()`, `hist()`, etc.

### <u>Low-level plotting functions</u>

- Work only when a graphical window is open
- Add content to the active window
- Examples: `lines()`, `points()`, `axis()`, `legend()`, etc.

--- .tocenter

## High-level vs. low-level plotting functions

<q>You only need to know one high-level plotting function: `plot()`</q>

![plot of chunk unnamed-chunk-28](assets/fig/unnamed-chunk-28-1.pdf)

--- &twocol

## Let's take a look at the data

*** =left
- Random data with no particular sense
- Three variables:
    - x and y: quantitative variables
    - z: qualitative variable (factor)

*** =right

```r
load('../data/xyz.RData')

head(dat)
##       x     y z
## 1 0.680 1.075 A
## 2 0.720 0.835 A
## 3 0.865 1.050 A
## 4 0.800 1.045 A
## 5 0.745 0.815 A
## 6 0.995 0.840 A

summary(dat$z)
##  A  B 
## 50 50
```


--- &twocol

## An empty plot

*** =left
- The default plot
- Quite ugly, isn't it?


```r
plot(x = dat$x, y = dat$y)
```

<!-- end -->

- Now we are going to remove each component of the graph to create an empty plot

*** =right
![plot of chunk unnamed-chunk-31](assets/fig/unnamed-chunk-31-1.pdf)

--- &twocol

## An empty plot

*** =left
- First let's remove the box
- with the argument `bty` (default: `'o'`)


```r
plot(x = dat$x, y = dat$y,
     bty = 'n')
```

*** =right
![plot of chunk unnamed-chunk-33](assets/fig/unnamed-chunk-33-1.pdf)

--- &twocol

## An empty plot

*** =left
- Now let's remove the textual annotation
- with the argument `ann` (default: `'TRUE'`)


```r
plot(x = dat$x, y = dat$y,
     bty = 'n',
     ann = FALSE)
```

*** =right
![plot of chunk unnamed-chunk-35](assets/fig/unnamed-chunk-35-1.pdf)

--- &twocol

## An empty plot

*** =left
- Let's remove the x-axis
- with the argument `xaxt` (default: `'s'`)



```r
plot(x = dat$x, y = dat$y,
     bty = 'n',
     ann = FALSE,
     xaxt = 'n')
```

*** =right
![plot of chunk unnamed-chunk-37](assets/fig/unnamed-chunk-37-1.pdf)


--- &twocol

## An empty plot

*** =left
- And the y-axis
- with the argument `yaxt` (default: `'s'`)


```r
plot(x = dat$x, y = dat$y,
     bty = 'n',
     ann = FALSE,
     xaxt = 'n',
     yaxt = 'n')
```

*** =right
![plot of chunk unnamed-chunk-39](assets/fig/unnamed-chunk-39-1.pdf)

--- &twocol

## An empty plot

*** =left
- Using `axes=FALSE` is the same as:
- `bty='n'`+`xaxt='n'`+`yaxt='n'`


```r
plot(x = dat$x, y = dat$y,
     ann = FALSE,
     axes = FALSE)
```

*** =right
![plot of chunk unnamed-chunk-41](assets/fig/unnamed-chunk-41-1.pdf)

--- &twocol

## An empty plot

*** =left
- Finally let's remove data
- with the argument `type` (default: `'p'`)


```r
plot(x = dat$x, y = dat$y,
     ann = FALSE,
     axes = FALSE,
     type = 'n')
```

<!-- end -->

*** =right
![plot of chunk unnamed-chunk-43](assets/fig/unnamed-chunk-43-1.pdf)

--- &twocol

## An empty plot

*** =left
- Finally let's remove data
- with the argument `type` (default: `'p'`)


```r
plot(x = dat$x, y = dat$y,
     ann = FALSE,
     axes = FALSE,
     type = 'n')
```

<!-- end -->

- In an empty plot, visual information is not displayed but the graph is defined in the window
- It is now possible to use low-level plotting functions such as `points()` or `axis()`

*** =right
![plot of chunk unnamed-chunk-45](assets/fig/unnamed-chunk-45-1.pdf)

---

## An empty plot, and now what?

- Now we've got an empty plot
- We are going to add some informations to:
    - discover useful low-level plotting functions,
    - improve the quality of the default plot

<!-- end -->

- Let's go!

--- &twocol

## Adding points

*** =left

- We will use the function `points()`
- It shares some arguments with the function `plot()`


```r
## Empty plot
plot(x = dat$x, y = dat$y, ann = FALSE,
     bty = 'n', type = 'n')

## Adding points (default settings)
points(x = dat$x, y = dat$y)
```


*** =right

![plot of chunk unnamed-chunk-47](assets/fig/unnamed-chunk-47-1.pdf)

--- &twocol

## Adding points

*** =left

- We can customize the points with:
    - `cex`, the size
    - `col`, the color
    - `pch`, the symbol


```r
## Empty plot
plot(x = dat$x, y = dat$y, ann = FALSE,
     bty = 'n', type = 'n')

## Adding points (user settings)
points(x = dat$x, y = dat$y,
       cex = 3, col = 'red', pch = 17)
```


*** =right

![plot of chunk unnamed-chunk-49](assets/fig/unnamed-chunk-49-1.pdf)

--- &twocol

## Adding points

*** =left

- Some symbols have two colors:
    - `col`: the border color,
    - `bg `: the background color
- This is the case for `pch` = 21 to 25


```r
## Empty plot
plot(x = dat$x, y = dat$y, ann = FALSE,
     bty = 'n', type = 'n')

## Adding points (user settings)
points(x = dat$x, y = dat$y,
       cex = 4, pch = 21,
       col = 'white', bg = 'red')
```

*** =right

![plot of chunk unnamed-chunk-51](assets/fig/unnamed-chunk-51-1.pdf)


--- &twocol

## Adding lines

*** =left

- Four functions allow to plot lines:
    - `points()`
    - `lines()`
    - `abline()`
    - `segments()`
- We will illustrate these functions with a linear regression


*** =right


```r
## Linear regression
(mod <- lm(y ~ x, data = dat))
## 
## Call:
## lm(formula = y ~ x, data = dat)
## 
## Coefficients:
## (Intercept)            x  
##      0.8246       0.1895

(a <- coefficients(mod)[1])
## (Intercept) 
##   0.8246096

(b <- coefficients(mod)[2])
##         x 
## 0.1894751
```

--- &twocol

## Adding lines

*** =left

- First, let's try the function `abline()`
- with the first way


```r
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding line (default settings)
abline(reg = mod)
```

*** =right

![plot of chunk unnamed-chunk-54](assets/fig/unnamed-chunk-54-1.pdf)


--- &twocol

## Adding lines

*** =left

- The second way is to specify model parameters


```r
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding line (default settings)
abline(a = a, b = b)
```

*** =right

![plot of chunk unnamed-chunk-56](assets/fig/unnamed-chunk-56-1.pdf)


--- &twocol

## Adding lines

*** =left

- The function `abline()` allows to draw horizontal and vertical lines


```r
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'o',
     type = 'p', pch = 19)

## Adding line (default settings)
abline(h = 0.8)
abline(h = seq(0.9, 1.2, by = 0.1))
abline(v = seq(0.6, 1.4, by = 0.2))
```

*** =right

![plot of chunk unnamed-chunk-58](assets/fig/unnamed-chunk-58-1.pdf)

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

- mar and oma, xaxs et yaxs










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
layout(mat_lay, widths=c(.25,1,1),
  heights=c(.2,1,.4))

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

- You must call `new=TRUE` and specifying `fig` in `par()`:

  1. create your first plot;


```r
  plot(...)
```



*** =right

![plot of chunk unnamed-chunk-64](assets/fig/unnamed-chunk-64-1.pdf)


--- &twocol

## Embedded plots

*** =left

- You must call `new=TRUE` and specifying `fig` in `par()`:

  1. create your first plot;
  2. use `par()`;


```r
  plot(...)
  par(new=TRUE, fig=c(0.5,1,0.5,1))
```


*** =right

![plot of chunk unnamed-chunk-66](assets/fig/unnamed-chunk-66-1.pdf)


--- &twocol

## Embedded plots

*** =left

- You must call `new=TRUE` and specifying `fig` in `par()`:

  1. create your first plot;
  2. use `par()`;
  3. add your embedded plot;

  
  ```r
    plot(...)
    par(new=TRUE, fig=c(0.5,1,0.5,1))
    plot(...)
  ```

*** =right

![plot of chunk unnamed-chunk-68](assets/fig/unnamed-chunk-68-1.pdf)



<!-- http://www.r-bloggers.com/digging-up-embedded-plots/ -->















--- .transition

## Exporting figures from the command line


---

## grDevices

<img src='assets/img/Murrell2015.jpg' style="width:60%; margin: 0 20%;"/>
<div class='centered'>Murrell, P. (2015) <a href="https://journal.r-project.org/archive/2015-1/murrell.pdf">The gridGraphics Package</a>. The R Jounal.</div>


---

## grDevices


```r
options('device')
```

- Devices available  &nbsp;&nbsp;[<i class="fa fa-globe" aria-hidden="true"></i>](https://stat.ethz.ch/R-manual/R-devel/library/grDevices/html/Devices.html):
  - Quartz &nbsp;&nbsp;[<i class="fa fa-globe" aria-hidden="true"></i>](https://en.wikipedia.org/wiki/Quartz_(graphics_layer)
  - X11 &nbsp;&nbsp; [<i class="fa fa-globe" aria-hidden="true"></i>](https://en.wikipedia.org/wiki/X_Window_System)
  - pdf, jpeg, svg, ...
  - in add-on package :
      -  [rgl  package](https://cran.r-project.org/web/packages/rgl/index.html) &nbsp;&nbsp; (OpenGL website [<i class="fa fa-globe" aria-hidden="true"></i>](https://www.opengl.org))
      - Internet browsers [googleVis](https://stat.ethz.ch/R-manual/R-devel/library/grDevices/html/Devices.html)



--- &twocol

## Exporting figures as a Bitmap files

*** =left

- `bmp()`, `jpeg()`, `png()`, `tiff()`


```r
?jpeg
```

- use them:


```r
png(filename)
...
dev.off()
```

*** =right



<img src='assets/img/fig1.png' style="width:100%;"/>


--- &twocol

## Exporting figures as a Bitmap files

*** =left


```r
jpeg(filename,  width=960)
...
dev.off()
```

*** =right



<img src='assets/img/fig2.png' style="width:100%;"/>




--- &twocol

## Exporting figures as a Bitmap files

*** =left

- `pdf()`,
- cairo_pdf, cairo_ps, svg


*** =left


```r
jpeg(filename, width=1440, height=1440)
...
dev.off()
```

*** =right



<img src='assets/img/fig3.png' style="width:100%;"/>


--- &twocol

## Exporting figures as a Bitmap files

*** =left

- `pdf()`,
- cairo_pdf, cairo_ps, svg


*** =left


```r
jpeg(filename, width=1440, height=1440)
...
dev.off()
```

*** =right



<img src='assets/img/fig4.png' style="width:100%;"/>



--- &twocol

## Exporting figures as a vector files

*** =left

- `pdf()`,
- cairo_pdf, cairo_ps, svg







--- .transition

## Resources

---

## Resources

- CRAN task view fro graphs &nbsp;&nbsp;[<i class="fa fa-globe" aria-hidden="true"></i>](https://cran.r-project.org/web/views/Graphics.html)
- more packages indexed &nbsp;&nbsp;[<i class="fa fa-globe" aria-hidden="true"></i>](http://kevincazelles.fr/rgraphics/2015/12/04/r-and-graphics.html)
- ggplot2 website &nbsp;&nbsp;[<i class="fa fa-globe" aria-hidden="true"></i>](http://docs.ggplot2.org/current/)






--- .transition

## Let's pratice!

---

## Three challenges

1. "refaire une figure du samedi"
2. a fig quite complicated...
3. Code your own boxplot function.
