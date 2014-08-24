# Getting and Cleaning Data Course Project
xlit  
Thursday, August 22, 2014  

The files in this repo are for the Getting and Cleaning Data Course Project of the John Hopkins University Data Science Specialization on Coursera.

## About "run_analysis.R"
Here we explain how the R script "run_analysis.R" works.

1. Getting the input raw data. You don't have to do anything about this step, as it is automated by the script.

    The raw data "UCI HAR Dataset.zip" is downloaded from 

    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

    which is originally from

    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

    The downloaded zip file is unzipped in to the "./UCI HAR Dataset" directory. Here "./" means the current working directory, i.e., where the "run_analysis.R" is. 
    
2. Executing the script. The easiest way is in RStudio, use the command:
    
    ```r
    source("run_analysis.R")
    ```
    or open the script in Rstudio, and click the "Source" button. 

3. The script will download and unzip the raw data, merge the data sets, and then generate two tidy datasets named "data" and "data.mean". Only the second tidy dataset will be outputed to a file named "dataset.mean.txt".

    This process may take for several minutes, please be patient.  

4. About the project requirement on the selection of measurements on the mean and standard deviation for each measurement. According to "feature_info.txt" in the "./UCI HAR Dataset" folder, only those features with "mean()" or "std()" in name are selected.

5. The output is a file called "dataset.mean.txt". It contains a tidy data frame. Volumns 3-68 of the data frame are the **mean values** of the corresponding variables/features in the original data, or the first tidy dataset "data" in the script, taking for each variable for each activity and each subject. 

    Although a more precise variable name could be "mean of {the current tidy name}". But to keep the variable name relatively short, we adopted the current varible names, and used camel case to increase readability. We believe this way of choosing the descriptive variable names will not cause any confusion. 

## About "dataset.mean.txt"
This file is the output of the "run_analysis.R" script. It is the second tidy data set with the average of each variable for each activity and each subject. The seperator used by the file is blankspace " ". The file can be read into R by the command:

```r
mydata <- read.table("dataset.mean.txt", header = TRUE)
```
It can also be opened in MS Excel as a space seperated text file.

## About "CodeBook.md"
This is the code book for "dataset.mean.txt", the output of "run_analysis.R". 

[END]
