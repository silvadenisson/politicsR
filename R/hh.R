#'Herfindahl–Hirschman concentration index
#'
#'
#'`hh()` This function calculates the Herfindahl–Hirschman concentration index.
#'
#' @param x (\code{numeric}). A number vector in the form of a proportion of votes or seats. The vector should range from 0 to 1.
#'
#' @import utils
#'
#' @export
#'
#' @examples
#' \dontrun{
#' df <- hh(c(0.2, 0.3, 0.5))
#' }

hh <- function(x){

  test_numeric(x)

  hh <- sum(x^2)

  return(hh)
}
