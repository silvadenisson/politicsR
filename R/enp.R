#'The effective number of parties
#'
#'`enp()` This function calculates the number of effective parties according to the proposition of Laakso and Taagepera (1979).
#'
#' @param (\code{numeric}). A number vector in the form of a proportion of votes or seats. The vector should range from 0 to 1.
#'
#' @export
#' @examples
#' enp(x)

enp <- function(x){

  enp <- 1 / hh(x)

  return(enp)
}
