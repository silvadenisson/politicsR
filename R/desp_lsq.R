#' Least squares index
#'
#' `lsq()` This function calculates the electoral disproportionality between votes and
#'  seats by Least squares index method as proposed by Michael Gallagher.
#'
#' @param x (\code{numeric}). Numeric vector with the vote share of parties
#' @param y (\code{numeric}). Numeric veector with the seat shareof parties
#'
#' @references
#'
#' Gallagher, M. (1991). Proportionality, disproportionality and electoral systems. Electoral studies, 10(1), 33-51.
#'
#' @import utils
#' @export
#'
#' @examples
#' \dontrun{
#' df <- lsq(x)
#' }

lsq <- function(x, y) {

  test_numeric(x)
  test_numeric(y)

  disprop <- sqrt(1 / 2 * (sum((x - y) ^ 2)))

  return(disprop)
}
