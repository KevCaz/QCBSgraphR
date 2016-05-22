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
    - Change the values: `par(col='red')`
    - Do the graph
    - Restaure the old par(): `par(opar)`

---

## Graphical parameters

- Important: when you change the value of one parameter, the new value affects all the graphs until the graphical window is closed

<!-- end -->

- A recommendation:
    - Save the default par(): `opar <- par()`
    - Change the values: `par(col = 'red')`
    - Do the graph
    - Restaure the old par(): `par(opar)`

<!-- end -->

- Some graphical parameters can also be changed directly in plotting functions

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

--- &twocol

## Adding lines

*** =left

- Now take a look at the functions `lines()` and `points()`
- But first, we are going to predict the model on new data

*** =right


```r
## New data frame
mat <- data.frame(x = seq(0.6, 1.4, by = 0.05))

## Model prediction
ypred <- predict(object = mod, newdata = mat)
```

--- &twocol

## Adding lines

*** =left

- Let's add model regression with the functions `lines()` and `points()`


```r
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding line (default settings)
lines(x = mat$x, y = ypred)

## Or, with the function points()
points(x = mat$x, y = ypred, type = 'l')
```

*** =right

![plot of chunk unnamed-chunk-61](assets/fig/unnamed-chunk-61-1.pdf)

--- &twocol

## Adding lines

*** =left

- We can customize the lines with:
    - `lwd`, the line width
    - `col`, the line color
    - `lty`, the line type


```r
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding line (user settings)
lines(x = mat$x, y = ypred,
      col = 'red', lwd = 4, lty = 2)
```

*** =right

![plot of chunk unnamed-chunk-63](assets/fig/unnamed-chunk-63-1.pdf)

--- &twocol

## Adding polygons

*** =left

- To add a polygon, the function is `polygon()`
- A special, the rectangle can be drawn with `rect()`
- Let's predict again the model, but this time with the standard error

*** =right

```r
## Model prediction with se
ypred <- predict(object = mod, newdata = mat,
                 se.fit = TRUE)

class(ypred)
## [1] "list"

names(ypred)[1:2]
## [1] "fit"    "se.fit"
```


--- &twocol

## Adding polygons

*** =left

- We are going to add the error envelope with the function `polygon()`
- So, let's calculate the coordinates of this envelope

*** =right

```r
## Superior interval
xsup <- mat[ , 'x']
ysup <- ypred$fit + ypred$se.fit

## Inferior interval
xinf <- mat[ , 'x']
yinf <- ypred$fit - ypred$se.fit

## Reverse sort of inf.
xinf <- mat[nrow(mat) : 1, 'x']
yinf <- yinf[length(yinf) : 1]
```

--- &twocol

## Adding polygons

*** =left

- Let's add model error envelope


```r
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding error envelope
polygons(x = c(xsup, xinf), y = c(ysup, yinf))
```

*** =right

![plot of chunk unnamed-chunk-67](assets/fig/unnamed-chunk-67-1.pdf)

--- &twocol

## Adding polygons

*** =left

- We can customize the polygon with:
    - `border`, the border color
    - `col`, the background color
    - `lwd`, the border width


```r
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding error envelope
polygon(x = c(xsup, xinf), y = c(ysup, yinf),
        col = 'orange', border = 'red',
        lwd = 4)
```

*** =right

![plot of chunk unnamed-chunk-69](assets/fig/unnamed-chunk-69-1.pdf)

--- &twocol

## Adding polygons

*** =left

- Finally


```r
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding error envelope
polygon(x = c(xsup, xinf), y = c(ysup, yinf),
        col = '#aaaaaa88', border = '#aaaaaa88')

## Adding model regression
lines(x = mat$x, y = ypred$fit, lwd = 3)
```

*** =right

![plot of chunk unnamed-chunk-71](assets/fig/unnamed-chunk-71-1.pdf)

--- &twocol

## Adding polygons

*** =left

- The function `rect()` is appropiated when you want to add draw rectangle
- Here is an example


