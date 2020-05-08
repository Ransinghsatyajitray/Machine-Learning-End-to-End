# Calculate Skewness

# load libraries
library(mlbench)
library(e1071)   #skewness function belong to e1071 package
# load the dataset
data(PimaIndiansDiabetes)
# calculate skewness for each variable
skew <- apply(PimaIndiansDiabetes[,1:8], 2, skewness)
# display skewness, larger/smaller deviations from 0 show more skew
print(skew)    #between -0.5 and 0.5 is good but anything exceeding is bad




#performance analytics package can also be used
library(PerformanceAnalytics)
library(purrr)
library(dplyr)
PimaIndiansDiabetes %>% select_if(is.numeric) %>%  map_df(skewness)     
