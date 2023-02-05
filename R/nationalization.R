#' Party Nationalization Index
#'
#' `nationalization()` This function calculates the party nationalization index as proposed by Jones e Mainwaring (2003).
#'
#' @param x (\code{numeric}). Numeric vector with the vote share for a party x in each of the electoral districts.

#' @export
#'
#' @import ineq
#' @examples
#' \dontrun{
#' df <- nationalization(x)
#' }






nationalization <- function(x) {
  return(1 - (ineq(x, type = 'Gini')))
}
