.onAttach <-
  function(libname, pkgname) {
    packageStartupMessage("\nTo cite politicsR in publications, use: citation('politicsR')")
  }

# Tests vector class inputs
test_numeric <- function(x){

  if(!is.numeric(x)) stop("Invalid input. Please, check the documentation and try again.")
}

# Test if a vector is a share (ie, sum to one)
check_share <- function(x){

  if(sum(x) != 1){

    warning("Rouding numeric vectors to sum to one.")
    x <- x / sum(x)
  }

  return(x)
}


test_factor <- function(x){

  if(!is.factor(x)) stop("Invalid input. Please, check the documentation and try again.")
}

test_nfactor <-function(x){

  if(length(levels(x)) > 2) stop("the vector must have up to two factor levels")

}


# componente of Imbalance Index Taagapera
Tag <- function(x){

  test_numeric(x)

  n <- length(x)
  x <- x[order(x, decreasing = T)]
  sum(c((x[1:n - 1] - x[2:n]), x[n]) / 1:n)

}


# Avoid the R CMD check note about magrittr's dot
utils::globalVariables(".")
