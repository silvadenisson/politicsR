#' rice index
#'
#' `rice` proposed by Rice (1925) is used to measure party cohesion in parliamentary votes by considering two groups pro and against.
#'
#' @param x (\code{factor}). A factor vector with two levels
#'
#' @references
#'
#' Rice, S. A. (1925). The Behavior of Legislative Groups: A Method of Measurement. Political Science Quarterly, 40(1), 60–72. https://doi.org/10.2307/2142407
#'
#' @details
#'
#' The index ranges from 0 to 1, where 1 is complete cohesion and 0 the formation of two equally sized subgroups within the party.
#'
#' @import utils
#'
#' @export
#' @examples
#' \dontrun{
#' df <- rice(x)
#' }

rice <- function(x){

 test_factor(x)
 test_nfactor(x)

 prop <-  table(x) |>
   prop.table()

 if(prop[1] == 1){

   rice <- prop |> as.numeric()

   return(rice)

 } else{

   rice <- (prop[1] - prop[2]) |>
     abs() |> as.numeric()

   return(rice)
 }

}

