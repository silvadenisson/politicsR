# Tests vector class inputs
test_numeric <- function(x){

  if(!is.numeric(x)) stop("Invalid input. Please, check the documentation and try again.")
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
