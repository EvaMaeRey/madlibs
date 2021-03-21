
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

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(magrittr)
Warning: package 'magrittr' was built under R version 3.6.2
library(madlibs)
# drop_vowels(x = "Hello, World!")
```

You will probably want to use the function
[inline](https://rmarkdown.rstudio.com/lesson-4.html), in the middle of
a paragraph so you get a result like this to gently test some knowledge:

<!-- *People can makes sense of r drop_vowels("relationships")` in data when it is v \_ s \_ \_ l \_ z \_ d much more easily than when it is in its raw, table form. The package ggplot2 is a package implementing the gr \_ mm \_ r of gr \_ ph \_ cs; the underlying philosophy is also used in Tableau and D3 (a java script library).* -->

``` r
set.seed(1234)
drop_words(x = "The woods are lovely, dark and deep", frac = .3)
```

\[1\] “The woods are lovely, \_\_\_\_ and deep”

------------------------------------------------------------------------

``` r
madlibs:::create_wandered_lonely() %>% 
  drop_words(frac = .1)
 [1] "I wandered lonely as a cloud\n"             
 [2] "____ floats on high o'er vales and hills,\n"
 [3] "When all at once I saw _ crowd,\n"          
 [4] "A host, of golden daffodils;\n"             
 [5] "Beside the lake, beneath ___ trees,\n"      
 [6] "Fluttering and dancing in the breeze.\n"    
 [7] "\n"                                         
 [8] "Continuous as the stars that shine\n"       
 [9] "And twinkle on the milky way,\n"            
[10] "They stretched in never-ending line\n"      
[11] "Along the margin of a bay\n"                
[12] "Ten thousand saw I at a glance,\n"          
[13] "Tossing their heads __ sprightly dance.\n"  
[14] "\n"                                         
[15] "The waves beside them danced; but they\n"   
[16] "___-___ the sparkling waves in glee\n"      
[17] "A poet could not but be gay,\n"             
[18] "In such a jocund company\n"                 
[19] "I gazed-and gazed-but ______ thought\n"     
[20] "What ______ ___ show to me had _______\n"   
[21] "\n"                                         
[22] "___ oft, when on my couch I ___\n"          
[23] "In vacant or __ pensive ____,\n"            
[24] "They flash upon that ______ eye\n"          
[25] "Which is the bliss of ________;\n"          
[26] "And then my heart with pleasure _____,\n"   
[27] "And ______ with the daffodils.\n"           
```
