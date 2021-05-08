
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
Along the margin of a bay
Ten thousand saw I at a glance,
Tossing their heads in sprightly dance.

The waves beside them danced; but they
Out-did the sparkling waves in glee
A poet could not but be gay,
In such a jocund company
I gazed-and gazed-but little thought
What wealth the show to me had brought

For oft, when on my couch I lie
In vacant or in pensive mood,
They flash upon that inward eye
Which is the bliss of solitude;
And then my heart with pleasure fills,
And dances with the daffodils."

}

twain <- function(){'I went often to look at the collection of curiosities in Heidelberg Castle, and one day I surprised the keeper of it with my German. I spoke entirely in that language. He was greatly interested; and after I had talked a while he said my German was very rare, possibly a "unique;" and wanted to add it to his museum.

If he had known what it had cost me to acquire my art, he would also have known that it would break any collector to buy it. Harris and I had been hard at work on our German during several weeks at that time, and although we had made good progress, it had been accomplished under great difficulty and annoyance, for three of our teachers had died in the meantime. A person who has not studied German can form no idea of what a perplexing language it is.'
}

#' Remove vowels
#' @description Takes character string input and replaces vowels with pattern; default is underscore.
#'
#' @param x a string input
#' @param replacement a string input that will replace vowels aeiou
#'
#' @return a string object
#' @export
#'
#' @examples
#' drop_vowels("Hello, World!")
#' drop_vowels("Hello, World!", "-")
drop_vowels <- function(x, replacement = " \\_ "){

  stringr::str_replace_all(x, "[aeiou]", replacement) %>%
    cat()

  }


string_as_table <- function(code){

  string <- code %>%
    stringr::str_split(pattern = "\n")

    tibble::tibble(string = string[[1]]) %>%
    dplyr::mutate(line = 1:dplyr::n())

}


#' Drop fraction of words of a text
#'
#' @param x a string input usually a paragraph
#' @param frac a fraction of words to replace with empty spaces
#' @param replacement a string which will be used instead of the charaters to be replaced
#'
#' @return
#' @export
#'
#' @examples
#' drop_words(x = "The woods are lovely dark and deep,
#' but I have promises to keep and miles to go before I sleep.
#' etc and
#' etc hello", frac = .5)
drop_words <- function(x, frac = .2, replacement = "_") {

  x %>%
    string_as_table() %>%
    dplyr::mutate(token = stringr::str_split(.data$string, " |\\n")) %>%
    tidyr::unnest(cols = c(.data$token)) %>%
    dplyr::mutate(replace = sample(x = c(F, T), size = dplyr::n(),
                                   replace = T, prob = c(1 - frac, frac))) %>%
    dplyr::mutate(return =
                    dplyr::case_when(replace ~
                                       stringr::str_replace_all(.data$token, "[[A-Za-z]]", replacement),
                                          !.data$replace ~ .data$token)) %>%
    dplyr::group_by(.data$line) %>%
    dplyr::mutate(return = paste(.data$return, collapse = " ")) %>%
    dplyr::distinct(.data$line, .data$return) %>%
    dplyr::pull(.data$return) %>%
    paste0(sep = " \n  ") %>%
    cat()

}




