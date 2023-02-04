#'Herfindahl–Hirschman concentration index
#'
#'
#'`hh()` This function calculates the Herfindahl–Hirschman concentration index.
#'
#' @param (\code{numeric}). A number vector in the form of a proportion of votes or seats. The vector should range from 0 to 1.
#' @export
#'
#' @examples
#' hh(x)

hh <- function(x){

  hh <- sum(x^2)

  return(hh)
}