```r
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

rect(xleft = 0.9, ybottom = 0.8,
     xright = 1.1, ytop = 1.2,
     density = 20, angle = 45)
```

*** =right

![plot of chunk unnamed-chunk-73](assets/fig/unnamed-chunk-73-1.pdf)

--- &twocol

## Adding polygons

*** =left

- You also can customize the rectangle


```r
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

rect(xleft = 0.9, ybottom = 0.8,
     xright = 1.1, ytop = 1.2,
     col = 'yellow', border = 'red',
     lwd = 4, lty = 3)
```

*** =right

![plot of chunk unnamed-chunk-75](assets/fig/unnamed-chunk-75-1.pdf)

--- &twocol

## Adding textual informations

*** =left

- Let's see now how to add text
- First let's add a main title with the function `title()`


```r
## Basic plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding title
title(main = 'Figure title')
```

*** =right

![plot of chunk unnamed-chunk-77](assets/fig/unnamed-chunk-77-1.pdf)


--- &twocol

## Adding textual informations

*** =left

- What about adding text in the plot area?
- We will use the function `text()`
- Here is a first example


```r
## Basic plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19)

## Adding text
text(x = 0.7, y = 1.19,
     labels = 'Figure title')
```

*** =right

![plot of chunk unnamed-chunk-79](assets/fig/unnamed-chunk-79-1.pdf)

--- &twocol

## Adding textual informations

*** =left

- And another example


```r
## Empty plot
plot(x = dat$x, y = dat$y, bty = 'n', type = 'n')

## Adding text
text(x = dat$x, y = dat$y, labels = dat$z)
```

*** =right

![plot of chunk unnamed-chunk-81](assets/fig/unnamed-chunk-81-1.pdf)

--- &twocol

## Adding textual informations

*** =left

- Let's customize a little the text with:
    - `cex`, the size
    - `col`, the color
    - `font`, the font (bold, italic, etc.)
    - `family`, the typeface


```r
## Basic plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'n')

## Adding text
text(x = 1, y = 1, labels = 'My text', col = 'red', 
     cex = 2, font = 2, family = 'mono')
```

*** =right

![plot of chunk unnamed-chunk-83](assets/fig/unnamed-chunk-83-1.pdf)


--- &twocol

## Adding textual informations

*** =left

- Finally, let's customize the orientation and position
    - `srt`, the rotation angle
    - `pos`, the position from coordinates


```r
## Basic plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'n')

## Adding text
text(x = 0.6, y = 0.85, labels = 'pos = 4 (right)',
     cex = 2, font = 1, pos = 4)
text(x = 1, y = 1, labels = 'Rotated text',
     cex = 2, font = 2, srt = 45)
```

*** =right

![plot of chunk unnamed-chunk-85](assets/fig/unnamed-chunk-85-1.pdf)

--- &twocol

## Adding textual informations

*** =left

- But the function `text()` can't add text outside the plot area
- except if `par(xpd=TRUE)`
- We will use the function `mtext()`


```r
## Basic plot
plot(x = dat$x, y = dat$y, bty = 'n',
     type = 'p', pch = 19, ylab = '')

## Adding text
mtext(text = 'y-axis', side = 2, line = 2,
      at = 1.15, font = 2, cex = 2)
```

*** =right

![plot of chunk unnamed-chunk-87](assets/fig/unnamed-chunk-87-1.pdf)

---

## Back to colors

- R has some predefine colors palettes


```r
## Basic colors
palette()
## [1] "black"   "red"     "green3"  "blue"    "cyan"    "magenta" "yellow" 
## [8] "gray"

## and 657 others colors
colors()[1:10]
##  [1] "white"         "aliceblue"     "antiquewhite"  "antiquewhite1"
##  [5] "antiquewhite2" "antiquewhite3" "antiquewhite4" "aquamarine"   
##  [9] "aquamarine1"   "aquamarine2"
```

--- &twocol

## Back to colors

*** =left

- You can define colors in the RGB system with `rgb()`
- You specify value between 0 to 1 for each primary colors
- For example:


