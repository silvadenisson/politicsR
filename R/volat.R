#' Electoral Volatility Index
#'
#' `volat()` This function calculates electoral volatility index by Perdersen (1979).
#'
#' @param x (\code{numeric}). Numeric vector with the vote share for a parties in the election x.
#' @param y (\code{numeric}). Numeric vector with the vote share for a parties in the election y.
#' @export
#'
#' @examples
#' # volat(x,y)
#'
#'

volat <- function(x,y){
  volatility <- sum(abs(x - y))/2
  return(volatility)
}
