#### Preamble ####
# Purpose: Testing the unique values in the desired columns used in the data analysis
# Author: Brooklin Becker
# Date: 26 January 2024 
# Contact: brooklin.becker@mail.utoronto.ca
# License: MIT

#Initialize necessary libraries
library(tidyverse)

#Reading in the cleaned data for Test 1

crimetest <- 
  read_csv(
    file = "outputs/paper/cleaned_crime_data.csv"
  )

#Test 1 - calculating the unique number of neighborhoods in which crimes have been reported
#We expect the answer to be 159, since there are 158 neighborhoods and NSA is used when no single neighborhood can be used
if(length(unique(crimetest$NeighborhoodID)) != 159){
  print("Not all neighbourhoods have crime")
}

#Test 2 - calculating the unique number of major crime categories
#We expect the answer to be 5
if(length(unique(crimetest$CrimeCategory)) != 5){
  print("Unknown category")
}

#Test 1 - calculating the unique number of neighborhoods in which crimes have been reported
#We expect the answer to be 10, since there are 158 neighborhoods and NSA is used when no single neighborhood can be used
  print("Not all years have crime")
}
