CODE BOOK
========================

## Overview of the data

The tiny data set generated by _run_analysis.R_ sumarizes data measured from the accelerometer and gyroscope of a smartphone on the waist of 30 different subjects, each one performing 6 different activities. The data set consists of 180 rows and 68 columns. Each row corresponds to an observation, i.e. one of 6 activities performed by 1 of 30 subjects (therefore 6 activities * 30 subjects = 180 observations). On the other hand, the first 2 columns are for identification (column 1 = activity, column 2 = subject) and the other 66 columns correspond to average values of all the different variables obtained from both the accelerometer and gyroscope (more details in the next sections). It is worthy to note that each of these values correspond to an average: the original data set contained 10,299 observations, i.e. several for each activity and subject. Finally, the data set is "tidy" in the sense that each row corresponds to an observation and each column to a variable.

========================

## Overview of the variables

The variables selected for this data set come from accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. The set of variables that were estimated from these signals are the mean (Mean value) and std (Standard deviation).

========================

## Description of each variable

* _Activity_: Activity performed by the subject (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING or LAYING)
* _Subject_: Number corresponding to the subject (between 1 and 30)
* _tBodyAcc_mean_X_: Mean value of time domain body signal from accelerometer - direction X (AVERAGE)
* _tBodyAcc_mean_Y_: Mean value of time domain body signal from accelerometer - direction Y (AVERAGE)
* _tBodyAcc_mean_Z_: Mean value of time domain body signal from accelerometer - direction Z (AVERAGE)
* _tBodyAcc_std_X_: Standard deviation of time domain body signal from accelerometer - direction X (AVERAGE)
* _tBodyAcc_std_Y_: Standard deviation of time domain body signal from accelerometer - direction Y (AVERAGE)
* _tBodyAcc_std_Z_: Standard deviation of time domain body signal from accelerometer - direction Z (AVERAGE)
* _tGravityAcc_mean_X_: Mean value of time domain gravity signal from accelerometer - direction X (AVERAGE)
* _tGravityAcc_mean_Y_: Mean value of time domain gravity signal from accelerometer - direction Y (AVERAGE)
* _tGravityAcc_mean_Z_: Mean value of time domain gravity signal from accelerometer - direction Z (AVERAGE)
* _tGravityAcc_std_X_: Standard deviation of time domain gravity signal from accelerometer - direction X (AVERAGE)
* _tGravityAcc_std_Y_: Standard deviation of time domain gravity signal from accelerometer - direction Y (AVERAGE)
* _tGravityAcc_std_Z_: Standard deviation of time domain gravity signal from accelerometer - direction Z (AVERAGE)
* _tBodyAccJerk_mean_X_: Mean value of Jerk time domain body signal from accelerometer - direction X (AVERAGE)
* _tBodyAccJerk_mean_Y_: Mean value of Jerk time domain body signal from accelerometer - direction Y (AVERAGE)
* _tBodyAccJerk_mean_Z_: Mean value of Jerk time domain body signal from accelerometer - direction Z (AVERAGE)
* _tBodyAccJerk_std_X_: Standard deviation of Jerk time domain body signal from accelerometer - direction X (AVERAGE)
* _tBodyAccJerk_std_Y_: Standard deviation of Jerk time domain body signal from accelerometer - direction Y (AVERAGE)
* _tBodyAccJerk_std_Z_: Standard deviation of Jerk time domain body signal from accelerometer - direction Z (AVERAGE)
* _tBodyGyro_mean_X_: Mean value of time domain body signal from gyroscope - direction X (AVERAGE)
* _tBodyGyro_mean_Y_: Mean value of time domain body signal from gyroscope - direction Y (AVERAGE)
* _tBodyGyro_mean_Z_: Mean value of time domain body signal from gyroscope - direction Z (AVERAGE)
* _tBodyGyro_std_X_: Standard deviation of time domain body signal from gyroscope - direction X (AVERAGE)
* _tBodyGyro_std_Y_: Standard deviation of time domain body signal from gyroscope - direction Y (AVERAGE)
* _tBodyGyro_std_Z_: Standard deviation of time domain body signal from gyroscope - direction Z (AVERAGE)
* _tBodyGyroJerk_mean_X_: Mean value of Jerk time domain body signal from gyroscope - direction X (AVERAGE)
* _tBodyGyroJerk_mean_Y_: Mean value of Jerk time domain body signal from gyroscope - direction Y (AVERAGE)
* _tBodyGyroJerk_mean_Z_: Mean value of Jerk time domain body signal from gyroscope - direction Z (AVERAGE)
* _tBodyGyroJerk_std_X_: Standard deviation of Jerk time domain body signal from gyroscope - direction X (AVERAGE)
* _tBodyGyroJerk_std_Y_: Standard deviation of Jerk time domain body signal from gyroscope - direction Y (AVERAGE)
* _tBodyGyroJerk_std_Z_: Standard deviation of Jerk time domain body signal from gyroscope - direction Z (AVERAGE)
* _tBodyAccMag_mean_: Mean value of time domain body signal from accelerometer - magnitude (AVERAGE)
* _tBodyAccMag_std_: Standard deviation of time domain body signal from accelerometer - magnitude (AVERAGE)
* _tGravityAccMag_mean_: Mean value of time domain gravity signal from accelerometer - magnitude (AVERAGE)
* _tGravityAccMag_std_: Standard deviation of time domain gravity signal from accelerometer - magnitude (AVERAGE)
* _tBodyAccJerkMag_mean_: Mean value of Jerk time domain body signal from accelerometer - magnitude (AVERAGE)
* _tBodyAccJerkMag_std_: Standard deviation of Jerk time domain body signal from accelerometer - magnitude (AVERAGE)
* _tBodyGyroMag_mean_: Mean value of time domain body signal from gyroscope - magnitude (AVERAGE)
* _tBodyGyroMag_std_: Standard deviation of time domain body signal from gyroscope - magnitude (AVERAGE)
* _tBodyGyroJerkMag_mean_: Mean value of Jerk time domain body signal from gyroscope - magnitude (AVERAGE)
* _tBodyGyroJerkMag_std_: Standard deviation of Jerk time domain body signal from gyroscope - magnitude (AVERAGE)
* _fBodyAcc_mean_X_: Mean value of frequency domain body signal from accelerometer - direction X (AVERAGE)
* _fBodyAcc_mean_Y_: Mean value of frequency domain body signal from accelerometer - direction Y (AVERAGE)
* _fBodyAcc_mean_Z_: Mean value of frequency domain body signal from accelerometer - direction Z (AVERAGE)
* _fBodyAcc_std_X_: Standard deviation of frequency domain body signal from accelerometer - direction X (AVERAGE)
* _fBodyAcc_std_Y_: Standard deviation of frequency domain body signal from accelerometer - direction Y (AVERAGE)
* _fBodyAcc_std_Z_: Standard deviation of frequency domain body signal from accelerometer - direction Z (AVERAGE)
* _fBodyAccJerk_mean_X_: Mean value of Jerk frequency domain body signal from accelerometer - direction X (AVERAGE)
* _fBodyAccJerk_mean_Y_: Mean value of Jerk frequency domain body signal from accelerometer - direction Y (AVERAGE)
* _fBodyAccJerk_mean_Z_: Mean value of Jerk frequency domain body signal from accelerometer - direction Z (AVERAGE)
* _fBodyAccJerk_std_X_: Standard deviation of Jerk frequency domain body signal from accelerometer - direction X (AVERAGE)
* _fBodyAccJerk_std_Y_: Standard deviation of Jerk frequency domain body signal from accelerometer - direction Y (AVERAGE)
* _fBodyAccJerk_std_Z_: Standard deviation of Jerk frequency domain body signal from accelerometer - direction Z (AVERAGE)
* _fBodyGyro_mean_X_: Mean value of frequency domain body signal from gyroscope - direction X (AVERAGE)
* _fBodyGyro_mean_Y_: Mean value of frequency domain body signal from gyroscope - direction Y (AVERAGE)
* _fBodyGyro_mean_Z_: Mean value of frequency domain body signal from gyroscope - direction Z (AVERAGE)
* _fBodyGyro_std_X_: Standard deviation of frequency domain body signal from gyroscope - direction X (AVERAGE)
* _fBodyGyro_std_Y_: Standard deviation of frequency domain body signal from gyroscope - direction Y (AVERAGE)
* _fBodyGyro_std_Z_: Standard deviation of frequency domain body signal from gyroscope - direction Z (AVERAGE)
* _fBodyAccMag_mean_: Mean value of frequency domain body signal from accelerometer - magnitude (AVERAGE)
* _fBodyAccMag_std_: Standard deviation of frequency domain body signal from accelerometer - magnitude (AVERAGE)
* _fBodyAccJerkMag_mean_: Mean value of Jerk frequency domain body signal from accelerometer - magnitude (AVERAGE)
* _fBodyAccJerkMag_std_: Standard deviation of Jerk frequency domain body signal from accelerometer - magnitude (AVERAGE)
* _fBodyGyroMag_mean_: Mean value of frequency domain body signal from gyroscope - magnitude (AVERAGE)
* _fBodyGyroMag_std_: Standard deviation of frequency domain body signal from gyroscope - magnitude (AVERAGE)
* _fBodyGyroJerkMag_mean_: Mean value of Jerk frequency domain body signal from gyroscope - magnitude (AVERAGE)
* _fBodyGyroJerkMag_std_: Standard deviation of Jerk frequency domain body signal from gyroscope - magnitude (AVERAGE)

========================

## Transformations performed to the data

The main transformations performed to the original data for attaining the tiny data set are the following:
* Both the training and the test sets where merged to create one data set.
* For each observation, only the mean and standard deviation values where selected.
* 2 additional columns where added to the dataset to include the activity name and the subject number.
* Each variable in the dataset was descriptively named.
* The dataset was sorted by activity name and then by subject.
* Each variable was averaged for each activity and each subject.

========================

## Additional information

All data was extracted from the *Human Activity Recognition Using Smartphones Data Set* (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). More details are available there, and also in the README files from the folder _UCI HAR Dataset_.

========================