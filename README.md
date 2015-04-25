##Creating a tidy data set of Samsung Smartphone data

###Summary
As part of the cleaning data signature track from courera, the subject project is to create a tidy data 
set from a supplied set of less than tidy data. The resultant data set is the means of all measurement for each of the participants and each activity type involved

For this project the prescribed source data set is data of physical movement measurements from a Samsung smartphone. This data is suuplied by the UCI Machine learning repository

Source Data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###Project Files

1. The names and descriptions of the fields in the resultant data set is detailed in "CodeBook.md" file within this repository
2. The script used to create the result data set is "run.analysis.R" within this repository
3. The resulant data set is store as 'Smartphone tidy data means.txt'. The file can be loaded in R using 
         data<-read.table("Smartphone tidy data means.txt", header=TRUE)

###Methodology to create the data set

My intention was to produce a single data set (in the wide style) which contained the both the train and test datasets with rows comprising the participant number, the activity type (text, *not* ID's) and the means of each of the mean and standard deviations. Note: this did **not** also include the Meanfrequencies. This data set was to abide by the principles of a tidy data and has

1. One variable per column
2. Each measurement on a different row

So the steps were:

Pre-requisites - Before the real work was done, firstly the activity names and feature names were loaded, then followed by the training and test data sets. However, just the main data sets and labels were loaded, the raw inertial data sets were ignored as they were not required

1. In each case for the test and train data sets respectively, the subject Id's, activities and measeurments were combined column wise to produce one data set each. The resultant two sets were then combine row wise to leave one overall data set. This full data set then had the column names applied
2. This next step identified the feature columns that had the term "mean()" or "std()" in their column name and then used this to filter out any feature columns that didn't match this
3. So far, the activity value had been an ID, so this was replaced with the descriptive name from the "activity_lables.txt" file
4. The original; feature column names were not particularly descriptive and weren't always consistent, so these were replaced with more structed and readable names - refer to the "Codebook.md" within this repository for further details
5. Finally the last step is to summarise the data by taking the mean of each measurement. This is done for each subject and activity type combination. Thisis now the final tidy data set and is written to the current working directy under the name "Smartphone tidy data means.txt"



