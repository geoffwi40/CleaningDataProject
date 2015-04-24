##Creating a tidy data set of Samsung Smarphone data

###Summary
As part of the cleaning data signature track from courera, the subject project is to create a tidy data 
set from a supplied set of less than tidy data. The resultant data set is the means of all measurement for each of teh participants and each activity type involved

For this proect the prescribed source data set is data of physical movementmeasurements from a Samsung smartphone. This data is suuplied by the UCI Machine learning repository

Source Data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###Project Files

1. The names and decriptions of the resultant data set is detailed in 'CodeBook.Txt' file within this repository
2. The script used to create the result data set is 'run.analysis.R' within this repository
3. The resulant data set is store as 'Smartphone tidy data means.txt'. The file can be loaded in R using 
         data<-read.table("Smartphone tidy data means.txt", header=TRUE)

###Methodology to create the data set

My intention was to produce a single file which contained the both the train and test datasets with rows comprising the participant number, the activity type (text, *not* ID's) and the means of each of the mean and standard deviations. Note: this did **not** also include the Meanfrequencies



