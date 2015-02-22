CodeBook for Getting and Cleaning Data Course Project.

Data was sourced from the links provided in the course project page:
	
	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Once the zip file is expanded, a folder named 'UCI HAR Dataset' will be available.  This contains all the .txt data files required for the project.

This folder needs to be placed in your R working directory.

run_analysis.R is code that tidies the data in the UCI HAR Dataset folder as per the project instructions.

The output is a data table 'tidydata', which provides a list of averages measured for each subject for each activity.

Variables List with explanations (as taken from the original data):

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

mean: Mean value
std: Standard deviation
meanFreq: Weighted average of the frequency components to obtain a mean frequency

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Consequently, the actual variables used in the tidydata dataset are:

subject     identifies the person undertaking the activities.  There were 30 people in all, with 9 used as test subjects, and 21 as training subjects.
activity	a factor of 6 levels, denoting the type of activity (laying, sitting, standing, walking, walking downstairs and walking upstairs).

Measured variables for each subject and activity are:

tBodyAccmeanX, tBodyAccmeanY, tBodyAccmeanZ, tBodyAccstdX, tBodyAccstdY, tBodyAccstdZ, tGravityAccmeanX, tGravityAccmeanY, tGravityAccmeanZ, tGravityAccstdX, tGravityAccstdY, tGravityAccstdZ, tBodyAccJerkmeanX, tBodyAccJerkmeanY, tBodyAccJerkmeanZ, tBodyAccJerkstdX, tBodyAccJerkstdY, tBodyAccJerkstdZ, tBodyGyromeanX, tBodyGyromeanY, tBodyGyromeanZ, tBodyGyrostdX, tBodyGyrostdY, tBodyGyrostdZ, tBodyGyroJerkmeanX, tBodyGyroJerkmeanY, tBodyGyroJerkmeanZ, tBodyGyroJerkstdX, tBodyGyroJerkstdY, tBodyGyroJerkstdZ, tBodyAccMagmean, tBodyAccMagstd, tGravityAccMagmean, tGravityAccMagstd, tBodyAccJerkMagmean, tBodyAccJerkMagstd, tBodyGyroMagmean, tBodyGyroMagstd, tBodyGyroJerkMagmean, tBodyGyroJerkMagstd, fBodyAccmeanX, fBodyAccmeanY, fBodyAccmeanZ, fBodyAccstdX, fBodyAccstdY, fBodyAccstdZ, fBodyAccmeanFreqX, fBodyAccmeanFreqY, fBodyAccmeanFreqZ, fBodyAccJerkmeanX, fBodyAccJerkmeanY, fBodyAccJerkmeanZ, fBodyAccJerkstdX, fBodyAccJerkstdY, fBodyAccJerkstdZ, fBodyAccJerkmeanFreqX, fBodyAccJerkmeanFreqY, fBodyAccJerkmeanFreqZ, fBodyGyromeanX, fBodyGyromeanY, fBodyGyromeanZ, fBodyGyrostdX, fBodyGyrostdY, fBodyGyrostdZ, fBodyGyromeanFreqX, fBodyGyromeanFreqY, fBodyGyromeanFreqZ, fBodyAccMagmean, fBodyAccMagstd, fBodyAccMagmeanFreq, fBodyBodyAccJerkMagmean, fBodyBodyAccJerkMagstd, fBodyBodyAccJerkMagmeanFreq, fBodyBodyGyroMagmean, fBodyBodyGyroMagstd, fBodyBodyGyroMagmeanFreq, fBodyBodyGyroJerkMagmean, fBodyBodyGyroJerkMagstd, fBodyBodyGyroJerkMagmeanFreq, angletBodyAccMeangravity, angletBodyAccJerkMeangravityMean, angletBodyGyroMeangravityMean, angletBodyGyroJerkMeangravityMean, angleXgravityMean, angleYgravityMean, angleZgravityMean