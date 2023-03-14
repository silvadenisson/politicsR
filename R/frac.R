#' Fractionalization Index
#'
#' @description `fractionalization()` calculates the rate of electoral fractionalization according to
#' Douglas Rae's (1968) formula.
#'
#' @param x (\code{numeric}). A numeric vector in the form of a proportion of votes or seats. The vector should range from 0 to 1.
#'
#'
#' @return
#'
#' Returns a numerical vector with the estimate of party fractionalization.
#' The result of the index is a value between 0 and 1.
#' The closer to zero, the lower the fractionalization; the closer to 1, the higher the fractionalization.
#'
#'
#' @import utils
#'
#' @references
#'
#' Rae, D. (1968). A note on the fractionalization of some European party systems. Comparative Political Studies, 1(3), 413-418.
#'
#'
#' @export
#' @examples
#'
#' fractionalization(c(0.2, 0.3, 0.5))
#'

fractionalization <- function(x){

  test_numeric(x)

  frac <- 1 - hh(x)

  return(frac)
}
