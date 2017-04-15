# QCBSgraphR

Code source of the 'R Graphs' presentation made with [Slidify](http://slidify.org)

## InstallL slidify

```
library(devtools)
install_github("ramnathv/slidify")
install_github("ramnathv/slidifyLibraries")
```

## Content

- **lecture folder**:
    - index.Rmd : the one that has been used to edit the presetation and that generates index.md it-self generates index.html;
    - index.html : the file your web browser will use;
    - other directories are frameworks, images, figures we used for the presentation.

- **data folder**: data for the exercises.

- **scripts**:
  - code_R.R and multipanel.R are used to generate example used in the presentation;
  - Exercise1.R and Exercise1.R are solutions to the exercises we proposed;
  - myboxplot.R a solution for the challenge : "do your own boxplot" (not integrated in the presentation yet);
  - showtext.R a short script to present how to use [showtext package](https://cran.rstudio.com/web/packages/showtext/index.html) that allows to use different font in R.



## Todo List

- add more exercises
- add some slides about `legend()` function
