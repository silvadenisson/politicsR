% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/desp_lsq.R
\name{lsq}
\alias{lsq}
\title{Least Squares Index}
\usage{
lsq(x, y)
}
\arguments{
\item{x}{(\code{numeric}). Numeric vector with the vote share of parties}

\item{y}{(\code{numeric}). Numeric vector with the seat share of parties}
}
\value{
If the input is a proportion the result is between 0 and 1.
 But if the input is a percentage it is between 0 and 100.
 In both cases the higher the value, the more disproportional the electoral system is.
}
\description{
`lsq()` calculates the electoral disproportionality between votes and
 seats by Least squares index method as proposed by Michael Gallagher.
}
\examples{

votes <- c(0.2, 0.2, 0.6)
seats <- c(0.18, 0.17, 0.65)
lsq(votes, seats)

}
\references{
Gallagher, M. (1991). Proportionality, disproportionality and electoral systems. Electoral studies, 10(1), 33-51.
}
