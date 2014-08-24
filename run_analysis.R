## Filename: run_analysis.R
## Note: this script was tested in RStudio Version 0.98.953, Windows 7 (32bit)

# 0. Getting raw data.
if(!file.exists("UCI HAR Dataset.zip")){
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileUrl, destfile = "UCI HAR Dataset.zip", mode = "wb")
}
unzip("UCI HAR Dataset.zip")
dir(path="./UCI HAR Dataset")

# 1. Merges the training and the test sets to create one data set.

### According to "README.txt" in the "./UCI HAR Dataset" folder, the "X_train.txt" 
### file in the "./UCI HAR Dataset/train" folder is the Training set, and the 
### "X_test.txt" file in the "./UCI HAR Dataset/test" folder is the Test set.

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
dim(X_train); dim(y_train); dim(subject_train); dim(X_test); dim(y_test); dim(subject_test)
X <- rbind(X_train, X_test)   # merged dataset containing training and test sets
y <- rbind(y_train, y_test)   # merged activity label set
subject <- rbind(subject_train, subject_test)  # merged subject set
dim(X); dim(y); dim(subject)
MergedData <- cbind(subject, y, X)  # Merged big dataset.

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

### According to "feature_info.txt" in the "./UCI HAR Dataset" folder, only those 
### features with "mean()" or "std()" in name are selected.

features <- read.table("./UCI HAR Dataset/features.txt")
features.selected <- features[grep("mean\\(\\)|std\\(\\)", features$V2),]
dataX <- X[, features.selected$V1]
colnames(dataX) <- as.character(features.selected$V2)
colnames(subject) <- "subject"
colnames(y) <- "activity"
data <- cbind(subject, y, dataX)

# 3. Uses descriptive activity names to name the activities in the data set.

activity <- read.table("./UCI HAR Dataset/activity_labels.txt")
activity[,2] <- gsub("_", " ", tolower(activity[,2]))
data$activity <- factor(data$activity, levels = activity$V1, labels = activity$V2)

# 4. Appropriately labels the data set with descriptive variable names. 
### Choose approprate descriptive volumn names according to "features_info.txt"
###  in the  "./UCI HAR Dataset" folder.
names(data) <- gsub("\\(\\)", "", names(data))
names(data) <- gsub("-mean", "Mean", names(data))
names(data) <- gsub("-std", "Std", names(data))
names(data) <- gsub("-", "", names(data))
names(data) <- gsub("^t", "time", names(data))
names(data) <- gsub("^f", "freq", names(data))
        ## The result "data" is the first tidy dataset.

# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

data.mean <- aggregate(data[,-c(1,2)], by = list(activity=data$activity, subject=data$subject), mean)
data.mean <- data.mean[, c(2, 1, 3:ncol(data.mean))]
## The following line will generate the same tidy dataset with different row order: 
##   data.mean <- aggregate(data[,-c(1,2)], by = list(subject=data$subject, activity=data$activity), mean)

## Output the second tidy dataset "data.mean" to a file.
write.table(data.mean, "dataset.mean.txt", row.names = FALSE)
   
