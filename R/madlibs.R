#' Title removeaeiou
#'
#' @param x a string input
#'
#' @return a string object
#' @export
#'
#' @examples
#' remove_aeiou("Hello, World!")
remove_aeiou <- function(x){ stringr::str_replace_all(x, "[aeiou]", " \\_ ") }


#' @importFrom stringr str_replace_all
#' @export
stringr::str_replace_all