```r
red    <- rgb(red = 1,   green = 0,   blue = 0)
yellow <- rgb(red = 1,   green = 1,   blue = 0)
gray1  <- rgb(red = 0.5, green = 0.5, blue = 0.5)
```

<!-- *** =right -->

--- &twocol

## Back to colors

*** =left

- You can define colors in the RGB system with `rgb()`
- You specify value between 0 to 1 for each primary colors
- For example:


```r
red    <- rgb(red = 1,   green = 0,   blue = 0)
yellow <- rgb(red = 1,   green = 1,   blue = 0)
gray1  <- rgb(red = 0.5, green = 0.5, blue = 0.5)
```

*** =right
- The `alpha` argument controls for opacity (default = `1`)
- Its values vary from 0 (transparent) to 1 (opaque)
- For example


```r
## Transparent red
redp <- rgb(red = 1, green = 0, blue = 0,
            alpha = .8)
```

--- &twocol

## Back to colors

*** =left

- Let's see an application


```r
## Empty plot
plot(x = dat$x, y = dat$y, ann = FALSE,
     bty = 'n', type = 'n')

## Transparent red
redp <- rgb(red = 1, green = 0, blue = 0,
            alpha = .5)

## Adding points
points(x = dat$x, y = dat$y, col = redp,
       pch = 19, cex = 4)
```

*** =right
![plot of chunk unnamed-chunk-93](assets/fig/unnamed-chunk-93-1.pdf)

--- &twocol

## Back to colors

*** =left

- You can also define colors in the hexadecimal system
- Each primary colors is define by two values varying from 0 to 9 and A to F
- For example:


```r
red    <- '#FF0000'
yellow <- '#FFFF00'
gray1  <- '#888888'
```

<!-- *** =right -->

--- &twocol

## Back to colors

*** =left

- You can also define colors in the hexadecimal system
- Each primary colors is define by two values varying from 0 to 9 and A to F
- For example:


```r
red    <- '#FF0000'
yellow <- '#FFFF00'
gray1  <- '#888888'
```

*** =right
- To add transparency, we have to add two hexadecimal character at the end
- For example,


```r
## Transparent red
redp <- '#FF000088'
```

--- &twocol

## Adding axis

*** =left
- The function `axis()` allows to add axis
- Here is an example of usage


```r
## Empty plot
plot(x = dat$x, y = dat$y, pch = 19)

## Adding top-axis
axis(side = 3, at = seq(0.6, 1.4, by = 0.1),
     labels = seq(0.6, 1.4, by = 0.1), las = 1)

## Adding right-axis
axis(side = 4, at = seq(0.8, 1.2, by = 0.1),
     labels = format(seq(0.8, 1.2, by = 0.1)),
     las = 2)
```

*** =right
![plot of chunk unnamed-chunk-98](assets/fig/unnamed-chunk-98-1.pdf)

--- &twocol

## Figure margins

*** =left
- To change the figure margins you have to change the values of the parameter `mar` in the `par()`
- The order is the follow: bottom, left, top and right
- For example:


```r
par(mar = c(4, 4, 4, 4))
```

<!-- *** =right -->

--- &twocol

## Exercise 1

*** =left

- Objective: reproduce this figure
- Using the dataset `iris.txt` (Dropbox)


```r
head(tab)
## Error in head(tab): objet 'tab' introuvable
```

*** =right

- The size of the bubble is proportional to `n`
- Lines represent regression model and standard error

--- .tocenter2

## Exercise 1

![plot of chunk unnamed-chunk-101](assets/fig/unnamed-chunk-101-1.pdf)

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
![plot of chunk unnamed-chunk-105](assets/fig/unnamed-chunk-105-1.pdf)


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
![plot of chunk unnamed-chunk-107](assets/fig/unnamed-chunk-107-1.pdf)


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
![plot of chunk unnamed-chunk-109](assets/fig/unnamed-chunk-109-1.pdf)


--- &twocol

## More about 'layout()'

*** =left


```r
mat_lay <- matrix(c(1,2,4,1,3,4), nrow=3)
layout(mat_lay)
```


