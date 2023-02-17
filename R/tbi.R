#' T Imbalance Index
#'
#'`tbi()`This function calculates T index of inbalance according to the proposition of Taagepera (1979).
#'
#' @param x (\code{numeric}). A number vector in the form of a proportion of votes or seats. The vector should range from 0 to 1.
#'
#' @import utils
#'
#' @export
#' @examples
#' \dontrun{
#' df <- tbi(x)
#' }
tbi <- function(x){

  test_numeric(x)

  tbi <- (Tag(x) - hh(x)^2) / (sqrt(hh(x)) - hh(x)^2)

  return(tbi)

}
