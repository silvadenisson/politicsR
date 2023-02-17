#' T Imbalance Index
#'
#'`tii()` This function calculates T index of inbalance according to the proposition of Taagepera (1979).
#'
#' @param x (\code{numeric}). A number vector in the form of a proportion of votes or seats. The vector should range from 0 to 1.
#'
#' @import utils
#'
#' @references
#'
#' Taagepera, R. (1979). Inequality, Concentration, Imbalance. Political Methodology, 6(3), 275–291. http://www.jstor.org/stable/25791080
#'
#'
#' @export
#' @examples
#' \dontrun{
#' df <- tbi(c(0.2, 0.3, 0.5))
#' }
tbi <- function(x){

  test_numeric(x)

  tbi <- (Tag(x) - hh(x)^2) / (sqrt(hh(x)) - hh(x)^2)

  return(tbi)

}
