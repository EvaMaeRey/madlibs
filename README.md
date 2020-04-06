
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

``` r
set.seed(1234)
drop_words(x = "The woods are lovely, dark and deep", frac = .3)
#> Warning: `cols` is now required.
#> Please use `cols = c(token)`
#> I wandered lonely as ______ cloud
#>  That floats on high o'er vales and ______
#>  When ______ at once I saw a crowd,
#>  A host, of ______ daffodils;
#>  ______ ______ lake, beneath the trees,
#>  Fluttering and ______ in the ______
#>  ______
#>  Continuous as the stars that shine
#>  And twinkle on ______ milky way,
#>  ______ stretched in never-ending line
#>  ______ the ______ ______ a bay:
#>  Ten thousand ______ I at a glance,
#>  Tossing ______ heads ______ sprightly dance.
#>  
#>  The waves beside ______ danced; but they
#>  Out-did ______ sparkling waves in ______
#>  A ______ could not but be gay,
#>  In such ______ jocund company:
#>  I gazed—and gazed—but little thought
#>  What wealth the ______ to ______ had brought:
#>  ______
#>  ______ oft, when ______ ______ ______ ______ ______
#>  In vacant or in pensive mood,
#>  ______ flash upon that ______ eye
#>  ______ is the ______ of ______
#>  And then my heart ______ pleasure ______
#>  And dances with the ______
```

-----

``` r
create_wandered_lonely() %>% 
  drop_words(frac = .1)
```
