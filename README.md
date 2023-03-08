politicsR
=====
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/politicsR)](https://cran.r-project.org/package=politicsR)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/3xp80q2vnwfxwhif/branch/main?svg=true)](https://ci.appveyor.com/project/silvadenisson/politicsr/branch/main)
 
`politicsR` is an R package designed to help political science researchers in calculating conventional political metrics. It offers a comprehensive set of functions for calculating a wide range of political system indicators, including:

- Party System Fractionalization Index as proposed by Douglas Rae ([1968](https://journals.sagepub.com/doi/abs/10.1177/001041406800100305?journalCode=cpsa))

- electoral system efficiency, party system fragmentation, parliamentary voting patterns; and more.

```r
remotes::install_github("silvadenisson/politicsR")
```

## Basic usage

To get started with `politicsR`, load the package with:

```r
library(politicsR)
```

To test the package's main functionality, we can use one of the three builtin datasets with electoral results by district in Brazil, Spain or Denmark. To load these data, simply use:

```r
data(denmark)
data(brazil)
data(spain)
```















