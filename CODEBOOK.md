---
title: "Code Book run_analysis.R"
author: "HCM"
date: "8/16/2020"
output: html_document
---

##Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


##Attribute Information:

For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

## Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt', these are the first 10 of them.

1 tBodyAcc-mean()-X
2 tBodyAcc-mean()-Y
3 tBodyAcc-mean()-Z
4 tBodyAcc-std()-X
5 tBodyAcc-std()-Y
6 tBodyAcc-std()-Z
7 tBodyAcc-mad()-X
8 tBodyAcc-mad()-Y
9 tBodyAcc-mad()-Z
10 tBodyAcc-max()-X

## Final set of Variables
These are the final variables included in the file TidyData.txt, they are the result of the transformations applied for the run_analysis.R script and described in the file README.md

 [1] "subject"                                           
 [2] "activity"                                          
 [3] "timeBodyAccelerometer.mean...X"                    
 [4] "timeBodyAccelerometer.mean...Y"                    
 [5] "timeBodyAccelerometer.mean...Z"                    
 [6] "timeGravityAccelerometer.mean...X"                 
 [7] "timeGravityAccelerometer.mean...Y"                 
 [8] "timeGravityAccelerometer.mean...Z"                 
 [9] "timeBodyAccelerometerJerk.mean...X"                
[10] "timeBodyAccelerometerJerk.mean...Y"                
[11] "timeBodyAccelerometerJerk.mean...Z"                
[12] "timeBodyGyroscope.mean...X"                        
[13] "timeBodyGyroscope.mean...Y"                        
[14] "timeBodyGyroscope.mean...Z"                        
[15] "timeBodyGyroscopeJerk.mean...X"                    
[16] "timeBodyGyroscopeJerk.mean...Y"                    
[17] "timeBodyGyroscopeJerk.mean...Z"                    
[18] "timeBodyAccelerometerMagnitude.mean.."             
[19] "timeGravityAccelerometerMagnitude.mean.."          
[20] "timeBodyAccelerometerJerkMagnitude.mean.."         
[21] "timeBodyGyroscopeMagnitude.mean.."                 
[22] "timeBodyGyroscopeJerkMagnitude.mean.."             
[23] "frequencyBodyAccelerometer.mean...X"               
[24] "frequencyBodyAccelerometer.mean...Y"               
[25] "frequencyBodyAccelerometer.mean...Z"               
[26] "frequencyBodyAccelerometer.meanFreq...X"           
[27] "frequencyBodyAccelerometer.meanFreq...Y"           
[28] "frequencyBodyAccelerometer.meanFreq...Z"           
[29] "frequencyBodyAccelerometerJerk.mean...X"           
[30] "frequencyBodyAccelerometerJerk.mean...Y"           
[31] "frequencyBodyAccelerometerJerk.mean...Z"           
[32] "frequencyBodyAccelerometerJerk.meanFreq...X"       
[33] "frequencyBodyAccelerometerJerk.meanFreq...Y"       
[34] "frequencyBodyAccelerometerJerk.meanFreq...Z"       
[35] "frequencyBodyGyroscope.mean...X"                   
[36] "frequencyBodyGyroscope.mean...Y"                   
[37] "frequencyBodyGyroscope.mean...Z"                   
[38] "frequencyBodyGyroscope.meanFreq...X"               
[39] "frequencyBodyGyroscope.meanFreq...Y"               
[40] "frequencyBodyGyroscope.meanFreq...Z"               
[41] "frequencyBodyAccelerometerMagnitude.mean.."        
[42] "frequencyBodyAccelerometerMagnitude.meanFreq.."    
[43] "frequencyBodyAccelerometerJerkMagnitude.mean.."    
[44] "frequencyBodyAccelerometerJerkMagnitude.meanFreq.."
[45] "frequencyBodyGyroscopeMagnitude.mean.."            
[46] "frequencyBodyGyroscopeMagnitude.meanFreq.."        
[47] "frequencyBodyGyroscopeJerkMagnitude.mean.."        
[48] "frequencyBodyGyroscopeJerkMagnitude.meanFreq.."    
[49] "angle.tBodyAccelerometerMean.gravity."             
[50] "angle.tBodyAccelerometerJerkMean..gravityMean."    
[51] "angle.tBodyGyroscopeMean.gravityMean."             
[52] "angle.tBodyGyroscopeJerkMean.gravityMean."         
[53] "angle.X.gravityMean."                              
[54] "angle.Y.gravityMean."                              
[55] "angle.Z.gravityMean."                              
[56] "timeBodyAccelerometer.std...X"                     
[57] "timeBodyAccelerometer.std...Y"                     
[58] "timeBodyAccelerometer.std...Z"                     
[59] "timeGravityAccelerometer.std...X"                  
[60] "timeGravityAccelerometer.std...Y"                  
[61] "timeGravityAccelerometer.std...Z"                  
[62] "timeBodyAccelerometerJerk.std...X"                 
[63] "timeBodyAccelerometerJerk.std...Y"                 
[64] "timeBodyAccelerometerJerk.std...Z"                 
[65] "timeBodyGyroscope.std...X"                         
[66] "timeBodyGyroscope.std...Y"                         
[67] "timeBodyGyroscope.std...Z"                         
[68] "timeBodyGyroscopeJerk.std...X"                     
[69] "timeBodyGyroscopeJerk.std...Y"                     
[70] "timeBodyGyroscopeJerk.std...Z"                     
[71] "timeBodyAccelerometerMagnitude.std.."              
[72] "timeGravityAccelerometerMagnitude.std.."           
[73] "timeBodyAccelerometerJerkMagnitude.std.."          
[74] "timeBodyGyroscopeMagnitude.std.."                  
[75] "timeBodyGyroscopeJerkMagnitude.std.."              
[76] "frequencyBodyAccelerometer.std...X"                
[77] "frequencyBodyAccelerometer.std...Y"                
[78] "frequencyBodyAccelerometer.std...Z"                
[79] "frequencyBodyAccelerometerJerk.std...X"            
[80] "frequencyBodyAccelerometerJerk.std...Y"            
[81] "frequencyBodyAccelerometerJerk.std...Z"            
[82] "frequencyBodyGyroscope.std...X"                    
[83] "frequencyBodyGyroscope.std...Y"                    
[84] "frequencyBodyGyroscope.std...Z"                    
[85] "frequencyBodyAccelerometerMagnitude.std.."         
[86] "frequencyBodyAccelerometerJerkMagnitude.std.."     
[87] "frequencyBodyGyroscopeMagnitude.std.."             
[88] "frequencyBodyGyroscopeJerkMagnitude.std.."     

"subject" and "activity" are identifier variables.
