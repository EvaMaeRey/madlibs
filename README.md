
<!-- README.md is generated from README.Rmd. Please edit that file -->

# madlibs

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

The goal of madlibs is to be able to replace words in prose with
incomplete versions of the words or drop words altogether.

## Installation

You can install the development version of madlibs from github.com with:

``` r
devtools::install_github("EvaMaeRey/madlibs")
```

## Drop vowels

``` r
library(magrittr)
Warning: package 'magrittr' was built under R version 3.6.2
library(madlibs)
drop_vowels(x = "Hello, World!")
```

\[1\] “H \_ ll \_ , W \_ rld!”

You will probably want to use the function
[inline](https://rmarkdown.rstudio.com/lesson-4.html), in the middle of
a paragraph so you get a result like this to gently test some knowledge:

*People can makes sense of r drop\_vowels(“relationships”)\` in data
when it is v \_ s \_ \_ l \_ z \_ d much more easily than when it is in
its raw, table form. The package ggplot2 is a package implementing the
gr \_ mm \_ r of gr \_ ph \_ cs; the underlying philosophy is also used
in Tableau and D3 (a java script library).*

# Drop words

``` r
drop_words(x = "The woods are lovely, dark and deep", frac = .5)
```

\[1\] “\_\_\_ woods are lovely, dark \_\_\_ \_\_\_\_”

------------------------------------------------------------------------

``` r
madlibs:::create_wandered_lonely() %>% 
  drop_words(frac = .3)
```

\[1\] “I \_\_\_\_\_\_\_\_ lonely as \_ \_\_\_\_\_”  
\[2\] “That \_\_\_\_\_\_ on \_\_\_\_ o’er \_\_\_\_\_ and hills,” \[3\]
“When all \_\_ once I saw a crowd,”  
\[4\] “\_ host, of \_\_\_\_\_\_ daffodils;”  
\[5\] “Beside the lake, \_\_\_\_\_\_\_ the \_\_\_\_\_,”  
\[6\] “Fluttering and dancing in the \_\_\_\_\_\_.”  
\[7\] “”  
\[8\] “Continuous as the stars that shine”  
\[9\] “And twinkle on the \_\_\_\_\_ way,”  
\[10\] “They \_\_\_\_\_\_\_\_\_ in \_\_\_\_\_-\_\_\_\_\_\_ line”  
\[11\] “\_\_\_\_\_ the \_\_\_\_\_\_ of a bay”  
\[12\] “Ten thousand saw I at a glance,”  
\[13\] “Tossing their \_\_\_\_\_ in \_\_\_\_\_\_\_\_\_ dance.”  
\[14\] “”  
\[15\] “The waves beside them danced; but they”  
\[16\] “Out-did the sparkling waves in glee”  
\[17\] “A poet could not \_\_\_ be gay,”  
\[18\] “In such a jocund company”  
\[19\] “I \_\_\_\_\_-\_\_\_ gazed-but little \_\_\_\_\_\_\_”  
\[20\] “What wealth \_\_\_ show to me \_\_\_ brought”  
\[21\] “”  
\[22\] “For oft, \_\_\_\_ on my couch I ***"  
\[23\] "In vacant or in pensive mood,"  
\[24\] "***\_ \_\_\_\_\_ upon that inward eye”  
\[25\] “Which is the bliss of \_\_\_\_\_\_\_\_;”  
\[26\] “And \_\_\_\_ my heart \_\_\_\_ \_\_\_\_\_\_\_\_ \_\_\_\_\_,”  
\[27\] “\_\_\_ dances with \_\_\_ daffodils.”
