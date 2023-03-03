#' hyperfractionalization index
#'
#' `hiperfrac` hyperfractionalization proposed by Kesselman (1966) and Wildgen (1971) is an alternative when the system has many small parties.
#'
#' @param x (\code{numeric}). A number vector in the form of a proportion of votes or seats. The vector should range from 0 to 1.
#'
#' @references
#'
#' Kesselman, M. (1966). French Local Politics: A Statistical Examination of Grass Roots Consensus. American Political Science Review, 60(4), 963-973. doi:10.2307/1953769
#'
#' Wildgen, J. K. (1971). The Measurement of Hyperfractionalization. Comparative Political Studies, 4(2), 233–243. https://doi.org/10.1177/001041407100400205
#'
#' @details
#'
#' This index gives a greater role to small parties compared to the effective number of parties `enp`
#'
#' @import utils
#'
#' @export
#' @examples
#' \dontrun{
#' df <- hiperfrac(x)
#' }


hiperfrac <- function(x) {

  test_numeric(x)

  hf <- sum(log(x) * x) |>
    abs() |>
    exp()

  return(hf)
}
