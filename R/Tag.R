#' Imbalance Index
#'
#'`Tag()`This function calculates inbalance according to the proposition of Taagepera (1979).
#'
#' @param x (\code{numeric}). A number vector in the form of a proportion of votes or seats. The vector should range from 0 to 1.
#' @export
#'
#' @examples
#' \dontrun{
#' df <- Tag(x)
#' }
#'
#'

Tag <- function(x){

  n <- length(x)
  x <- x[order(x, decreasing = T)]
  sum(c((x[1:n - 1] - x[2:n]), x[n]) / 1:n)

}
