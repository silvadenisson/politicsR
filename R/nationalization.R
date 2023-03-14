#' Party Nationalization Index
#'
#' `nationalization()` calculates the Party Nationalization Index as proposed by Jones e Mainwaring (2003).
#'
#' @param x (\code{numeric}). A numeric vector with the vote share for a given party x in each electoral district.
#'
#' @return
#'
#' The result of the index is a value between 0 and 1.
#' A high score indicates a high level of nationalization
#'
#' @references
#'
#' Jones, M. P., & Mainwaring, S. (2003). The Nationalization of Parties and Party Systems: An Empirical Measure and an Application to the Americas. Party Politics, 9(2), 139–166. https://doi.org/10.1177/13540688030092002
#'
#' @import utils
#' @import ineq
#' @export
#'
#' @examples
#'
#' x <- runif(27, 0.03, 0.2)
#' nationalization(x)
#'


nationalization <- function(x) {

  # Inputs
  test_numeric(x)

  # Calculate index
  idx <- 1 - (ineq::ineq(x, type = 'Gini'))

  # Return
  return(idx)
}
