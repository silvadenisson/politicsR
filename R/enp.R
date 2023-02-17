#'The effective number of parties
#'
#'`enp()` This function calculates the number of effective parties according to the proposition of Laakso and Taagepera (1979).
#'
#' @param x (\code{numeric}). A number vector in the form of a proportion of votes or seats. The vector should range from 0 to 1.
#'
#' @import utils
#'
#' @references
#'
#' Laakso, M., & Taagepera, R. (1979). “Effective” Number of Parties: A Measure with Application to West Europe. Comparative Political Studies, 12(1), 3–27. https://doi.org/10.1177/001041407901200101
#'
#' @export
#' @examples
#' \dontrun{
#' df <- enp(c(0.2, 0.3, 0.5))
#' }

enp <- function(x){

  test_numeric(x)

  enp <- 1 / hh(x)

  return(enp)
}
