#' Electoral Volatility Index
#'
#' `volatility()` This function calculates electoral volatility index by Perdersen (1979).
#'
#' @param x (\code{numeric}). Numeric vector with the vote share for a parties in the election x.
#' @param y (\code{numeric}). Numeric vector with the vote share for a parties in the election y.
#' @export
#'
#' @examples
#' \dontrun{
#' df <- volatility(x)
#' }

volatility <- function(x,y){
  volatility <- sum(abs(x - y))/2
  return(volatility)
}
