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

