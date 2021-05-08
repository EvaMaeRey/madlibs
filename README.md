
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

H \_ ll \_ , W \_ rld!

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

The \_\_\_\_\_ are lovely, \_\_\_\_ and \_\_\_\_

------------------------------------------------------------------------

``` r
madlibs:::create_wandered_lonely() %>% 
  madlibs:::drop_words()
I wandered lonely as a cloud 
   That ______ on high _'__ _____ ___ hills, 
   When all __ once I ___ a crowd, 
   A host, of ______ daffodils; 
   ______ the ____, beneath the trees, 
   Fluttering and dancing in the breeze. 
    
   __________ as the _____ that shine 
   And twinkle on the milky ___, 
   They stretched in never-ending line 
   _____ the margin of _ bay 
   Ten thousand saw _ __ _ glance, 
   _______ their heads __ sprightly dance. 
    
   The waves beside ____ danced; but ____ 
   Out-did the sparkling waves in glee 
   A poet could not but be gay, 
   __ such a jocund company 
   I _____-___ gazed-but little thought 
   What wealth the show to me ___ _______ 
    
   For oft, when on my _____ _ ___ 
   In vacant __ __ pensive mood, 
   They flash upon that inward eye 
   Which __ the bliss of solitude; 
   And then my heart with pleasure _____, 
   And dances ____ ___ daffodils. 
  
```

``` r
madlibs:::twain() %>% 
  drop_words() 
I went often to look __ the collection of curiosities __ __________ Castle, ___ one day I surprised the keeper of it with __ ______. I spoke entirely in that language. He was greatly __________; and after I ___ talked a while __ said my German was ____ ____, possibly _ "unique;" ___ wanted to add it to his museum. 
    
   If __ had known what it had cost me to acquire my ___, he would also have _____ ____ __ would break any collector to buy it. Harris and I had been ____ at work __ our German during several weeks at that ____, and although we ___ ____ good progress, it had ____ accomplished under great difficulty ___ _________, for three __ our teachers had ____ in the ________. A person who has not _______ German can form no idea __ what a perplexing ________ it is. 
  
```
