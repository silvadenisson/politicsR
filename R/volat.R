#' Electoral Volatility Index
#'
#' `volatility()` This function calculates electoral volatility index by Perdersen (1979).
#'
#' @param x (\code{numeric}). Numeric vector with the vote share for a parties in the election x.
#' @param y (\code{numeric}). Numeric vector with the vote share for a parties in the election y.
#'
#'
#' @import utils
#'
#' @references
#'
#' Pedersen, M. N. (1979). The dynamics of European party systems: changing patterns of electoral volatility. European journal of political research, 7(1), 1-26.
#'
#' @export
#'
#' @examples
#' \dontrun{
#' df <- volatility(x)
#' }

volatility <- function(x,y){

  test_numeric(x)
  test_numeric(y)

  volatility <- sum(abs(x - y))/2

  return(volatility)
}
