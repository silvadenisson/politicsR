#' Loosemore–Hanby index
#'
#' `lh()` This function calculates the electoral disproportionality between votes and
#'seats as proposed by Loosemore and Hanby.
#'
#' @param x (\code{numeric}). Numeric vector with the vote share of parties
#' @param y (\code{numeric}). Numeric veector with the seat shareof parties
#'
#' @import utils
#'
#' @export
#' @examples
#' \dontrun{
#' df <- lh(x,y)
#' }

lh <- function(x, y) {

  test_numeric(x)
  test_numeric(y)

  disprop <- sum(abs(x - y)) / 2

  return(disprop)
}
