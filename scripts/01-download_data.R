#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####

#Reading the data file from the source website
raw_crime_data <-
  read_csv(
    file =
      "https://ckan0.cf.opendata.inter.prod-toronto.ca/dataset/major-crime-indicators/resource/863bbdfb-a932-48b7-8a59-bf6585ef0563/download/major-crime-indicators.csv",
    show_col_types = FALSE,
    skip = 0
  )



#### Save data ####

#Writing the data file into a new csv file
write_csv(
  x = raw_crime_data,
  file = "new_crime_data.csv"
)

         