```
##      [,1] [,2]
## [1,]    1    1
## [2,]    2    3
## [3,]    4    4
```

*** =right
![plot of chunk unnamed-chunk-112](assets/fig/unnamed-chunk-112-1.pdf)


--- &twocol

## More about 'layout()'

*** =left


```r
mat_lay <- matrix(c(0,2,2,1,3,3,1,4,0), nrow=3)
layout(mat_lay)
```


```
##      [,1] [,2] [,3]
## [1,]    0    1    1
## [2,]    2    3    4
## [3,]    2    3    0
```

*** =right
![plot of chunk unnamed-chunk-115](assets/fig/unnamed-chunk-115-1.pdf)


--- &twocol

## More about 'layout()'

*** =left


```r
mat_lay <- matrix(c(0,2,2,1,3,3,1,4,0),nrow=3)
layout(mat_lay, widths=c(.25,1,1))
```

*** =right
![plot of chunk unnamed-chunk-117](assets/fig/unnamed-chunk-117-1.pdf)


--- &twocol

## More about 'layout()'

*** =left


```r
mat_lay <- matrix(c(0,2,2,1,3,3,1,4,0),nrow=3)
layout(mat_lay, widths=c(.25,1,1),
  heights=c(.25,1,.25))
```

*** =right
![plot of chunk unnamed-chunk-119](assets/fig/unnamed-chunk-119-1.pdf)


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
![plot of chunk unnamed-chunk-121](assets/fig/unnamed-chunk-121-1.pdf)



--- &twocol

## Embedded plots

*** =left

- You must call `new=TRUE` and specifying `fig` in `par()`:

  1. create your first plot;


```r
  plot(...)
```



*** =right

![plot of chunk unnamed-chunk-123](assets/fig/unnamed-chunk-123-1.pdf)


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

![plot of chunk unnamed-chunk-125](assets/fig/unnamed-chunk-125-1.pdf)


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

![plot of chunk unnamed-chunk-127](assets/fig/unnamed-chunk-127-1.pdf)

<!-- http://www.r-bloggers.com/digging-up-embedded-plots/ -->













--- .transition

## Exporting figures from the command line


---

## grDevices

