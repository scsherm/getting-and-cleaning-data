# Getting and Cleaning Data Course Project
The run_analysis.R is a R script designed to work with the UCI HAR Dataset.  The data for the script is available [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and a decription of the dataset is available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  The script will load and process the txt files from the UCI HAR Dataset.  It will then apply appropriate names to all the variables for test and train data, merge the data into one dataset and create a text file for the cleaned up data.

## Assumptions
A few assumptions are made in order to insure the R script will work on                                         your desktop.

1. You have installed the data.table package.
2. You have installed the reshape2 package.
3. Your working directory is set to the location of the UCI HAR Dataset.               
        
Finally, the R script can be run by executing ```source("run_analysis.R") ``` in R, as long as the script is saved in your working directory.