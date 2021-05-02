
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

\[1\] “The woods \_\_\_ \_\_\_\_\_\_, \_\_\_\_ \_\_\_ deep ”

------------------------------------------------------------------------

``` r
madlibs:::create_wandered_lonely() %>% 
  drop_words(frac = .3) 
```

\[1\] “I wandered lonely as a cloud ”  
\[2\] “\_\_\_\_ floats \_\_ \_\_\_\_ o’er vales and hills, ” \[3\]
“\_\_\_\_ \_\_\_ at once I saw a crowd, ”  
\[4\] “\_ host, of \_\_\_\_\_\_ \_\_\_\_\_\_\_\_\_; ”  
\[5\] “Beside the \_\_\_\_, beneath \_\_\_ \_\_\_\_\_, ”  
\[6\] “Fluttering and \_\_\_\_\_\_\_ in the breeze. ”  
\[7\] " "  
\[8\] “Continuous \_\_ the stars \_\_\_\_ \_\_\_\_\_ ”  
\[9\] “\_\_\_ twinkle on the milky ***, "  
\[10\] "They stretched ** never-ending *\_\_\_ ”  
\[11\] “\_\_\_\_\_ the \_\_\_\_\_\_ of a bay ”  
\[12\] “Ten \_\_\_\_\_\_\_\_ saw I at \_ glance, ”  
\[13\] “\_\_\_\_\_\_\_ \_\_\_\_\_ heads \_\_ sprightly dance. ”  
\[14\] " "  
\[15\] “\_\_\_ waves beside them danced; but \_\_\_\_ ”  
\[16\] “Out-did the \_\_\_\_\_\_\_\_\_ waves \_\_ glee ”  
\[17\] “A \_\_\_\_ \_\_\_\_\_ not but be ***, "  
\[18\] "In such * jocund company "  
\[19\] "I gazed-and gazed-but **\_\_\_\_ thought ”  
\[20\] “\_\_\_\_ wealth the show to me \_\_\_ \_\_\_\_\_\_\_ ”  
\[21\] " "  
\[22\] “For ***, ***\_ \_\_ \_\_ couch \_ lie ”  
\[23\] “In vacant or \_\_ pensive mood, ”  
\[24\] “They flash \_\_\_\_ that inward eye ”  
\[25\] “\_\_\_\_\_ is the bliss of solitude; ”  
\[26\] “And \_\_\_\_ my heart with \_\_\_\_\_\_\_\_ \_\_\_\_\_, ”  
\[27\] “And dances with the daffodils. ”
