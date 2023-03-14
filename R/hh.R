#' Herfindahl–Hirschman concentration index
#'
#'
#'`hh()` calculates the Herfindahl–Hirschman concentration index.
#'
#' @param x (\code{numeric}). A numeric vector in the form of a proportion of votes or seats. The vector should range from 0 to 1.
#'
#'
#' @return
#'
#' The result of the index is a value between 0 and 1.
#' The closer to zero, the lower the concentration; the closer to 1, the higher the concentration.
#'
#'
#' @references
#'
#'
#' Hirschmaņ, Albert O. (1945). National Power and Structure of Foreign Trade, Berkley: Univ of California Press.
#'
#' Herfindahl, Orris C. (1950). Concentration in the us steel industry. Unpublished PhD. Dissertation, Columbia University.
#'
#' @import utils
#' @export
#'
#' @examples
#'
#' hh(c(0.2, 0.3, 0.5))
#'

hh <- function(x){

  test_numeric(x)

  hh <- sum(x^2)

  return(hh)
}
