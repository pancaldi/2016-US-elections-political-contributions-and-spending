# load packages

library(tidyverse)
data_dir < - "c:/users/jaqo_000/Desktop/"
filename <- "indiv16.csv"
readr(file.path(data_dir, indiv16),...)
library(dplyr)
library(indiv16)

# select democratic and republican candidates for president

select(tb %>% democratic == clinton)
select(tb %>% republican == trump) 

# filter donors by party

filter(indiv16, donors == "republican party")
filter(indiv16, donors == "democratic party")

# separate contributions data from the two main candidates Clinton and Trump

separate(indiv16, Clinton, c("donor", "city", "state", "zip code", "place of business", "amount"), sep = "_")
separate(indiv16, Trump, c("donor", "city", "state", "zip code", "place of business", "amount"), sep = "_")

