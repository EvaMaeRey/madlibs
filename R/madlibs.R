#' remove aeiou
#'
#' @param x a string input
#'
#' @return a string object
#' @export
#'
#' @examples
#' remove_aeiou("Hello, World!")
remove_aeiou <- function(x){ stringr::str_replace_all(x, "[aeiou]", " \\_ ") }



#' Drop words to quiz knowledge of a text
#'
#' @param x a string input usually a paragraph
#' @param frac a fraction of words to replace with empty spaces
#'
#' @return
#' @export
#'
#' @examples
#' drop_words(x = "The woods are lovely dark and deep, but I have promises to keep and miles to go before I sleep.", frac = .2)
drop_words <- function(x, frac = .2) {

  x %>%
    stringr::str_split(" |\\n") %>%
    .[[1]] %>%
    tibble::tibble() %>%
    dplyr::rename(text = ".") %>%
    # tidytext::unnest_tokens(output = word, input = text) %>%
    dplyr::mutate(replace = sample(x = c(T,F), size = dplyr::n(), replace = T, prob = c(frac, 1 - frac))) %>%
    dplyr::mutate(return = dplyr::case_when(replace ~ "______",
                              !replace ~ text)) %>%
    dplyr::pull(return) %>%
    cat()

}


create_wandered_lonely <- function(){

"I wandered lonely as a cloud
That floats on high o'er vales and hills,
When all at once I saw a crowd,
A host, of golden daffodils;
Beside the lake, beneath the trees,
Fluttering and dancing in the breeze.

Continuous as the stars that shine
And twinkle on the milky way,
They stretched in never-ending line
Along the margin of a bay:
Ten thousand saw I at a glance,
Tossing their heads in sprightly dance.

The waves beside them danced; but they
Out-did the sparkling waves in glee:
A poet could not but be gay,
In such a jocund company:
I gazed—and gazed—but little thought
What wealth the show to me had brought:

For oft, when on my couch I lie
In vacant or in pensive mood,
They flash upon that inward eye
Which is the bliss of solitude;
And then my heart with pleasure fills,
And dances with the daffodils."

}





