# installed following package for cleaning of dataset 

install.packages("tidyverse")
install.packages("janitor")

# Using the read.csv() function the data are imported in R console

dataframe<-read_csv("C://Users//WORKSPACE//Desktop//Glassdoor Gender Pay Gap.csv")
# using Janitor and dplyr package fort he data  clean
library("janitor")
library("dplyr")
#  We  use remove_empty() function to remove empty column and row in dataset
cleaned_data_glassdor<- remove_empty(dataframe, which = c("rows","cols"), quiet = FALSE)
# Display dataset after execute command 
cleaned_data_glassdor
# We use na.omit() function  to remove rows with missing values in any column 
cleaned_data_glassdor <-na.omit(cleaned_data_glassdor)
# Display dataset after execute command 
cleaned_data_glassdor
# We use clean_name () to make sure that column name are unique and consistent.
cleaned_data_glassdore<-clean_names(cleaned_data_glassdor)
# Display dataset after execute command 
cleaned_data_glassdor
# We use distinct() function to  keep only unique records in a data set
cleaned_data_glassdor<-distinct(cleaned_data_glassdor)
# Display dataset after execute command 
cleaned_data_glassdor
# checked the numerical values in cleaned_data_glassdor dataset 
print(cleaned_data_glassdor[,unlist(lapply(cleaned_data_glassdor,is.numeric))])

