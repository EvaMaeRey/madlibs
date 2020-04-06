
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




#' remove aeiou
#'
#' @param x a string input
#'
#' @return a string object
#' @export
#'
#' @examples
#' remove_aeiou("Hello, World!")
remove_aeiou <- function(x){

  stringr::str_replace_all(x, "[aeiou]", " \\_ ")

  }


string_as_table <- function(code){

  code %>%
    stringr::str_split(pattern = "\n") %>%
    .[[1]] %>%
    tibble::tibble(string = .) %>%
    dplyr::mutate(line = 1:dplyr::n())

}


#' Drop words to quiz knowledge of a text
#'
#' @param x a string input usually a paragraph
#' @param frac a fraction of words to replace with empty spaces
#'
#' @return
#' @export
#'
#' @examples
#' drop_words(x = "The woods are lovely dark and deep,
#' but I have promises to keep and miles to go before I sleep.", frac = .2)
drop_words <- function(x, frac = .2) {

  x %>%
    string_as_table() %>%
    dplyr::mutate(token = stringr::str_split(string, " |\\n")) %>%
    tidyr::unnest() %>%
    dplyr::mutate(replace = sample(x = c(F, T), size = dplyr::n(),
                                   replace = T, prob = c(1 - frac, frac))) %>%
  dplyr::mutate(return = dplyr::case_when(replace ~
                                            stringr::str_replace_all(token, "[[A-Za-z]]", "_"),
                                          !replace ~ token)) %>%
    dplyr::group_by(line) %>%
    dplyr::mutate(return = paste(return, collapse = " ")) %>%
    dplyr::distinct(line, return) %>%
    dplyr::pull(return) %>%
    paste0(sep = "\n") %>%
    cat()

}


