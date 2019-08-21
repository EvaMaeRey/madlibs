#' @importFrom stringr str_replace_all
#' @export
stringr::str_replace_all



#' Title removeaeiou
#'
#' @param x a string input
#'
#' @return string
#' @export
#'
#' @examples
#' remove_aeiou("Hello, World!")
remove_aeiou <- function(x){ stringr::str_replace_all(x, "[aeiou]", " \\_ ") }
