#' Electoral Volatility Index
#'
#' `volatility()` This function calculates electoral volatility index developed by Perdersen (1979).
#'
#' @param x (\code{numeric}). Numeric vector with the vote share for selected parties in a given election in t.
#' @param y (\code{numeric}). Numeric vector with the vote share for selected parties in the t+1 election.
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
#' x <- c(0.3, 0.7)
#' y <- c(0.5, 0.5)
#' volatility(x, y)
#' }

volatility <- function(x, y){

  # Input tests
  test_numeric(x)
  test_numeric(y)

  # Calculate index
  volatility <- sum(abs(x - y)) / 2

  # Return
  return(volatility)
}
