                  **Getting-and-Cleaning-Data-Course-Project**

    **Peer-graded Assignment: Getting and Cleaning Data Course Project**
                      **Presented by Humberto Canon**

**Objective:**
  1. The submitted data set is tidy.
  2. The Github repo contains the required scripts.
  3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
  4. The README that explains the analysis files is clear and understandable.
  5. The work submitted for this project is the work of the student who submitted it.

**The full project will include** 
  1) a tidy data set as described below, 
  2) a link to a Github repository with your script for performing the analysis, and 
  3) a code book that describes the variables, the data, and any transformations or 
     work performed to clean up the data called CodeBook.md. 
  4) a README.md in the repo with your scripts. This repo explains how all of the 
     scripts work and how they are connected.

**Source data for the project:**
The data linked to from the website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Here are the data for the project:
    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


**Steps included in the script run_analisys.R**
1) Charge Libraries
2) Downloading data zip files
3) Unzip files
4) Reading & Assigning files to data frames 
5) Merging the training and the test sets to create one data set.
6) Extracts only the measurements on the mean and standard deviation for each measurement.
7) Uses descriptive activity names to name the activities in the data set
8) Appropriately labels the data set with descriptive variable names
9) From the data set in previous step, creates a second, independent tidy data set with 
   the average of each variable for each activity and each subject.
10) write a TidyData in the file ""TidyData.txt"





**License:
 ========
 Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity 
Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or
their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.  **