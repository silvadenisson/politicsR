#' Rice Index
#'
#' `rice` proposed by Rice (1925) is used to measure party cohesion in parliamentary votes by considering two voting blocks (usually government and opposition)
#'
#' @param x (\code{factor}). A factor vector with two levels (i.e., Yay or Nay)
#'
#' @return
#'
#' The index ranges from 0 to 1, where 1 is complete cohesion and 0 the formation of two equally sized subgroups within the party.
#'
#' @references
#'
#' Rice, S. A. (1925). The Behavior of Legislative Groups: A Method of Measurement. Political Science Quarterly, 40(1), 60–72. https://doi.org/10.2307/2142407
#'
#' @import utils
#'
#' @export
#' @examples
#'
#' voting <- as.factor(c(rep("Yes", 90), rep("No", 10)))
#' rice(voting)
#'

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

