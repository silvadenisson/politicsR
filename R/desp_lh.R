#' Loosemore–Hanby index
#'
#' `lh()` This function calculates the electoral disproportionality between votes and
#'seats as proposed by Loosemore and Hanby.
#'
#' @param x (\code{numeric}). Numeric vector with the vote share of parties
#' @param y (\code{numeric}). Numeric veector with the seat shareof parties
#' @export
#' @examples
#' lh(x, y)

lh <- function(x, y) {
  disprop <- sum(abs(x - y)) / 2
  return(disprop)
}
