#' Fractionalization Index
#'
#' @description `frac()` This function calculates the rate of electoral fractionalization according to
#' Douglas Rae's (1971) proposal.
#'
#' @param x (\code{numeric}). A number vector in the form of a proportion of votes or seats. The vector should range from 0 to 1.
#'
#' @return
#'
#' `frac()` Retorna um vetor numérico com a estimativa da fracionalização partidária.
#'
#' @export
#' @examples
#' frac(x)
#'

frac <- function(x){

  frac <- 1 - hh(x)

  return(frac)
}
