##Code Book - Smartphone tidy data means

###SubjectID	Integer
	Subject Identity
		1-30 The ID number of the participant using the Smartphone

###ActivityName	Text (6-19 chars)
	Activity Name
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING

###{Features}
The remaining 66 columns are the summarised features from the original data set (details of the original columns can be found in "features_info.txt"

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals . These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (e.g. Mean_TimeBodyAccelMeanX) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (e.g. Mean_TimeBodyAccelJerkMeanX. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (e.g. Mean_TimeBodyAccelMagMean). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals (e.g. Mean_FFTBodyAccelMeanX). 

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Note: for this data set all features have been summarised as a mean across each subject ID and the activity combination, hence the "Mean_" prefix on each feature

* Mean_TimeBodyAccel - Time domain body acceleration 
  * 6 variables total. Above plus MeanX,MeanY,MeanZ and StdX,StdY,StdZ (e.g. Mean_TimeBodyAccelMeanX)
* Mean_TimeGravityAccel - Time domain gravity acceleration 
  * 6 variables total. Above plus MeanX,MeanY,MeanZ and StdX,StdY,StdZ (e.g. Mean_TimeGravityAccelMeanX)
* Mean_TimeBodyAccelJerk - Time domain body acceleration jerk
  * 6 variables total. Above plus MeanX,MeanY,MeanZ and StdX,StdY,StdZ (e.g. Mean_TimeBodyAccelJerkMeanX)
* Mean_TimeBodyGyro - Time domain body gyroscope
  * 6 variables total. Above plus MeanX,MeanY,MeanZ and StdX,StdY,StdZ (e.g. Mean_TimeBodyGyroMeanX)
* Mean_TimeBodyGyroJerk - Time domain body gyroscope jerk
  * 6 variables total. Above plus MeanX,MeanY,MeanZ and StdX,StdY,StdZ (e.g. Mean_TimeBodyGyroJerkMeanX)
* Mean_TimeBodyAccelMag - Time domain body acceleration magnitude
  * 2 variables total. Above plus Mean and Std (e.g. Mean_TimeBodyAccelMagMean)
* Mean_TimeGravityAccelMag - Time domain gravity acceleration magnitude
  * 2 variables total. Above plus Mean and Std (e.g. Mean_TimeGravityAccelMagMean)
* Mean_TimeBodyAccelJerkMag - Time domain gravity acceleration jerk magnitude
  * 2 variables total. Above plus Mean and Std (e.g. Mean_TimeBodyAccelJerkMagMean)
* Mean_TimeBodyGyroMag - Time domain body gryroscope magnitude
  * 2 variables total. Above plus Mean and Std (e.g. Mean_TimeBodyGyroMagMean)
* Mean_TimeBodyGyroJerkMag- Time domain body gryroscope jerk magnitude
  * 2 variables total. Above plus Mean and Std (e.g. Mean_TimeBodyGyroJerkMagMean)
* Mean_FFTBodyAccel - Frequency domain body acceleration 
  * 6 variables total. Above plus MeanX,MeanY,MeanZ and StdX,StdY,StdZ (e.g. Mean_FFTBodyAccelMeanX)
* Mean_FFTBodyAccelJerk - Frequency domain body acceleration jerk
  * 6 variables total. Above plus MeanX,MeanY,MeanZ and StdX,StdY,StdZ (e.g. Mean_FFTBodyAccelJerkMeanX)
* Mean_FFTBodyGyro - Frequency domain body gyroscope
  * 6 variables total. Above plus MeanX,MeanY,MeanZ and StdX,StdY,StdZ (e.g. Mean_FFTBodyGyroMeanX)
* Mean_FFTBodyAccelMag - Frequency domain body acceleration magnitude
  * 2 variables total. Above plus Mean and Std (e.g. Mean_FFTBodyAccelMagMean)
* Mean_FFTBodyAccelJerkMag - Frequency domain body acceleration jerk magnitude
  * 2 variables total. Above plus Mean and Std (e.g. Mean_FFTBodyAccelJerkMagMean)
* Mean_FFTBodyGyroMag - Frequency domain body gryroscope magnitude
  * 2 variables total. Above plus Mean and Std (e.g. Mean_FFTBodyGyroMagMean)
* Mean_FFTBodyGyroJerkMag - Frequency domain body gryroscope jerk magnitude
  * 2 variables total. Above plus Mean and Std (e.g. Mean_FFTBodyGyroJerkMagMean)
