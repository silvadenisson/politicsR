#' Loosemore–Hanby Index
#'
#' `lh()` calculates the electoral disproportionality between votes and
#'seats as proposed by Loosemore and Hanby (1971).
#'
#' @param x (\code{numeric}). Numeric vector with the vote share of parties
#' @param y (\code{numeric}). Numeric vector with the seat share of parties
#'
#' @return
#'
#'   If the input is a proportion the result is between 0 and 1.
#'   But if the input is a percentage it is between 0 and 100.
#'   In both cases the higher the value, the more disproportional the electoral system is.
#'
#'
#'
#' @references
#'
#' Loosemore, J., & Hanby, V. (1971). The Theoretical Limits of Maximum Distortion: Some Analytic Expressions for Electoral Systems. British Journal of Political Science, 1(4), 467-477. doi:10.1017/S000712340000925X
#'
#'
#' @import utils
#'
#' @export
#' @examples
#'
#' votes <- c(0.2, 0.2, 0.6)
#' seats <- c(0.18, 0.17, 0.65)
#' lh(votes, seats)
#'

lh <- function(x, y) {

  test_numeric(x)
  test_numeric(y)

  disprop <- sum(abs(x - y)) / 2

  return(disprop)
}
