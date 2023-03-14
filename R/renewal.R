#' Parliamentary Renewal
#'
#' `renewal` calculates parliamentary renewal rates
#'
#' @param seats (\code{numeric}). Number of legislative seats in dispute
#' @param dropout (\code{numeric}). Number of parliamentarians who gave up the legislative career and vacancy for various reasons
#' @param defeated (\code{numeric}). Number of defeated parliamentarians
#' @param reelected (\code{numeric}). Number of re-elected parliamentarians
#'
#' @param type (\code{character}). type of renewal to be calculated. by default it is \code{"all"}.
#' But only one renewal can be chosen: \code{"grr"} (gross renewal rate), \code{"crr"} (compulsory renewal rate), \code{"nrr"} (net renewal rate).
#'
#' @return
#'
#' A percentage which is the Renewal Rate. See parameter type.
#'
#' @references
#'
#' SANTOS, W. G. D. (2002). Votos e partidos: almanaque de dados eleitorais. Brasil e outros países. Rio de Janeiro: Editora FGV.
#'
#' @details
#'
#' gross renewal rate = ((dropout + defeated) / seats) * 100
#'
#' compulsory renewal rate = (dropout / seats) * 100
#'
#' net renewal rate = (defeated / (reelected + defeated)) * 100
#'
#'
#' @import utils
#'
#' @export
#'
#' @examples
#'
#' seats <- 27
#' dropout <- 9
#' defeated <- 6
#' reelected <- 12
#'
#' renewal(seats, dropout, defeated, reelected)
#'

renewal <- function(seats = NULL, dropout = NULL, defeated = NULL, reelected = NULL, type = "all"){

  if(type == "all"){

    if(is.null(seats) | is.null(dropout) | is.null(defeated) | is.null(reelected)) stop("when type = 'all', all arguments are required")

    test_numeric(seats)
    test_numeric(dropout)
    test_numeric(defeated)
    test_numeric(reelected)

    grr <- ((dropout + defeated) / seats) * 100

    crr <- (dropout / seats) * 100

    nrr <- (defeated / (reelected + defeated)) * 100

    ren <- data.frame(grr, crr, nrr)

    return(ren)

  } else{

    if (type == "grr"){

      if(is.null(seats) | is.null(dropout) | is.null(defeated)) stop("when type = 'grr', arguments seats, dropout and defeated are required")

      test_numeric(seats)
      test_numeric(dropout)
      test_numeric(defeated)

      grr <- ((dropout + defeated) / seats) * 100

      return(grr)

    } else if (type == "crr"){

      if(is.null(seats) | is.null(dropout)) stop("when type = 'crr', arguments seats and dropout are required")

      test_numeric(seats)
      test_numeric(dropout)

      crr <- (dropout / seats) * 100

      return(crr)

    } else if (type == "nrr"){

      if(is.null(defeated) | is.null(reelected)) stop("when type = 'nrr', arguments defeated and reelected are required")

      test_numeric(defeated)
      test_numeric(reelected)

      nrr <- (defeated / (reelected + defeated)) * 100

      return(nrr)

    }
  }

}

