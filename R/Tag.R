#'
#' @param x (\code{integer}). This function calculate
#' @export

Tag <- function(x){

  n <- length(x)
  x <- x[order(x, decreasing = T)]
  sum(c((x[1:n - 1] - x[2:n]), x[n]) / 1:n)

}
