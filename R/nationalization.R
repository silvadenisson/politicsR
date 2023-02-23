#' Party Nationalization Index
#'
#' `nationalization()` This function calculates the party nationalization index as proposed by Jones e Mainwaring (2003).
#'
#' @param x (\code{numeric}). Numeric vector with the vote share for a party x in each electoral district.
#'
#' @import utils
#' @import ineq
#'
#' @export
#'
#' @examples
#' \dontrun{
#' x <- runif(27, 0.03, 0.2)
#' nationalization(x)
#' }


nationalization <- function(x) {

  # Inputs
  test_numeric(x)

  # Calculate index
  idx <- 1 - (ineq::ineq(x, type = 'Gini'))

  # Return
  return(idx)
}
