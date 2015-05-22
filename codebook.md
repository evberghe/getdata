# codebook

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: '_X', '_Y', '_Z' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

* mean: Mean value
* std: Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

Names of features are a combination of the information above. 

In the dataset, means are given for each of the features, for each of the activities and subjects. There are six different activities, and 30 subjects, resulting in a dataset with 180 rows.


'activity' and 'subject_id' are not measured, but recorded. 'subject_id' is the identifier of the subject on which the measurements were made. 'activity' is one of
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

# list of fields/features
 activity 
 subject_id 
 tBodyAcc_mean__X 
 tBodyAcc_mean__Y 
 tBodyAcc_mean__Z 
 tBodyAcc_std__X 
 tBodyAcc_std__Y 
 tBodyAcc_std__Z 
 tGravityAcc_mean__X 
 tGravityAcc_mean__Y 
 tGravityAcc_mean__Z 
 tGravityAcc_std__X 
 tGravityAcc_std__Y 
 tGravityAcc_std__Z 
 tBodyAccJerk_mean__X 
 tBodyAccJerk_mean__Y 
 tBodyAccJerk_mean__Z 
 tBodyAccJerk_std__X 
 tBodyAccJerk_std__Y 
 tBodyAccJerk_std__Z 
 tBodyGyro_mean__X 
 tBodyGyro_mean__Y 
 tBodyGyro_mean__Z 
 tBodyGyro_std__X 
 tBodyGyro_std__Y 
 tBodyGyro_std__Z 
 tBodyGyroJerk_mean__X 
 tBodyGyroJerk_mean__Y 
 tBodyGyroJerk_mean__Z 
 tBodyGyroJerk_std__X 
 tBodyGyroJerk_std__Y 
 tBodyGyroJerk_std__Z 
 tBodyAccMag_mean 
 tBodyAccMag_std 
 tGravityAccMag_mean 
 tGravityAccMag_std 
 tBodyAccJerkMag_mean 
 tBodyAccJerkMag_std 
 tBodyGyroMag_mean 
 tBodyGyroMag_std 
 tBodyGyroJerkMag_mean 
 tBodyGyroJerkMag_std 
 fBodyAcc_mean__X 
 fBodyAcc_mean__Y 
 fBodyAcc_mean__Z 
 fBodyAcc_std__X 
 fBodyAcc_std__Y 
 fBodyAcc_std__Z 
 fBodyAcc_meanFreq__X 
 fBodyAcc_meanFreq__Y 
 fBodyAcc_meanFreq__Z 
 fBodyAccJerk_mean__X 
 fBodyAccJerk_mean__Y 
 fBodyAccJerk_mean__Z 
 fBodyAccJerk_std__X 
 fBodyAccJerk_std__Y 
 fBodyAccJerk_std__Z 
 fBodyAccJerk_meanFreq__X 
 fBodyAccJerk_meanFreq__Y 
 fBodyAccJerk_meanFreq__Z 
 fBodyGyro_mean__X 
 fBodyGyro_mean__Y 
 fBodyGyro_mean__Z 
 fBodyGyro_std__X 
 fBodyGyro_std__Y 
 fBodyGyro_std__Z 
 fBodyGyro_meanFreq__X 
 fBodyGyro_meanFreq__Y 
 fBodyGyro_meanFreq__Z 
 fBodyAccMag_mean 
 fBodyAccMag_std 
 fBodyAccMag_meanFreq 
 fBodyBodyAccJerkMag_mean 
 fBodyBodyAccJerkMag_std 
 fBodyBodyAccJerkMag_meanFreq 
 fBodyBodyGyroMag_mean 
 fBodyBodyGyroMag_std 
 fBodyBodyGyroMag_meanFreq 
 fBodyBodyGyroJerkMag_mean 
 fBodyBodyGyroJerkMag_std 
 fBodyBodyGyroJerkMag_meanFreq 

