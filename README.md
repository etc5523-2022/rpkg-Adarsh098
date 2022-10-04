
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rbirds.pkg

<!-- badges: start -->
<!-- badges: end -->

The goal of rbirds.pkg is to allow users to explore the bird_counts data
using various functions. The data for this package is about various bird
species counted by birdwatchers in Hamilton area of Ontario.
Birdwatchers have counted birds they saw or heard in a day. Birds are
counted every year around Christmas time, since 1921.

## Installation

You can install the development version of rbirds.pkg from
[rbirds.pkg](https://etc5523-2022.github.io/rpkg-Adarsh098/) with:

``` r
# install.packages("devtools")
devtools::install_github("etc5523-2022/rpkg-Adarsh098")
```

## Example

This function is used to load the rbirds.pkg package.

``` r
library(rbirds.pkg)
```

This function allows the user to view the top five most counted birds in
the data set.

``` r
most_birds()
#> # A tibble: 5 × 2
#>   species           how_many_counted
#>   <chr>                        <dbl>
#> 1 European Starling          1491940
#> 2 Herring Gull                245717
#> 3 Canada Goose                173713
#> 4 Long-tailed Duck            154315
#> 5 Greater Scaup               152444
```

This function helps to determine how many hours it took to count
approximate number of birds.

``` r
count_by_hours(8000)
#> [1] "Between 8 and 116 hours"
```
