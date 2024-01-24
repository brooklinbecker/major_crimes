#### Preamble ####
# Purpose: Simulates choosing 372,899 random samples of the five major crime categories.
# Author: Brooklin Becker
# Date: 23 January 2024
# Contact: brooklin.becker@mail.utoronto.ca
# License: MIT
# Pre-requisites: --
# Any other information needed? --


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(knitr)
library(janitor)
library(dbplyr)
library(ggplot2)
library(bibtex)
library(tinytex)

#### Simulate data ####

```{r}
#| echo: false
#| include: true

#simulating major crime category reports

set.seed(550)

simulated_crime_data <-
  tibble(
    "Frequency" = 1:372899,
    "MajorCrimeCategory" = sample(
      x = c("Assault", "Auto Theft", "Break and Enter", "Robbery",
            "Theft Over"),
      size = 372899,
      replace = TRUE
    )
  )
```
