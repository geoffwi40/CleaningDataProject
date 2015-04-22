#########################################################################################
#
# Script to create a tidy data set of smartphone data
# using a source set originally published at:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
# Information on this source data set can be found at:
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#
# The tidy data combines the various source files and then produces a data set 
# that shows the standard deviation and mean (only) for each of the features against
# the subjects and activities for each observation
#
# Note: This script assumes the source data set has already been downloaded and unzipped
# in the current working directory
#
##########################################################################################


########################################################################
#   Pre-requisite 1: Load the reference data - the activity names
#                    and feature names
########################################################################

if(file.exists("UCI HAR Dataset\\activity_labels.txt")) {
    activity_names<-read.table("UCI HAR Dataset\\activity_labels.txt")
} else stop("The UCI HAR Dataset\\activity_labels.txt file was not found")
colnames(activity_names)<-c("ActivityID","ActivityName")

if(file.exists("UCI HAR Dataset\\features.txt")) {
    feature_names<-read.table("UCI HAR Dataset\\features.txt",stringsAsFactors=FALSE)
} else stop("The UCI HAR Dataset\\features.txt file was not found")
colnames(feature_names)<-c("featureNumber","Name")
    
#####################################################################
#   Pre-requisite 2: Load the test and train data set components
#####################################################################

if(file.exists("UCI HAR Dataset\\test\\subject_test.txt")) { 
    test_subjects<-read.table("UCI HAR Dataset\\test\\subject_test.txt")
}else stop("The UCI HAR Dataset\\test\\subject_test.txt file was not found")

if(file.exists("UCI HAR Dataset\\test\\x_test.txt")) {
    test_features<-read.table("UCI HAR Dataset\\test\\x_test.txt")
}else stop("The UCI HAR Dataset\\test\\x_test.txt file was not found")

if(file.exists("UCI HAR Dataset\\test\\y_test.txt")) {
    test_activities<-read.table("UCI HAR Dataset\\test\\y_test.txt")
}else stop("The UCI HAR Dataset\\test\\y_test.txt file was not found")

if(file.exists("UCI HAR Dataset\\train\\subject_train.txt")) {
    train_subjects<-read.table("UCI HAR Dataset\\train\\subject_train.txt")
}else stop("The UCI HAR Dataset\\train\\subject_train.txt file was not found")

if(file.exists("UCI HAR Dataset\\train\\x_train.txt")) {
    train_features<-read.table("UCI HAR Dataset\\train\\x_train.txt")
}else stop("The UCI HAR Dataset\\train\\subject_train.txt file was not found")

if(file.exists("UCI HAR Dataset\\train\\y_train.txt")) {
    train_activities<-read.table("UCI HAR Dataset\\train\\y_train.txt")
}else stop("The UCI HAR Dataset\\train\\y_train.txt file was not found")

##########################################################################
# Step 1: Merge the train and test set ccomponents into single data set  
##########################################################################

test_data<-cbind(test_subjects,test_activities,test_features)
train_data<-cbind(train_subjects,train_activities,train_features)
merged_data<-rbind(test_data,train_data)
colnames(merged_data)<-c("SubjectID","ActivityID",feature_names$Name)

##########################################################################
# Step 2: Reduce to only include the features that are a mean 
#         or standard deviation of a measurement
##########################################################################

# Note the \\ are required, without them the () would mean 
# option characters between them in regex
filtered_feature_id<-grep("mean\\(\\)|std\\(\\)",feature_names$Name)

# Note: The features start at column 3 rather than 1 in the merged data set 
# so we need to offest the entries to account for this

extracted_data<-merged_data[,c(1,2,filtered_feature_id+2)]


################################################################
# Step 3: Replace the Activity ID with a descriptive name
################################################################

#merge in the Activity Names joining using the Activity ID to join
final_data_temp<-merge(extracted_data,activity_names,by="ActivityID",all=TRUE)

#Find the column number for the Activity name (which is now last)
activity_name_column=ncol(final_data_temp)

#reorders the columns and drops the Activity ID (column 1) used as join
final_data<-final_data_temp[,c(2,activity_name_column,3:(activity_name_column-1))] 

####################################################################
# Step 4: Replace the feature names with something more intuitive
#
#  The rename rules will be:
#    1. Replace the 'f' with "FFT"
#    2. Replace the 't' with "Time"
#    3. Remove duplicate "Body" when found
#    4. Replace the "Acc" with "Accel"
#    5. Change "Mean()" and "std()" to Mean and SD respectively
#    6. Remove and "-"
#
####################################################################

#1
new_col_names<-gsub("^f","FFT",colnames(final_data))

#2
new_col_names<-gsub("^t","Time",new_col_names)

#3
new_col_names<-gsub("BodyBody","Body",new_col_names)

#4
new_col_names<-gsub("Acc","Accel",new_col_names)

#5
new_col_names<-gsub("mean\\(\\)","Mean",new_col_names)
new_col_names<-gsub("std\\(\\)","Std",new_col_names)

#6
new_col_names<-gsub("-","",new_col_names)

colnames(final_data)<-new_col_names


###############################################################################
# Step 5: Summarise each variable as a mean grouped by subject and activity
##############################################################################
library(reshape2)

last_col<-ncol(final_data)

#Use the melt() funtion to classify the Subject and Activity as variables and
#the rest as measured vaiables (measurements)
dataMelt<-melt(final_data,id.vars=1:2,measure.vars=3:last_col)

#Now sumarise the data
mean_data<-dcast(dataMelt, SubjectID + ActivityName ~ variable,mean)

#finally add the "Mean_" prefix to the measurement column names for this data set

mean_col_names<-colnames(mean_data)

#careful to skip the first two columns
mean_col_names[3:length(mean_col_names)]<-sapply(mean_col_names[3:length(mean_col_names)], function(x) paste("Mean_",x,sep=""))

colnames(mean_data)<-mean_col_names

#finally write this out to a file
write.table(mean_data,file="Smartphone tidy data means.txt" row.names=FALSE)
