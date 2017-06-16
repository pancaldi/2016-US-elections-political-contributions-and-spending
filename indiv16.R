# load packages

library(tidyverse)
data_dir < - "c:/users/jaqo_000/Desktop/"
filename <- "indiv16.csv"
readr(file.path(data_dir, indiv16),...)
library(dplyr)
View(indiv16)
library("stringdist")

# separate contributions data from the two main candidates Clinton and Trump

separate(indiv16, Clinton, c("donor", "city", "state", "zip code", "place of business", "amount"), sep = "_")
separate(indiv16, Trump, c("donor", "city", "state", "zip code", "place of business", "amount"), sep = "_")

