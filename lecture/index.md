---
title       : R Graphics
subtitle    : An overview of possibilities
author      : Kévin Cazelles and Nicolas Casajus
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

library(slidify)
setwd('~/MEGA/QCBSgraphR/lecture')
slidify('index.rmd')

-->

## Plan

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

---

## The components of a graphic

---

## Guidelines for better graphics

---

## The R system

---

## Graphical packages

- graphics
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
- map

---

## An empty plot

---

## Adding points, lines, rectangles and polygons

- the functions: points(), lines(), rect(), polygon() and box()
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
- customised color palettes

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
