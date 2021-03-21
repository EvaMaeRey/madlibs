
<!-- README.md is generated from README.Rmd. Please edit that file -->

# madlibs

<!-- badges: start -->
<!-- badges: end -->

The goal of madlibs is to be able to replace words in prose with
incomplete versions of the words.

## Installation

You can install the development version of madlibs from github.com with:

``` r
devtools::install_github("EvaMaeRey/madlibs")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(magrittr)
Warning: package 'magrittr' was built under R version 3.6.2
library(madlibs)
madlibs::remove_aeiou(x = "Hello, World!")
```

H \_ ll \_ , W \_ rld!

You will probably want to use the function
[inline](https://rmarkdown.rstudio.com/lesson-4.html), in the middle of
a paragraph so you get a result like this to gently test some knowledge:

*People can makes sense of in data when it is v \_ s \_ \_ l \_ z \_ d
much more easily than when it is in its raw, table form. The package
ggplot2 is a package implementing the gr \_ mm \_ r of gr \_ ph \_ cs;
the underlying philosophy is also used in Tableau and D3 (a java script
library).*

``` r
set.seed(1234)
drop_words(x = "The woods are lovely, dark and deep", frac = .3)
```

The woods are lovely, \_\_\_\_ and deep

------------------------------------------------------------------------

``` r
madlibs:::create_wandered_lonely() %>% 
  drop_words(frac = .1)
I wandered lonely as a cloud
 ____ floats on high o'er vales and hills,
 When all at once I saw _ crowd,
 A host, of golden daffodils;
 Beside the lake, beneath ___ trees,
 Fluttering and dancing in the breeze.
 
 Continuous as the stars that shine
 And twinkle on the milky way,
 They stretched in never-ending line
 Along the margin of a bay:
 Ten thousand saw I at a glance,
 Tossing their heads __ sprightly dance.
 
 The waves beside them danced; but they
 ___-___ the sparkling waves in glee:
 A poet could not but be gay,
 In such a jocund company:
 I gazed—and gazed—but ______ thought
 What ______ ___ show to me had _______:
 
 ___ oft, when on my couch I ___
 In vacant or __ pensive ____,
 They flash upon that ______ eye
 Which is the bliss of ________;
 And then my heart with pleasure _____,
 And ______ with the daffodils.
```
