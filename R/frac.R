#' Fractionalization Index
#'
#' @description `fractionalization()` calculates the rate of electoral fractionalization according to
#' Douglas Rae's (1971) formula.
#'
#' @param x (\code{numeric}). A numeric vector in the form of a proportion of votes or seats. The vector should range from 0 to 1.
#'
#'
#' `fractionalization()` Returns a numerical vector with the estimate of party fractionalization.
#'
#' @import utils
#'
#' @references
#'
#' Rae, D. W. (1971). Comment on Wildgen's The Measurement of Hyperfractionalization. Comp. Pol. Stud., 4, 244.
#'
#'
#' @details
#'
#' The result of the index is a value between 0 and 1. The closer to zero, the lower the fractionalization; the closer to 1, the higher the fractionalization.
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
