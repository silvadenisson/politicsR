
<!-- README.md is generated from README.Rmd. Please edit that file -->

# politicsR

<!-- badges: start -->

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/politicsR)](https://cran.r-project.org/package=politicsR)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/3xp80q2vnwfxwhif/branch/main?svg=true)](https://ci.appveyor.com/project/silvadenisson/politicsr/branch/main)
<!-- badges: end -->

`politicsR` is an R package designed to help political science
researchers in calculating conventional political metrics. It offers a
comprehensive set of functions for calculating a wide range of political
system indicators, including:

-   Party System Fractionalization Index as proposed by Douglas Rae
    ([1968](https://journals.sagepub.com/doi/abs/10.1177/001041406800100305?journalCode=cpsa))

-   electoral system efficiency, party system fragmentation,
    parliamentary voting patterns; and more.

## Installation

You can install the development version of `politicsR` from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("silvadenisson/politicsR")
```

## Basic usage

To get started with `politicsR`, load the package with:

``` r
library(politicsR)
```

Then you can start calculating diffent metrics, such as the
Herfindahl-Hirschman Concentration Index (HH):

``` r
x <- c(0.1, 0.1, 0.3, 0.5)
hh(x)
#> [1] 0.36
```

Or the Effective Number of Political Parties (ENP):

``` r
enp(x)
#> [1] 2.777778
```
