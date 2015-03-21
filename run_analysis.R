run_analysis <- function() {
##
##Download the raw file from the website
##download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile="rawUCI_Data_.zip",method="curl",extra="-k")
##Unzip the file into windows directories
##unzip("rawUCI_Data_.zip")

##The data files of interest are these unzipped files:
##     UCI HAR Dataset/activity_labels.txt              ##activities
##     Features.txt                                     ##column labels
##     ./train/subject_train.txt                        ##subject ID
##     ./train/X_train.txt                              ##train data
##     ./train/Y_train.txt                              ##activity for train data 
##     ./test/subject_text.txt                          ##subject ID
##     ./text/X_test.txt                                ##test data
##     ./text/Y_test.txt                                ##activity for test data
##
##Create data tables from the downloaded data files from test and training subjects
library(LaF)
library(ffbase)
library(miscTools)

X_train.laf <- laf_open_fwf('F:\\coursera\\GettingAndCleaningData\\UCI HAR Dataset\\train\\X_train.txt',column_widths=rep(16,561),column_types=rep('numeric',561))             
X_train <- laf_to_ffdf(X_train.laf, nrows=7352)
X_test.laf <- laf_open_fwf('F:\\coursera\\GettingAndCleaningData\\UCI HAR Dataset\\test\\X_test.txt',column_widths=rep(16,561),column_types=rep('numeric',561))
X_test <- laf_to_ffdf(X_test.laf, nrows=2947)
##Combine the test data with the training data
X_train.test <- rbind(X_train,X_test)

#Create data tables from  activity files for test and training
Y_train <- read.csv("F:\\coursera\\GettingAndCleaningData\\UCI HAR Dataset\\train\\Y_train.txt",sep="",colClasses="numeric",header=FALSE)
Y_test <- read.csv("F:\\coursera\\GettingAndCleaningData\\UCI HAR Dataset\\test\\Y_test.txt",sep="",colClasses="numeric",header=FALSE)
##Combine the activity test data with the training data
Y_train.test <- rbind(Y_train,Y_test)

##Create data tables from subject ID files for test and training
subject_train <- read.csv("F:\\coursera\\GettingAndCleaningData\\UCI HAR Dataset\\train\\subject_train.txt",sep="",colClasses="numeric",header=FALSE)
subject_test <- read.csv("F:\\coursera\\GettingAndCleaningData\\UCI HAR Dataset\\test\\subject_test.txt",sep="",colClasses="numeric",header=FALSE)
##Combine the subject ID test data with the training data
subject_train.test <- rbind(subject_train,subject_test)

##Translate the activity integer values in Y_train.test to descriptive values
##Use the function convert to do the translation
convert <- function(z){
      for (i in 1:nrow(z)) {
        if (as.numeric(z[i,])==1){
            z[i,] <- "WALKING"
        } 
        else {
        if (as.numeric(z[i,])==2) {
            z[i,] <-  "WALKING_UPSTAIRS"
        }     
        else {
        if (as.numeric(z[i,])==3) {
            z[i,] <- "WALKING_DOWNSTAIRS"
        }
        else {
        if (as.numeric(z[i,])==4) {
            z[i,] <- "SITTING"
        }
        else {
        if (as.numeric(z[i,])==5) {
            z[i,] <-  "STANDING"
        }
        else {
        if (as.numeric(z[i,])==6) {
            z[i,] <- "LAYING"
        }
        else {
            stop("error in activity no.")
        }
       } 
      }
     }
    }
   }
  }  ##End of for loop
 z  ##Output the resultant translated array
}  ##End of function

##Call function convert to translate the numeric activity to descriptive text
activity <- convert(Y_train.test)

##Extract the column names for the data from the features file 
data_names <- read.csv("F:\\coursera\\GettingAndCleaningData\\UCI HAR Dataset\\features.txt",sep="",header=FALSE)
##Identify indices of columns that are means or standard deviations
##Create dataset of column names that have mean or std dev in the name
##and set the column names
col_indices <- c(grep("Mean",data_names[,2],ignore.case=TRUE),grep("std",data_names[,2],ignore.case=TRUE))
mean_std_data <- X_train.test[,col_indices]

##Add columns for subject ID and activity to create data set for mean,std by subject Id and activity
##Set column names for the Subject ID, Activity, and the mean/std data columns
mean_std_data_by_sub_act <- cbind(subject_train.test,activity,mean_std_data)
colnames(mean_std_data_by_sub_act) <- c("Subject_ID","Activity",as.character(data_names[[2]][col_indices]))

##Create the data set of averages of the mean and std dev data by subject and activity
##Function ave_mean_std will calculate average of each data column for each subject ID
##then calculate average for each activity
ave_mean_std <- function(d) {
##                          d is the input dataset of means and stdev from the UCI data
##                          m is the resultant dataset
     m <- data.frame()
     dataName <- colnames(d)
     k <- 1                  ##k is counter for data name array
     for (i in 1:30) {       ##by Subject ID
        for (j in 3:88) { 
            m[k,1] = i
            m[k,2] = "ALL" 
            m[k,j]= mean(mean_std_data_by_sub_act[mean_std_data_by_sub_act$Subject_ID==i,j])
         }  ##End of for j
     k <- k + 1
     } ##End of for i

     for (i in c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","STANDING","SITTING","LAYING")) {       ##by Activity
        for (j in 3:88) { 
            m[k,1] = "ALL"
            m[k,2] = i
            m[k,j]= mean(mean_std_data_by_sub_act[mean_std_data_by_sub_act$Activity==i,j])
         }  ##End of for j
     k <- k + 1
     } ##End of for i
  m   ##return the dataset
}  ##End of function

##Call the function ave_mean_std to create the dataset for averages of
##mean and stdev of the HCI data
ave_of_mean_stdev_by_sub_act <- ave_mean_std(mean_std_data_by_sub_act)

##Create colnames for the ave_of_mean_stdev_by_sub_act table
##Base the names on the colnames(mean_std_data_by_sub_act) by prefixing "Ave" 
##Use function avename to create new names
avename <- function (d) {
  orig_names <- colnames(d)   ##use input as basis for new names
  ave_col_names <- list()     ##initialize new names list
  ##keep first and second name same for subject ID and activity
  ave_col_names[1] = "Subject_ID"
  ave_col_names[2] = "Activity"
  for (i in 3:88) {
     ave_col_names[i] <- paste("AVE_of_",orig_names[i],sep="") ##paste AVE in front
  }  ##end of i
 unlist(ave_col_names)   ##return the col names array
}   ##end of function

##Call avename with new table
colnames(ave_of_mean_stdev_by_sub_act) <- avename(mean_std_data_by_sub_act)

##Write out data table ave_of_mean_stdev_by_sub_act to text file
write.table(ave_of_mean_stdev_by_sub_act,file = "ave_of_mean_stdev_by_sub_act.txt",row.names=FALSE,sep=",")


}  ##End of run_analysis function



