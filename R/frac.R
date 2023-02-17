#' Fractionalization Index
#'
#' @description `fractionalization()` This function calculates the rate of electoral fractionalization according to
#' Douglas Rae's (1971) proposal.
#'
#' @param x (\code{numeric}). A number vector in the form of a proportion of votes or seats. The vector should range from 0 to 1.
#'
#'
#' `fractionalization()` Retorna um vetor numérico com a estimativa da fracionalização partidária.
#'
#' @import utils
#'
#' @export
#' @examples
#' \dontrun{
#' df <- fractionalization(c(0.2, 0.3, 0.5))
#' }

fractionalization <- function(x){

  test_numeric(x)

  frac <- 1 - hh(x)

  return(frac)
}
