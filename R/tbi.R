#' T Imbalance Index
#'
#'`tii()` This function calculates T index of inbalance according to the proposition of Taagepera (1979).
#'
#' @param x (\code{numeric}). A number vector with share of votes or seats. The vector should range from 0 to 1
#' (if not, the function will automatically make the vector elements sum to one).
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
#' tbi(c(0.2, 0.3, 0.5))
#' }
tbi <- function(x){

  # Inputs
  test_numeric(x)
  x <- check_share(x)

  # Calculate index
  tbi <- (Tag(x) - hh(x)^2) / (sqrt(hh(x)) - hh(x)^2)

  # Return
  return(tbi)
}
