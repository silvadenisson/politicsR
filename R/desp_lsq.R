#' Least Squares Index
#'
#' `lsq()` calculates the electoral disproportionality between votes and
#'  seats by Least squares index method as proposed by Michael Gallagher.
#'
#' @param x (\code{numeric}). Numeric vector with the vote share of parties
#' @param y (\code{numeric}). Numeric vector with the seat share of parties
#'
#' @return
#'
#'  If the input is a proportion the result is between 0 and 1.
#'  But if the input is a percentage it is between 0 and 100.
#'  In both cases the higher the value, the more disproportional the electoral system is.
#'
#'
#' @references
#'
#' Gallagher, M. (1991). Proportionality, disproportionality and electoral systems. Electoral studies, 10(1), 33-51.
#'
#' @import utils
#' @export
#'
#' @examples
#'
#' votes <- c(0.2, 0.2, 0.6)
#' seats <- c(0.18, 0.17, 0.65)
#' lsq(votes, seats)
#'

lsq <- function(x, y) {

  test_numeric(x)
  test_numeric(y)

  disprop <- sqrt(1 / 2 * (sum((x - y) ^ 2)))

  return(disprop)
}
