#' Least squares index
#'
#' `lsq()` This function calculates the electoral disproportionality between votes and
#'seats by Least squares index method as proposed by Michael Gallagher.
#'
#' @param x (\code{numeric}). Numeric vector with the vote share of parties
#' @param y (\code{numeric}). Numeric veector with the seat shareof parties
#'
#' @export
#'
#' @examples
#' \dontrun{
#' df <- lsq(x)
#' }

lsq <- function(x, y) {
  disprop <- sqrt(1 / 2 * (sum((x - y) ^ 2)))
  return(disprop)
}
