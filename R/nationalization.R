#' Party Nationalization Index
#'
#' `nationalization()` This function calculates the party nationalization index as proposed by Jones e Mainwaring (2003).
#'
#' @param x (\code{numeric}). Numeric vector with the vote share for a party x in each of the electoral districts.
#'
#' @import utils
#' @import ineq
#'
#' @export
#'
#' @examples
#' \dontrun{
#' df <- nationalization(x)
#' }


nationalization <- function(x) {

  test_numeric(x)

  return(1 - (ineq::ineq(x, type = 'Gini')))

}
