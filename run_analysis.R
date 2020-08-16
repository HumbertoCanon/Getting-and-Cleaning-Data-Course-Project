## Peer-graded Assignment: Getting and Cleaning Data Course Project
##                    Presented by Humberto Canon
##
## I need to accomplish:
##  1. The submitted data set is tidy.
##  2. The Github repo contains the required scripts.
##  3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
##  4. The README that explains the analysis files is clear and understandable.
##  5. The work submitted for this project is the work of the student who submitted it.
##
##  The full project will include 
##  1) a tidy data set as described below, 
##  2) a link to a Github repository with your script for performing the analysis, and 
##  3) a code book that describes the variables, the data, and any transformations or 
##     work performed to clean up the data called CodeBook.md. 
##  4) a README.md in the repo with your scripts. This repo explains how all of the 
##     scripts work and how they are connected.

## Libraries
library(dplyr)

## Downloading files
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "FullData.zip", method = "curl")

## Unzip files
if (!file.exists("./UCI_HAR_Dataset"))
    { unzip("FullData.zip") }

## Reading & Assigning files
activity      <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("id", "activity"))
feature       <- read.table("UCI HAR Dataset/features.txt", col.names = c("z", "feature"))

subject_test  <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
X_test        <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = feature$feature)
y_test        <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "id")

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
X_train       <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = feature$feature)
y_train       <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "id")

## Merging the training and the test sets to create one data set.
Xs          <- rbind(X_train, X_test)
ys          <- rbind(y_train, y_test)
subjects    <- rbind(subject_train, subject_test)
FullDataSet <- cbind(subjects, ys, Xs)

## Extracts only the measurements on the mean and standard deviation for each measurement.
DataExtract <- FullDataSet %>% select(subject, id, contains("mean"), contains("std"))

## Uses descriptive activity names to name the activities in the data set
DataExtract$id <- activity[DataExtract$id, 2]

## Appropriately labels the data set with descriptive variable names
names(DataExtract)    <-gsub("^t",        "time", names(DataExtract))
names(DataExtract)    <-gsub("^f",        "frequency", names(DataExtract))
names(DataExtract)    <-gsub("Acc",       "Accelerometer", names(DataExtract))
names(DataExtract)    <-gsub("Gyro",      "Gyroscope", names(DataExtract))
names(DataExtract)    <-gsub("Mag",       "Magnitude", names(DataExtract))
names(DataExtract)    <-gsub("BodyBody",  "Body", names(DataExtract))
names(DataExtract)[2] = "activity"

## From the data set in previous step, creates a second, independent tidy data set with 
## the average of each variable for each activity and each subject.
TidyData <- DataExtract %>%
  group_by(subject, activity) %>%
  summarise_all(funs(mean))
write.table(TidyData, "TidyData.txt", row.name=FALSE)

## License:
## ========
## Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
##[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity 
##Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
##This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or
##their institutions for its use or misuse. Any commercial use is prohibited.
##Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.  