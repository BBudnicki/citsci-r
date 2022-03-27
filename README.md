
<!-- README.md is generated from README.Rmd. Please edit that file -->

# citsci

<!-- badges: start -->
<!-- badges: end -->

[CitSci.org](https://CitSci.org) is a citizen science platform for
collecting scientific observations from the community. This R library is
for accessing the [CitSci.org API](https://api.citsci.org/). It will
mostly be used for authentication & retrieving observations. This is in
very early development & will contain bugs. Additional developer
information can be found at
[citsci.org/developers](https://citsci.org/developers).

## Getting Started

General steps to use this library

-   Installation of this package
-   Register for CitSci.org Account
-   Get API Key
-   Identify data you wish to download

### Installation

\*\* This package is hosted in this GitHub repository & is not available
directly from CRAN.

``` r
package.install('citsci')
libaray('citsci')
```

### Register for CitSci.org Account

-   <https://citsci.org/register>
-   Verify your email address

### Get API key

This is manually done by Brandon. Please email <budnicki@colostate.edu>

### Identify data you wish to download

Project privacy may be Public or Private. Public projects do not require
you to be a member to download data. Private projects require you to be
a member. If you are not a member, request to join the project.

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(citsci)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.

## Design & Development

-   [x] Write Readme documentation
-   [ ] Organize files
-   [ ] Create login helper [Allow user to config API
    key](https://cran.r-project.org/web/packages/httr/vignettes/api-packages.html)
-   [ ] Query observations API
    -   [ ] Start with Datasheet ID
    -   \[ \]Expand to Project ID
    -   \[ \]Define filters (Date)

### Helpful documentation

You can learn more about package authoring with RStudio at:

\[<http://r-pkgs.had.co.nz/>\]

Some useful keyboard shortcuts for package authoring:

-   Install Package: ‘Ctrl + Shift + B’
-   Check Package: ‘Ctrl + Shift + E’
-   Test Package: ‘Ctrl + Shift + T’

### Initial Development

[Initial Setup
Videos](https://www.youtube.com/playlist?list=PLk3B5c8iCV-T4LM0mwEyWIunIunLyEjqM)
