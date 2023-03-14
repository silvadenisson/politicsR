#' Hyperfractionalization Index
#'
#' `hiperfrac` calculates the hyperfractionalization index proposed by Kesselman (1966) and Wildgen (1971), which is useful for party system with many small parties.
#'
#' @param x (\code{numeric}). A number vector in the form of a proportion of votes or seats. The vector should range from 0 to 1.
#'
#' @return
#'
#'  A continued value, the larger the higher the fragmentation of the system
#'
#' @references
#'
#' Kesselman, M. (1966). French Local Politics: A Statistical Examination of Grass Roots Consensus. American Political Science Review, 60(4), 963-973. doi:10.2307/1953769
#'
#' Wildgen, J. K. (1971). The Measurement of Hyperfractionalization. Comparative Political Studies, 4(2), 233–243. https://doi.org/10.1177/001041407100400205
#'
#' @details
#'
#' This index places more weights to small parties compared to the Effective Number of Political Parties Index (`enp`)
#'
#' @import utils
#'
#' @export
#' @examples
#'
#' hiperfrac(c(0.1, 0.1, 0.05, 0.05, 0.01, 0.04, 0.65))
#'

hiperfrac <- function(x) {

  test_numeric(x)

  hf <- sum(log(x) * x) |>
    abs() |>
    exp()

  return(hf)
}
