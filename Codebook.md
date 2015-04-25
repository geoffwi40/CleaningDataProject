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

###{Features} - The remaining 66 columns are the summarised features from the original data set (details of the original columns can be found in "features_info.txt"

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals . These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (e.g. Mean_TimeBodyAccelMeanXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (e.g. Mean_TimeBodyAccelJerkMeanXYZ. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (e.g. Mean_TimeBodyAccelMagMean). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals (e.g. Mean_FFTBodyAccelMeanXYZ). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Note this data set sAll features have been summarised as a mean across each subject ID and the activity combination

Mean_TimeBodyAccelMeanX
Mean_TimeBodyAccelMeanY
Mean_TimeBodyAccelMeanZ
Mean_TimeBodyAccelStdX 
Mean_TimeBodyAccelStdY 
Mean_TimeBodyAccelStdZ
Mean_TimeGravityAccelMeanX 
Mean_TimeGravityAccelMeanY 
Mean_TimeGravityAccelMeanZ 
Mean_TimeGravityAccelStdX
Mean_TimeGravityAccelStdY
Mean_TimeGravityAccelStdZ 
Mean_TimeBodyAccelJerkMeanX
Mean_TimeBodyAccelJerkMeanY
Mean_TimeBodyAccelJerkMeanZ
Mean_TimeBodyAccelJerkStdX
Mean_TimeBodyAccelJerkStdY
Mean_TimeBodyAccelJerkStdZ
Mean_TimeBodyGyroMeanX
Mean_TimeBodyGyroMeanY
Mean_TimeBodyGyroMeanZ
Mean_TimeBodyGyroStdX
Mean_TimeBodyGyroStdY
Mean_TimeBodyGyroStdZ
Mean_TimeBodyGyroJerkMeanX
Mean_TimeBodyGyroJerkMeanY
Mean_TimeBodyGyroJerkMeanZ
Mean_TimeBodyGyroJerkStdX
Mean_TimeBodyGyroJerkStdY
Mean_TimeBodyGyroJerkStdZ
Mean_TimeBodyAccelMagMean
Mean_TimeBodyAccelMagStd
Mean_TimeGravityAccelMagMean
Mean_TimeGravityAccelMagStd
Mean_TimeBodyAccelJerkMagMean
Mean_TimeBodyAccelJerkMagStd
Mean_TimeBodyGyroMagMean
Mean_TimeBodyGyroMagStd
Mean_TimeBodyGyroJerkMagMean
Mean_TimeBodyGyroJerkMagStd
Mean_FFTBodyAccelMeanX
Mean_FFTBodyAccelMeanY
Mean_FFTBodyAccelMeanZ
Mean_FFTBodyAccelStdX
Mean_FFTBodyAccelStdY
Mean_FFTBodyAccelStdZ
Mean_FFTBodyAccelJerkMeanX
Mean_FFTBodyAccelJerkMeanY
Mean_FFTBodyAccelJerkMeanZ
Mean_FFTBodyAccelJerkStdX
Mean_FFTBodyAccelJerkStdY
Mean_FFTBodyAccelJerkStdZ
Mean_FFTBodyGyroMeanX
Mean_FFTBodyGyroMeanY
Mean_FFTBodyGyroMeanZ
Mean_FFTBodyGyroStdX
Mean_FFTBodyGyroStdY
Mean_FFTBodyGyroStdZ
Mean_FFTBodyAccelMagMean
Mean_FFTBodyAccelMagStd
Mean_FFTBodyAccelJerkMagMean
Mean_FFTBodyAccelJerkMagStd
Mean_FFTBodyGyroMagMean
Mean_FFTBodyGyroMagStd
Mean_FFTBodyGyroJerkMagMean
Mean_FFTBodyGyroJerkMagStd
