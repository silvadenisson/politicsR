#' T Imbalance Index
#'
#'`tbi()` calculates T index of inbalance according to the proposition of Taagepera (1979).
#'
#' @param x (\code{numeric}). A number vector with share of votes or seats. The vector should range from 0 to 1
#' (if not, the function will automatically make the vector elements sum to one).
#'
#' @return
#'
#' The index ranges from 0 to 1, with 0 being total equilibrium, and 1 total imbalance. When used as an indicator of competitiveness, 0 is the scenario of total competitiveness and 1 is a scenario dominated by one or a few competitors.
#'
#'
#' @references
#'
#' Taagepera, R. (1979). Inequality, Concentration, Imbalance. Political Methodology, 6(3), 275–291. http://www.jstor.org/stable/25791080
#'
#' @import utils
#' @export
#' @examples
#'
#' tbi(c(0.2, 0.3, 0.5))
#'

tbi <- function(x){

  # Inputs
  test_numeric(x)
  x <- check_share(x)

  # Calculate index
  tbi <- (Tag(x) - hh(x)^2) / (sqrt(hh(x)) - hh(x)^2)

  # Return
  return(tbi)
}
