
<!-- README.md is generated from README.Rmd. Please edit that file -->

# politicsR

<!-- badges: start -->

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/politicsR)](https://cran.r-project.org/package=politicsR)
[![AppVeyor Build
Status](https://ci.appveyor.com/api/projects/status/3xp80q2vnwfxwhif/branch/main?svg=true)](https://ci.appveyor.com/project/silvadenisson/politicsr/branch/main)
[![DOI](https://zenodo.org/badge/597187661.svg)](https://zenodo.org/badge/latestdoi/597187661)

<!-- badges: end -->

`politicsR` is an R package designed to help political science
researchers in calculating conventional party system and political
metrics. It offers a comprehensive set of functions for calculating a
wide range of indicators, including:

-   Party System Fractionalization Index as proposed by Douglas Rae
    ([1968](https://journals.sagepub.com/doi/abs/10.1177/001041406800100305?journalCode=cpsa))

-   Effective Number of Political Parties by Laakso, M., & Taagepera, R.
    ([1979](https://journals.sagepub.com/doi/abs/10.1177/001041407901200101?journalCode=cpsa))

-   Party Nationalization Index by Jones, M. P., & Mainwaring, S.
    ([2003](https://journals.sagepub.com/doi/abs/10.1177/13540688030092002?journalCode=ppqa))

-   Rice Party Cohesion Index by Rice
    ([1925](https://www.jstor.org/stable/2142407)); and many more.

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
#> 
#> To cite politicsR in publications, use: citation('politicsR')
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

The `politicsR` package also contains a few datasets with electoral
results that can be used to test its functions. These datasets are
organized by the [Constituency-Level Elections Archive
(CLEA)](https://electiondataarchive.org/) project and provide a rich
source of information for political analysis. With these datasets and
the functions provided by the package, users can easily calculate
political science metrics such as Douglas Rae’s Fractionalization Index:

``` r
data(spain)
barc2019 <- spain[spain$yr == 2019 & spain$cst_n == "Barcelona",]
fractionalization(barc2019$pvs1)
#> [1] 0.6828265
```
