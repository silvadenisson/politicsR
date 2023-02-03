#'
#' @param x (\code{integer}). This function calculate
#' @export


tbi <- function(x){

  tbi <- (Tag(x) - hh(x)^2) / (sqrt(hh(x)) - hh(x)^2)

  return(tbi)

}
