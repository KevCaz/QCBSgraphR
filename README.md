# QCBSgraphR

Code source of the 'R Graphs' presentation made with [Slidify](http://slidify.org)


## How to use this repository

1. Clone this repository

2. Install slidify

```R
library(devtools)
install_github("ramnathv/slidify")
install_github("ramnathv/slidifyLibraries")
```

3. use slidify to build the presentation

```R
library(slidify)
slidify("docs/index.Rmd")
```
or use the `makefile`

```bash
make
```


## Content

### docs
- `index.Rmd`: to be converted into `index.md` and then into `index.html`;
- `index.html`: the file your web browser will use;
- other directories are frameworks, images, figures we used for the presentation.

- **data folder**: data for the exercises.

- **scripts**:
  - `code_R.R` and multipanel.R are used to generate example used in the presentation;
  - Exercise1.R and Exercise1.R are solutions to the exercises we proposed;
  - myboxplot.R a solution for the challenge : "do your own boxplot" (not integrated in the presentation yet);
  - showtext.R a short script to present how to use [showtext package](https://cran.rstudio.com/web/packages/showtext/index.html) that allows to use different font in R.


## To do

- Slidify is not maintained anymore, so let's use something else...