<img src='assets/img/Murrell2015.jpg' style="width:75%; margin: 0 10%;"/>
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
      -  [rgl  package](https://cran.r-project.org/web/packages/rgl/index.html) (OpenGL website &nbsp;&nbsp; [<i class="fa fa-globe" aria-hidden="true"></i>](https://www.opengl.org))
      - Internet browsers [googleVis](https://stat.ethz.ch/R-manual/R-devel/library/grDevices/html/Devices.html)




--- &twocol

## Exporting figures as bitmap files

*** =left

- `bmp()`, `jpeg()`, `png()`, `tiff()`

```r
?jpeg
```

- use them:

```r
png(filename, width=480, height=480)
...
dev.off()
```

*** =right



<img src='assets/img/fig1.png' style="width:90%;"/>



--- &twocol

## Exporting figures as bitmap files

*** =left

```r
png(filename, width=1440, height=1440)
...
dev.off()
```

*** =right



<img src='assets/img/fig2.png' style="width:90%;"/>


---

## Exporting figures as bitmap files


> - pixel (px) = small colored square;
> - `width=480` + `height=480` = grid of 480x480px ;
> - point (pt) = unit of length (measures the height of a font);
> - 1pt = 1/72 inch;
> - `pointsize` of plotted text = how many points your font will use (size of the text);
> - resolution `res` (in px per inch, *ppi*) links pixel and size;
> - `res` determines how many pixels = 1pt;
> - if `res=72` then one point will equal exactly one pixel.
> - `res=72` + `width=480` + `height=480` =  6.667x6.667in => 16.9*16.9cm
> - `res=300` + `width=480` + `height=480` =  1.6x1.6in =>  4.06cmx4.06cm
> - font 12 points => 0.42cm




--- &twocol

## Exporting figures as bitmap files

*** =left


```r
jpeg(filename, res=72,
  pointsize=12, width=480, height=480)
...
dev.off()
```

*** =right



<img src='assets/img/fig3.png' style="width:90%;"/>



--- &twocol

## Exporting figures as bitmap files

*** =left

<img src='assets/img/fig3b.jpg' style="width:90%;margin: 8% 4%;"/>

- pointsize=12
- res=72
- cex=1

*** =right

<img src='assets/img/fig3a.jpg' style="width:90%;margin: 8% 4%;"/>

- pointsize=12
- res=72
- cex=2




--- &twocol

## Exporting figures as bitmap files

*** =left

```r
png(filename, res=144)
...
dev.off()
```

*** =right



<img src='assets/img/fig4.png' style="width:90%;"/>



--- &twocol

## Exporting figures as bitmap files

*** =left

```r
png(filename, res=144,
  height=7, width=7, unit="in")
...
dev.off()
```

*** =right



<img src='assets/img/fig5.png' style="width:90%;"/>



--- &twocol

## Exporting figures as bitmap files

*** =left

```r
png(filename, res=288,
   height=7, width=7, unit="in")
...
dev.off()
```

*** =right



<img src='assets/img/fig6.png' style="width:90%;"/>



--- &twocol

## Exporting figures as bitmap files

*** =left

```r
png(filename, res=288,
  height=7, width=7, unit="in")
...
dev.off()
```

*** =right



<img src='assets/img/fig7.png' style="width:90%;"/>



--- &twocol

## Exporting figures as bitmap files

*** =left

```r
png(filename, res=288,
  height=2*7, width=7, unit="in")
...
dev.off()
```

*** =right



<img src='assets/img/fig8.png' style="width:50%; margins:40% 40%;"/>





--- &twocol

## Exporting figures as vector files


- `pdf()`;
- Cairo  &nbsp;&nbsp;[<i class="fa fa-globe" aria-hidden="true"></i>](https://cairographics.org/documentation/) :
    - `cairo_pdf()`
    - `cairo_ps()`
    - `svg()`





--- &twocol

## Exporting figures as vector files

*** =left

```r
pdf(fil, pointsize=12,
  height=2*7, width=7)
...
dev.off()
```

*** =right



<img src='assets/img/fig9.pdf' style="width:90%"/>



--- &twocol

## Exporting figures as vector files

*** =left

```r
svg(filename, pointsize=12,
  height=2*7, width=7)
...
dev.off()
```

*** =right



<img src='assets/img/fig10.svg' style="width:90%"/>




















--- .transition

## Let's practice!

---

## Three challenges

- CRAN task view fro graphs &nbsp;&nbsp;[<i class="fa fa-globe" aria-hidden="true"></i>](https://cran.r-project.org/web/views/Graphics.html)
- more packages indexed &nbsp;&nbsp;[<i class="fa fa-globe" aria-hidden="true"></i>](http://kevincazelles.fr/rgraphics/2015/12/04/r-and-graphics.html)
- ggplot2 website &nbsp;&nbsp;[<i class="fa fa-globe" aria-hidden="true"></i>](http://docs.ggplot2.org/current/)
- Color: [An interesting blog post](http://www.stat.ubc.ca/~jenny/STAT545A/block14_colors.html)
- And an useful document: &nbsp;&nbsp;[<i class="fa fa-globe" aria-hidden="true"></i>](http://kevincazelles.fr/material/assets/graphR_2014.pdf)





--- .transition

## Resources

---

## Resources

- CRAN task view fro graphs &nbsp;&nbsp;[<i class="fa fa-globe" aria-hidden="true"></i>](https://cran.r-project.org/web/views/Graphics.html)
- more packages indexed &nbsp;&nbsp;[<i class="fa fa-globe" aria-hidden="true"></i>](http://kevincazelles.fr/rgraphics/2015/12/04/r-and-graphics.html)
- ggplot2 website &nbsp;&nbsp;[<i class="fa fa-globe" aria-hidden="true"></i>](http://docs.ggplot2.org/current/)
