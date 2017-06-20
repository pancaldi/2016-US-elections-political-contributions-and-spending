# load packages

library(tidyverse)
data_dir < - "c:/users/jaqo_000/Desktop/"
filename <- "indiv16.csv"
read(file.path(data_dir, indiv16),...)
library(dplyr)
library(indiv16)

# extract democratic and republican candidates for president

filter(indiv16, democratic == "clinton")
filter(indiv16, republican == "trump") 

# extract donors by party

filter(indiv16, donors == "republican party")
filter(indiv16, donors == "democratic party")

# separate contributions data from candidates 

separate(indiv16, clinton, c("donor", "city", "state", "zip code", "place of business", "amount"), sep = "_")
separate(indiv16, trump, c("donor", "city", "state", "zip code", "place of business", "amount"), sep = "_")

# summarise amounts raised and spent by candidates

summarise(indiv16, clinton, c("receipts", "disbursements"))
summarise(indiv16, trump, c("receipts", "disbursements"))



