# Getting and Cleaning Data Course Project
run_analysis.R is a R script designed to work with the UCI HAR Dataset.  The data for the script is available [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and a decription of the dataset is available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
## Assumptions
A few assumptions are made in order to insure the R script will work on                                         your desktop.
        -You have installed the data.table package.
        -You have installed the reshape2 package.
        -You have loaded both packages into R.
        -You have set your working directory to the location of the UCI HAR                  Dataset downloaded from the link above.
        
Finally, the R script can be run by executing ```{R} source("run_analysis.R") ``` in R as long as the script is saved in your working directory.