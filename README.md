
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
library(madlibs)
madlibs::remove_aeiou(x = "Hello, World!")
#> [1] "H _ ll _ , W _ rld!"
```

You will probably want to use the function
[inline](https://rmarkdown.rstudio.com/lesson-4.html), in the middle of
a paragraph so you get a result like this to gently test some knowledge:

*People can makes sense of relationships in data when it is v \_ s \_ \_
l \_ z \_ d much more easily than when it is in its raw, table form. The
package ggplot2 is a package implementing the gr \_ mm \_ r of gr \_ ph
\_ cs; the underlying philosophy is also used in Tableau and D3 (a java
script library).*
