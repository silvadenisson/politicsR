#'
#' @param x

tbi <- function(x){

  tbi <- (Tag(x) - HH(x)^2) / (sqrt(HH(x)) - HH(x)^2)

  return(tbi)

}
