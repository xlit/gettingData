# Getting and Cleaning Data Course Project Code Book
xlit  
Friday, August 22, 2014  

This document is the code book for the tidy date file "data.mean.txt", which is the output  of the script "run_analysis.R" in this repo. The following is a description of the variables, the data, and transformations or work performed by the the script to clean up the [raw data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

### Row Identifier (volumns 1-2)  
1.  **subject**    
The identifier to the subjects who performed the activity for the experiment. An integer with range from 1 to 30.

2.  **activity**    
The activity name, which has 6 values:  
    -   walking
    -	walking upstairs
    -	walking downstairs
    -	sitting
    -	standing
    -	laying
    
Altogether, there are 30*6 = 180 rows of data.

### Averages of Measurements (volumns 3-68)   
Volumns 3-68 are the **mean values** of the corresponding variables/features in the original data, taking for each variable for each activity and each subject. So a more precise tidy variable name could be "mean of {the current tidy name}". But to keep the variable name short, we adopted the current varible names, and used camel case to increase readability. We hope this will not cause any confusion. All values are floating numeric numbers.        
        
| volnum  |  tidy name | original name  |
| ------- | -------- | --------- | 
| 3 |	timeBodyAccMeanX |	tBodyAcc-mean()-X |
| 4 |	timeBodyAccMeanY |	tBodyAcc-mean()-Y |
| 5 |	timeBodyAccMeanZ |	tBodyAcc-mean()-Z |
| 6 |	timeBodyAccStdX |	tBodyAcc-std()-X |
| 7 |	timeBodyAccStdY |	tBodyAcc-std()-Y |
| 8 |	timeBodyAccStdZ |	tBodyAcc-std()-Z |
| 9 |	timeGravityAccMeanX |	tGravityAcc-mean()-X |
| 10 |	timeGravityAccMeanY |	tGravityAcc-mean()-Y |
| 11 |	timeGravityAccMeanZ |	tGravityAcc-mean()-Z |
| 12 |	timeGravityAccStdX |	tGravityAcc-std()-X |
| 13 |	timeGravityAccStdY |	tGravityAcc-std()-Y |
| 14 |	timeGravityAccStdZ |	tGravityAcc-std()-Z |
| 15 |	timeBodyAccJerkMeanX |	tBodyAccJerk-mean()-X |
| 16 |	timeBodyAccJerkMeanY |	tBodyAccJerk-mean()-Y |
| 17 |	timeBodyAccJerkMeanZ |	tBodyAccJerk-mean()-Z |
| 18 |	timeBodyAccJerkStdX |	tBodyAccJerk-std()-X |
| 19 |	timeBodyAccJerkStdY |	tBodyAccJerk-std()-Y |
| 20 |	timeBodyAccJerkStdZ |	tBodyAccJerk-std()-Z |
| 21 |	timeBodyGyroMeanX |	tBodyGyro-mean()-X |
| 22 |	timeBodyGyroMeanY |	tBodyGyro-mean()-Y |
| 23 |	timeBodyGyroMeanZ |	tBodyGyro-mean()-Z |
| 24 |	timeBodyGyroStdX |	tBodyGyro-std()-X |
| 25 |	timeBodyGyroStdY |	tBodyGyro-std()-Y |
| 26 |	timeBodyGyroStdZ |	tBodyGyro-std()-Z |
| 27 |	timeBodyGyroJerkMeanX |	tBodyGyroJerk-mean()-X |
| 28 |	timeBodyGyroJerkMeanY |	tBodyGyroJerk-mean()-Y |
| 29 |	timeBodyGyroJerkMeanZ |	tBodyGyroJerk-mean()-Z |
| 30 |	timeBodyGyroJerkStdX |	tBodyGyroJerk-std()-X |
| 31 |	timeBodyGyroJerkStdY |	tBodyGyroJerk-std()-Y |
| 32 |	timeBodyGyroJerkStdZ |	tBodyGyroJerk-std()-Z |
| 33 |	timeBodyAccMagMean |	tBodyAccMag-mean() |
| 34 |	timeBodyAccMagStd |	tBodyAccMag-std() |
| 35 |	timeGravityAccMagMean |	tGravityAccMag-mean() |
| 36 |	timeGravityAccMagStd |	tGravityAccMag-std() |
| 37 |	timeBodyAccJerkMagMean |	tBodyAccJerkMag-mean() |
| 38 |	timeBodyAccJerkMagStd |	tBodyAccJerkMag-std() |
| 39 |	timeBodyGyroMagMean |	tBodyGyroMag-mean() |
| 40 |	timeBodyGyroMagStd |	tBodyGyroMag-std() |
| 41 |	timeBodyGyroJerkMagMean |	tBodyGyroJerkMag-mean() |
| 42 |	timeBodyGyroJerkMagStd |	tBodyGyroJerkMag-std() |
| 43 |	freqBodyAccMeanX |	fBodyAcc-mean()-X |
| 44 |	freqBodyAccMeanY |	fBodyAcc-mean()-Y |
| 45 |	freqBodyAccMeanZ |	fBodyAcc-mean()-Z |
| 46 |	freqBodyAccStdX |	fBodyAcc-std()-X |
| 47 |	freqBodyAccStdY |	fBodyAcc-std()-Y |
| 48 |	freqBodyAccStdZ |	fBodyAcc-std()-Z |
| 49 |	freqBodyAccJerkMeanX |	fBodyAccJerk-mean()-X |
| 50 |	freqBodyAccJerkMeanY |	fBodyAccJerk-mean()-Y |
| 51 |	freqBodyAccJerkMeanZ |	fBodyAccJerk-mean()-Z |
| 52 |	freqBodyAccJerkStdX |	fBodyAccJerk-std()-X |
| 53 |	freqBodyAccJerkStdY |	fBodyAccJerk-std()-Y |
| 54 |	freqBodyAccJerkStdZ |	fBodyAccJerk-std()-Z |
| 55 |	freqBodyGyroMeanX |	fBodyGyro-mean()-X |
| 56 |	freqBodyGyroMeanY |	fBodyGyro-mean()-Y |
| 57 |	freqBodyGyroMeanZ |	fBodyGyro-mean()-Z |
| 58 |	freqBodyGyroStdX |	fBodyGyro-std()-X |
| 59 |	freqBodyGyroStdY |	fBodyGyro-std()-Y |
| 60 |	freqBodyGyroStdZ |	fBodyGyro-std()-Z |
| 61 |	freqBodyAccMagMean |	fBodyAccMag-mean() |
| 62 |	freqBodyAccMagStd |	fBodyAccMag-std() |
| 63 |	freqBodyBodyAccJerkMagMean |	fBodyBodyAccJerkMag-mean() |
| 64 |	freqBodyBodyAccJerkMagStd |	fBodyBodyAccJerkMag-std() |
| 65 |	freqBodyBodyGyroMagMean |	fBodyBodyGyroMag-mean() |
| 66 |	freqBodyBodyGyroMagStd |	fBodyBodyGyroMag-std()  |
| 67 |	freqBodyBodyGyroJerkMagMean |	fBodyBodyGyroJerkMag-mean() |
| 68 |	freqBodyBodyGyroJerkMagStd |	fBodyBodyGyroJerkMag-std() |  


For detailed description of the original dataset, please see the documents "README.txt" and "features_info.txt" in the [raw data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

[END]
