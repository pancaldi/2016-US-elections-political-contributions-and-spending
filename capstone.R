# load packages

library(tidyverse)
data_dir < - "c:/users/jaqo_000/Desktop/"
filename <- "indiv16.csv"
read(file.path(data_dir, indiv16),...)
library(dplyr)
library(indiv16)
library(stringr)
dfOriginal <- read.csv("indiv16.csv")
df <- dfOriginal
View(df)

# select democratic and republican nominees for president

filter(indiv16, democratic == "clinton")
filter(indiv16, republican == "trump")

# select donors by party

filter(indiv16, contribution_donors = c("democratic party"))
filter(indiv16, contribution_donors = c("republic party"))

# separate amount raised by each candidate

separate(indiv16, clinton, c("donor", "city", "state", "zip code", "place of business", "amount"), sep = "_")
separate(indiv16, trump, c("donor", "city", "state", "zip code", "place of business", "amount"), sep = "_") 

# summarise amounts raised and spent by each candidate

summarise(indiv16, clinton, c("receipts", "disbursements"))
summarise(indiv16, trump, c("receipts", "disbursements"))

