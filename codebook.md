
CODEBOOK
For Coursera Course Getting And Cleaning Data
Project Assignment
by Stu Moy

Introduction:
This codebook describes the input data, the processing and the output data 
generated for the following project assignment.
Create one R script called run_analysis.R that does the following. 
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the 
  average of each variable for each activity and each subject.

########################################################################################
########################################################################################

INPUT DATA
The following sections describe the Input data used in this assignment.  The data is from
the website https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
The .zip file was downloaded and unzipped into the working directory with R functions.
The section below describes the dataset, as taken from the dataset readme file.
########################################################################################
########################################################################################
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================
- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

======
Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
########################################################################################
########################################################################################

DATA FORMAT OF INPUT DATA FILES
The following sections describe the format of the input data described above.

########################################################################################
########################################################################################
DESCRIPTION of DATA
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

==================================================================
FILE FORMATS
Filenames: X_train.txt
           X_test.txt
No. of observations X_train.txt: 7352
No. of observations X_test.txt:  2947
No. of columns: 561 (X_train.txt and X_test.txt have the same format)

Column Name                            UNIT                        All field widths = 16 
tBodyAcc-mean()-X                       g (gravitational unit)
tBodyAcc-mean()-Y                       g
tBodyAcc-mean()-Z                       g
tBodyAcc-std()-X                        g
tBodyAcc-std()-Y                        g
tBodyAcc-std()-Z                        g
tBodyAcc-mad()-X                        g
tBodyAcc-mad()-Y                        g
tBodyAcc-mad()-Z                        g
tBodyAcc-max()-X                        g
tBodyAcc-max()-Y                        g
tBodyAcc-max()-Z                        g
tBodyAcc-min()-X                        g
tBodyAcc-min()-Y                        g
tBodyAcc-min()-Z                        g
tBodyAcc-sma()                          g
tBodyAcc-energy()-X                     g
tBodyAcc-energy()-Y                     g
tBodyAcc-energy()-Z                     g
tBodyAcc-iqr()-X                        g
tBodyAcc-iqr()-Y                        g
tBodyAcc-iqr()-Z                        g
tBodyAcc-entropy()-X                    g
tBodyAcc-entropy()-Y                    g
tBodyAcc-entropy()-Z                    g
tBodyAcc-arCoeff()-X,1                  g
tBodyAcc-arCoeff()-X,2                  g
tBodyAcc-arCoeff()-X,3                  g
tBodyAcc-arCoeff()-X,4                  g
tBodyAcc-arCoeff()-Y,1                  g
tBodyAcc-arCoeff()-Y,2                  g
tBodyAcc-arCoeff()-Y,3                  g
tBodyAcc-arCoeff()-Y,4                  g
tBodyAcc-arCoeff()-Z,1                  g
tBodyAcc-arCoeff()-Z,2                  g
tBodyAcc-arCoeff()-Z,3                  g
tBodyAcc-arCoeff()-Z,4                  g
tBodyAcc-correlation()-X,Y              g
tBodyAcc-correlation()-X,Z              g
tBodyAcc-correlation()-Y,Z              g
tGravityAcc-mean()-X                    g
tGravityAcc-mean()-Y                    g
tGravityAcc-mean()-Z                    g
tGravityAcc-std()-X                     g
tGravityAcc-std()-Y                     g
tGravityAcc-std()-Z                     g
tGravityAcc-mad()-X                     g
tGravityAcc-mad()-Y                     g
tGravityAcc-mad()-Z                     g
tGravityAcc-max()-X                     g
tGravityAcc-max()-Y                     g
tGravityAcc-max()-Z                     g
tGravityAcc-min()-X                     g
tGravityAcc-min()-Y                     g
tGravityAcc-min()-Z                     g
tGravityAcc-sma()                       g
tGravityAcc-energy()-X                  g
tGravityAcc-energy()-Y                  g
tGravityAcc-energy()-Z                  g
tGravityAcc-iqr()-X                     g
tGravityAcc-iqr()-Y                     g
tGravityAcc-iqr()-Z                     g
tGravityAcc-entropy()-X                 g
tGravityAcc-entropy()-Y                 g
tGravityAcc-entropy()-Z                 g
tGravityAcc-arCoeff()-X,1               g
tGravityAcc-arCoeff()-X,2               g
tGravityAcc-arCoeff()-X,3               g
tGravityAcc-arCoeff()-X,4               g
tGravityAcc-arCoeff()-Y,1               g
tGravityAcc-arCoeff()-Y,2               g
tGravityAcc-arCoeff()-Y,3               g
tGravityAcc-arCoeff()-Y,4               g
tGravityAcc-arCoeff()-Z,1               g
tGravityAcc-arCoeff()-Z,2               g
tGravityAcc-arCoeff()-Z,3               g
tGravityAcc-arCoeff()-Z,4               g
tGravityAcc-correlation()-X,Y           g
tGravityAcc-correlation()-X,Z           g
tGravityAcc-correlation()-Y,Z           g
tBodyAccJerk-mean()-X                   g
tBodyAccJerk-mean()-Y                   g
tBodyAccJerk-mean()-Z                   g
tBodyAccJerk-std()-X                    g
tBodyAccJerk-std()-Y                    g
tBodyAccJerk-std()-Z                    g
tBodyAccJerk-mad()-X                    g
tBodyAccJerk-mad()-Y                    g
tBodyAccJerk-mad()-Z                    g
tBodyAccJerk-max()-X                    g
tBodyAccJerk-max()-Y                    g
tBodyAccJerk-max()-Z                    g
tBodyAccJerk-min()-X                    g
tBodyAccJerk-min()-Y                    g
tBodyAccJerk-min()-Z                    g
tBodyAccJerk-sma()                      g
tBodyAccJerk-energy()-X                 g
tBodyAccJerk-energy()-Y                 g
tBodyAccJerk-energy()-Z                 g
tBodyAccJerk-iqr()-X                    g
tBodyAccJerk-iqr()-Y                    g
tBodyAccJerk-iqr()-Z                    g
tBodyAccJerk-entropy()-X                g
tBodyAccJerk-entropy()-Y                g
tBodyAccJerk-entropy()-Z                g
tBodyAccJerk-arCoeff()-X,1              g
tBodyAccJerk-arCoeff()-X,2              g
tBodyAccJerk-arCoeff()-X,3              g
tBodyAccJerk-arCoeff()-X,4              g
tBodyAccJerk-arCoeff()-Y,1              g
tBodyAccJerk-arCoeff()-Y,2              g
tBodyAccJerk-arCoeff()-Y,3              g
tBodyAccJerk-arCoeff()-Y,4              g
tBodyAccJerk-arCoeff()-Z,1              g
tBodyAccJerk-arCoeff()-Z,2              g
tBodyAccJerk-arCoeff()-Z,3              g
tBodyAccJerk-arCoeff()-Z,4              g
tBodyAccJerk-correlation()-X,Y          g
tBodyAccJerk-correlation()-X,Z          g
tBodyAccJerk-correlation()-Y,Z          g
tBodyGyro-mean()-X                      radians/second
tBodyGyro-mean()-Y                      radians/second
tBodyGyro-mean()-Z                      radians/second
tBodyGyro-std()-X                       radians/second
tBodyGyro-std()-Y                       radians/second
tBodyGyro-std()-Z                       radians/second
tBodyGyro-mad()-X                       radians/second
tBodyGyro-mad()-Y                       radians/second
tBodyGyro-mad()-Z                       radians/second
tBodyGyro-max()-X                       radians/second
tBodyGyro-max()-Y                       radians/second
tBodyGyro-max()-Z                       radians/second
tBodyGyro-min()-X                       radians/second
tBodyGyro-min()-Y                       radians/second
tBodyGyro-min()-Z                       radians/second
tBodyGyro-sma()                         radians/second
tBodyGyro-energy()-X                    radians/second
tBodyGyro-energy()-Y                    radians/second
tBodyGyro-energy()-Z                    radians/second
tBodyGyro-iqr()-X                       radians/second
tBodyGyro-iqr()-Y                       radians/second
tBodyGyro-iqr()-Z                       radians/second
tBodyGyro-entropy()-X                   radians/second
tBodyGyro-entropy()-Y                   radians/second
tBodyGyro-entropy()-Z                   radians/second
tBodyGyro-arCoeff()-X,1                 radians/second
tBodyGyro-arCoeff()-X,2                 radians/second
tBodyGyro-arCoeff()-X,3                 radians/second
tBodyGyro-arCoeff()-X,4                 radians/second
tBodyGyro-arCoeff()-Y,1                 radians/second
tBodyGyro-arCoeff()-Y,2                 radians/second
tBodyGyro-arCoeff()-Y,3                 radians/second
tBodyGyro-arCoeff()-Y,4                 radians/second
tBodyGyro-arCoeff()-Z,1                 radians/second
tBodyGyro-arCoeff()-Z,2                 radians/second
tBodyGyro-arCoeff()-Z,3                 radians/second
tBodyGyro-arCoeff()-Z,4                 radians/second
tBodyGyro-correlation()-X,Y             radians/second
tBodyGyro-correlation()-X,Z             radians/second
tBodyGyro-correlation()-Y,Z             radians/second
tBodyGyroJerk-mean()-X                  radians/second
tBodyGyroJerk-mean()-Y                  radians/second
tBodyGyroJerk-mean()-Z                  radians/second
tBodyGyroJerk-std()-X                   radians/second
tBodyGyroJerk-std()-Y                   radians/second
tBodyGyroJerk-std()-Z                   radians/second
tBodyGyroJerk-mad()-X                   radians/second
tBodyGyroJerk-mad()-Y                   radians/second
tBodyGyroJerk-mad()-Z                   radians/second
tBodyGyroJerk-max()-X                   radians/second
tBodyGyroJerk-max()-Y                   radians/second
tBodyGyroJerk-max()-Z                   radians/second
tBodyGyroJerk-min()-X                   radians/second
tBodyGyroJerk-min()-Y                   radians/second
tBodyGyroJerk-min()-Z                   radians/second
tBodyGyroJerk-sma()                     radians/second
tBodyGyroJerk-energy()-X                radians/second
tBodyGyroJerk-energy()-Y                radians/second
tBodyGyroJerk-energy()-Z                radians/second
tBodyGyroJerk-iqr()-X                   radians/second
tBodyGyroJerk-iqr()-Y                   radians/second
tBodyGyroJerk-iqr()-Z                   radians/second
tBodyGyroJerk-entropy()-X               radians/second
tBodyGyroJerk-entropy()-Y               radians/second
tBodyGyroJerk-entropy()-Z               radians/second
tBodyGyroJerk-arCoeff()-X,1             radians/second
tBodyGyroJerk-arCoeff()-X,2             radians/second
tBodyGyroJerk-arCoeff()-X,3             radians/second
tBodyGyroJerk-arCoeff()-X,4             radians/second
tBodyGyroJerk-arCoeff()-Y,1             radians/second
tBodyGyroJerk-arCoeff()-Y,2             radians/second
tBodyGyroJerk-arCoeff()-Y,3             radians/second
tBodyGyroJerk-arCoeff()-Y,4             radians/second
tBodyGyroJerk-arCoeff()-Z,1             radians/second
tBodyGyroJerk-arCoeff()-Z,2             radians/second
tBodyGyroJerk-arCoeff()-Z,3             radians/second
tBodyGyroJerk-arCoeff()-Z,4             radians/second
tBodyGyroJerk-correlation()-X,Y         radians/second
tBodyGyroJerk-correlation()-X,Z         radians/second
tBodyGyroJerk-correlation()-Y,Z         radians/second
tBodyAccMag-mean()                      g
tBodyAccMag-std()                       g
tBodyAccMag-mad()                       g
tBodyAccMag-max()                       g
tBodyAccMag-min()                       g
tBodyAccMag-sma()                       g
tBodyAccMag-energy()                    g
tBodyAccMag-iqr()                       g
tBodyAccMag-entropy()                   g
tBodyAccMag-arCoeff()1                  g
tBodyAccMag-arCoeff()2                  g
tBodyAccMag-arCoeff()3                  g
tBodyAccMag-arCoeff()4                  g
tGravityAccMag-mean()                   g
tGravityAccMag-std()                    g
tGravityAccMag-mad()                    g
tGravityAccMag-max()                    g
tGravityAccMag-min()                    g
tGravityAccMag-sma()                    g
tGravityAccMag-energy()                 g
tGravityAccMag-iqr()                    g
tGravityAccMag-entropy()                g
tGravityAccMag-arCoeff()1               g
tGravityAccMag-arCoeff()2               g
tGravityAccMag-arCoeff()3               g
tGravityAccMag-arCoeff()4               g
tBodyAccJerkMag-mean()                  g
tBodyAccJerkMag-std()                   g
tBodyAccJerkMag-mad()                   g
tBodyAccJerkMag-max()                   g
tBodyAccJerkMag-min()                   g
tBodyAccJerkMag-sma()                   g
tBodyAccJerkMag-energy()                g
tBodyAccJerkMag-iqr()                   g
tBodyAccJerkMag-entropy()               g
tBodyAccJerkMag-arCoeff()1              g
tBodyAccJerkMag-arCoeff()2              g
tBodyAccJerkMag-arCoeff()3              g
tBodyAccJerkMag-arCoeff()4              g
tBodyGyroMag-mean()                     radians/second
tBodyGyroMag-std()                      radians/second
tBodyGyroMag-mad()                      radians/second
tBodyGyroMag-max()                      radians/second
tBodyGyroMag-min()                      radians/second
tBodyGyroMag-sma()                      radians/second
tBodyGyroMag-energy()                   radians/second
tBodyGyroMag-iqr()                      radians/second
tBodyGyroMag-entropy()                  radians/second
tBodyGyroMag-arCoeff()1                 radians/second
tBodyGyroMag-arCoeff()2                 radians/second
tBodyGyroMag-arCoeff()3                 radians/second
tBodyGyroMag-arCoeff()4                 radians/second
tBodyGyroJerkMag-mean()                 radians/second
tBodyGyroJerkMag-std()                  radians/second
tBodyGyroJerkMag-mad()                  radians/second
tBodyGyroJerkMag-max()                  radians/second
tBodyGyroJerkMag-min()                  radians/second
tBodyGyroJerkMag-sma()                  radians/second
tBodyGyroJerkMag-energy()               radians/second
tBodyGyroJerkMag-iqr()                  radians/second
tBodyGyroJerkMag-entropy()              radians/second
tBodyGyroJerkMag-arCoeff()1             radians/second
tBodyGyroJerkMag-arCoeff()2             radians/second
tBodyGyroJerkMag-arCoeff()3             radians/second
tBodyGyroJerkMag-arCoeff()4             radians/second
fBodyAcc-mean()-X                       g
fBodyAcc-mean()-Y                       g
fBodyAcc-mean()-Z                       g
fBodyAcc-std()-X                        g
fBodyAcc-std()-Y                        g
fBodyAcc-std()-Z                        g
fBodyAcc-mad()-X                        g
fBodyAcc-mad()-Y                        g
fBodyAcc-mad()-Z                        g
fBodyAcc-max()-X                        g
fBodyAcc-max()-Y                        g
fBodyAcc-max()-Z                        g
fBodyAcc-min()-X                        g
fBodyAcc-min()-Y                        g
fBodyAcc-min()-Z                        g
fBodyAcc-sma()                          g
fBodyAcc-energy()-X                     g
fBodyAcc-energy()-Y                     g
fBodyAcc-energy()-Z                     g
fBodyAcc-iqr()-X                        g
fBodyAcc-iqr()-Y                        g
fBodyAcc-iqr()-Z                        g
fBodyAcc-entropy()-X                    g
fBodyAcc-entropy()-Y                    g
fBodyAcc-entropy()-Z                    g
fBodyAcc-maxInds-X                      g
fBodyAcc-maxInds-Y                      g
fBodyAcc-maxInds-Z                      g
fBodyAcc-meanFreq()-X                   g
fBodyAcc-meanFreq()-Y                   g
fBodyAcc-meanFreq()-Z                   g
fBodyAcc-skewness()-X                   g
fBodyAcc-kurtosis()-X                   g
fBodyAcc-skewness()-Y                   g
fBodyAcc-kurtosis()-Y                   g
fBodyAcc-skewness()-Z                   g
fBodyAcc-kurtosis()-Z                   g
fBodyAcc-bandsEnergy()-1,8              g
fBodyAcc-bandsEnergy()-9,16             g
fBodyAcc-bandsEnergy()-17,24            g
fBodyAcc-bandsEnergy()-25,32            g
fBodyAcc-bandsEnergy()-33,40            g
fBodyAcc-bandsEnergy()-41,48            g
fBodyAcc-bandsEnergy()-49,56            g
fBodyAcc-bandsEnergy()-57,64            g
fBodyAcc-bandsEnergy()-1,16             g
fBodyAcc-bandsEnergy()-17,32            g
fBodyAcc-bandsEnergy()-33,48            g
fBodyAcc-bandsEnergy()-49,64            g
fBodyAcc-bandsEnergy()-1,24             g
fBodyAcc-bandsEnergy()-25,48            g
fBodyAcc-bandsEnergy()-1,8              g
fBodyAcc-bandsEnergy()-9,16             g
fBodyAcc-bandsEnergy()-17,24            g
fBodyAcc-bandsEnergy()-25,32            g
fBodyAcc-bandsEnergy()-33,40            g
fBodyAcc-bandsEnergy()-41,48            g
fBodyAcc-bandsEnergy()-49,56            g
fBodyAcc-bandsEnergy()-57,64            g
fBodyAcc-bandsEnergy()-1,16             g
fBodyAcc-bandsEnergy()-17,32            g
fBodyAcc-bandsEnergy()-33,48            g
fBodyAcc-bandsEnergy()-49,64            g
fBodyAcc-bandsEnergy()-1,24             g
fBodyAcc-bandsEnergy()-25,48            g
fBodyAcc-bandsEnergy()-1,8              g
fBodyAcc-bandsEnergy()-9,16             g
fBodyAcc-bandsEnergy()-17,24            g
fBodyAcc-bandsEnergy()-25,32            g
fBodyAcc-bandsEnergy()-33,40            g
fBodyAcc-bandsEnergy()-41,48            g
fBodyAcc-bandsEnergy()-49,56            g
fBodyAcc-bandsEnergy()-57,64            g
fBodyAcc-bandsEnergy()-1,16             g
fBodyAcc-bandsEnergy()-17,32            g
fBodyAcc-bandsEnergy()-33,48            g
fBodyAcc-bandsEnergy()-49,64            g
fBodyAcc-bandsEnergy()-1,24             g
fBodyAcc-bandsEnergy()-25,48            g
fBodyAccJerk-mean()-X                   g
fBodyAccJerk-mean()-Y                   g
fBodyAccJerk-mean()-Z                   g
fBodyAccJerk-std()-X                    g
fBodyAccJerk-std()-Y                    g
fBodyAccJerk-std()-Z                    g
fBodyAccJerk-mad()-X                    g
fBodyAccJerk-mad()-Y                    g
fBodyAccJerk-mad()-Z                    g
fBodyAccJerk-max()-X                    g
fBodyAccJerk-max()-Y                    g
fBodyAccJerk-max()-Z                    g
fBodyAccJerk-min()-X                    g
fBodyAccJerk-min()-Y                    g
fBodyAccJerk-min()-Z                    g
fBodyAccJerk-sma()                      g
fBodyAccJerk-energy()-X                 g
fBodyAccJerk-energy()-Y                 g
fBodyAccJerk-energy()-Z                 g
fBodyAccJerk-iqr()-X                    g
fBodyAccJerk-iqr()-Y                    g
fBodyAccJerk-iqr()-Z                    g
fBodyAccJerk-entropy()-X                g
fBodyAccJerk-entropy()-Y                g
fBodyAccJerk-entropy()-Z                g
fBodyAccJerk-maxInds-X                  g
fBodyAccJerk-maxInds-Y                  g
fBodyAccJerk-maxInds-Z                  g
fBodyAccJerk-meanFreq()-X               g
fBodyAccJerk-meanFreq()-Y               g
fBodyAccJerk-meanFreq()-Z               g
fBodyAccJerk-skewness()-X               g
fBodyAccJerk-kurtosis()-X               g
fBodyAccJerk-skewness()-Y               g
fBodyAccJerk-kurtosis()-Y               g
fBodyAccJerk-skewness()-Z               g
fBodyAccJerk-kurtosis()-Z               g
fBodyAccJerk-bandsEnergy()-1,8          g
fBodyAccJerk-bandsEnergy()-9,16         g
fBodyAccJerk-bandsEnergy()-17,24        g
fBodyAccJerk-bandsEnergy()-25,32        g
fBodyAccJerk-bandsEnergy()-33,40        g
fBodyAccJerk-bandsEnergy()-41,48        g
fBodyAccJerk-bandsEnergy()-49,56        g
fBodyAccJerk-bandsEnergy()-57,64        g
fBodyAccJerk-bandsEnergy()-1,16         g
fBodyAccJerk-bandsEnergy()-17,32        g
fBodyAccJerk-bandsEnergy()-33,48        g
fBodyAccJerk-bandsEnergy()-49,64        g
fBodyAccJerk-bandsEnergy()-1,24         g
fBodyAccJerk-bandsEnergy()-25,48        g
fBodyAccJerk-bandsEnergy()-1,8          g
fBodyAccJerk-bandsEnergy()-9,16         g
fBodyAccJerk-bandsEnergy()-17,24        g
fBodyAccJerk-bandsEnergy()-25,32        g
fBodyAccJerk-bandsEnergy()-33,40        g
fBodyAccJerk-bandsEnergy()-41,48        g
fBodyAccJerk-bandsEnergy()-49,56        g
fBodyAccJerk-bandsEnergy()-57,64        g
fBodyAccJerk-bandsEnergy()-1,16         g
fBodyAccJerk-bandsEnergy()-17,32        g
fBodyAccJerk-bandsEnergy()-33,48        g
fBodyAccJerk-bandsEnergy()-49,64        g
fBodyAccJerk-bandsEnergy()-1,24         g
fBodyAccJerk-bandsEnergy()-25,48        g
fBodyAccJerk-bandsEnergy()-1,8          g
fBodyAccJerk-bandsEnergy()-9,16         g
fBodyAccJerk-bandsEnergy()-17,24        g
fBodyAccJerk-bandsEnergy()-25,32        g
fBodyAccJerk-bandsEnergy()-33,40        g
fBodyAccJerk-bandsEnergy()-41,48        g
fBodyAccJerk-bandsEnergy()-49,56        g
fBodyAccJerk-bandsEnergy()-57,64        g
fBodyAccJerk-bandsEnergy()-1,16         g
fBodyAccJerk-bandsEnergy()-17,32        g
fBodyAccJerk-bandsEnergy()-33,48        g
fBodyAccJerk-bandsEnergy()-49,64        g
fBodyAccJerk-bandsEnergy()-1,24         g
fBodyAccJerk-bandsEnergy()-25,48        g
fBodyGyro-mean()-X                      radians/second
fBodyGyro-mean()-Y                      radians/second
fBodyGyro-mean()-Z                      radians/second
fBodyGyro-std()-X                       radians/second
fBodyGyro-std()-Y                       radians/second
fBodyGyro-std()-Z                       radians/second
fBodyGyro-mad()-X                       radians/second
fBodyGyro-mad()-Y                       radians/second
fBodyGyro-mad()-Z                       radians/second
fBodyGyro-max()-X                       radians/second
fBodyGyro-max()-Y                       radians/second
fBodyGyro-max()-Z                       radians/second
fBodyGyro-min()-X                       radians/second
fBodyGyro-min()-Y                       radians/second
fBodyGyro-min()-Z                       radians/second
fBodyGyro-sma()                         radians/second
fBodyGyro-energy()-X                    radians/second
fBodyGyro-energy()-Y                    radians/second
fBodyGyro-energy()-Z                    radians/second
fBodyGyro-iqr()-X                       radians/second
fBodyGyro-iqr()-Y                       radians/second
fBodyGyro-iqr()-Z                       radians/second
fBodyGyro-entropy()-X                   radians/second
fBodyGyro-entropy()-Y                   radians/second
fBodyGyro-entropy()-Z                   radians/second
fBodyGyro-maxInds-X                     radians/second
fBodyGyro-maxInds-Y                     radians/second
fBodyGyro-maxInds-Z                     radians/second
fBodyGyro-meanFreq()-X                  radians/second
fBodyGyro-meanFreq()-Y                  radians/second
fBodyGyro-meanFreq()-Z                  radians/second
fBodyGyro-skewness()-X                  radians/second
fBodyGyro-kurtosis()-X                  radians/second
fBodyGyro-skewness()-Y                  radians/second
fBodyGyro-kurtosis()-Y                  radians/second
fBodyGyro-skewness()-Z                  radians/second
fBodyGyro-kurtosis()-Z                  radians/second
fBodyGyro-bandsEnergy()-1,8             radians/second
fBodyGyro-bandsEnergy()-9,16            radians/second
fBodyGyro-bandsEnergy()-17,24           radians/second
fBodyGyro-bandsEnergy()-25,32           radians/second
fBodyGyro-bandsEnergy()-33,40           radians/second
fBodyGyro-bandsEnergy()-41,48           radians/second
fBodyGyro-bandsEnergy()-49,56           radians/second
fBodyGyro-bandsEnergy()-57,64           radians/second
fBodyGyro-bandsEnergy()-1,16            radians/second
fBodyGyro-bandsEnergy()-17,32           radians/second
fBodyGyro-bandsEnergy()-33,48           radians/second
fBodyGyro-bandsEnergy()-49,64           radians/second
fBodyGyro-bandsEnergy()-1,24            radians/second
fBodyGyro-bandsEnergy()-25,48           radians/second
fBodyGyro-bandsEnergy()-1,8             radians/second
fBodyGyro-bandsEnergy()-9,16            radians/second
fBodyGyro-bandsEnergy()-17,24           radians/second
fBodyGyro-bandsEnergy()-25,32           radians/second
fBodyGyro-bandsEnergy()-33,40           radians/second
fBodyGyro-bandsEnergy()-41,48           radians/second
fBodyGyro-bandsEnergy()-49,56           radians/second
fBodyGyro-bandsEnergy()-57,64           radians/second
fBodyGyro-bandsEnergy()-1,16            radians/second
fBodyGyro-bandsEnergy()-17,32           radians/second
fBodyGyro-bandsEnergy()-33,48           radians/second
fBodyGyro-bandsEnergy()-49,64           radians/second
fBodyGyro-bandsEnergy()-1,24            radians/second
fBodyGyro-bandsEnergy()-25,48           radians/second
fBodyGyro-bandsEnergy()-1,8             radians/second
fBodyGyro-bandsEnergy()-9,16            radians/second
fBodyGyro-bandsEnergy()-17,24           radians/second
fBodyGyro-bandsEnergy()-25,32           radians/second
fBodyGyro-bandsEnergy()-33,40           radians/second
fBodyGyro-bandsEnergy()-41,48           radians/second
fBodyGyro-bandsEnergy()-49,56           radians/second
fBodyGyro-bandsEnergy()-57,64           radians/second
fBodyGyro-bandsEnergy()-1,16            radians/second
fBodyGyro-bandsEnergy()-17,32           radians/second
fBodyGyro-bandsEnergy()-33,48           radians/second
fBodyGyro-bandsEnergy()-49,64           radians/second
fBodyGyro-bandsEnergy()-1,24            radians/second
fBodyGyro-bandsEnergy()-25,48           radians/second
fBodyAccMag-mean()                      g
fBodyAccMag-std()                       g
fBodyAccMag-mad()                       g
fBodyAccMag-max()                       g
fBodyAccMag-min()                       g
fBodyAccMag-sma()                       g
fBodyAccMag-energy()                    g
fBodyAccMag-iqr()                       g
fBodyAccMag-entropy()                   g
fBodyAccMag-maxInds                     g
fBodyAccMag-meanFreq()                  g
fBodyAccMag-skewness()                  g
fBodyAccMag-kurtosis()                  g
fBodyBodyAccJerkMag-mean()              g
fBodyBodyAccJerkMag-std()               g
fBodyBodyAccJerkMag-mad()               g
fBodyBodyAccJerkMag-max()               g
fBodyBodyAccJerkMag-min()               g
fBodyBodyAccJerkMag-sma()               g
fBodyBodyAccJerkMag-energy()            g
fBodyBodyAccJerkMag-iqr()               g
fBodyBodyAccJerkMag-entropy()           g
fBodyBodyAccJerkMag-maxInds             g
fBodyBodyAccJerkMag-meanFreq()          g
fBodyBodyAccJerkMag-skewness()          g
fBodyBodyAccJerkMag-kurtosis()          g
fBodyBodyGyroMag-mean()                 radians/second
fBodyBodyGyroMag-std()                  radians/second
fBodyBodyGyroMag-mad()                  radians/second
fBodyBodyGyroMag-max()                  radians/second
fBodyBodyGyroMag-min()                  radians/second
fBodyBodyGyroMag-sma()                  radians/second
fBodyBodyGyroMag-energy()               radians/second
fBodyBodyGyroMag-iqr()                  radians/second
fBodyBodyGyroMag-entropy()              radians/second
fBodyBodyGyroMag-maxInds                radians/second
fBodyBodyGyroMag-meanFreq()             radians/second
fBodyBodyGyroMag-skewness()             radians/second
fBodyBodyGyroMag-kurtosis()             radians/second
fBodyBodyGyroJerkMag-mean()             radians/second
fBodyBodyGyroJerkMag-std()              radians/second
fBodyBodyGyroJerkMag-mad()              radians/second
fBodyBodyGyroJerkMag-max()              radians/second
fBodyBodyGyroJerkMag-min()              radians/second
fBodyBodyGyroJerkMag-sma()              radians/second
fBodyBodyGyroJerkMag-energy()           radians/second
fBodyBodyGyroJerkMag-iqr()              radians/second
fBodyBodyGyroJerkMag-entropy()          radians/second
fBodyBodyGyroJerkMag-maxInds            radians/second
fBodyBodyGyroJerkMag-meanFreq()         radians/second
fBodyBodyGyroJerkMag-skewness()         radians/second
fBodyBodyGyroJerkMag-kurtosis()         radians/second
angle(tBodyAccMean,gravity)             radians
angle(tBodyAccJerkMean),gravityMean)    radians
angle(tBodyGyroMean,gravityMean)        radians
angle(tBodyGyroJerkMean,gravityMean)    radians
angle(X,gravityMean)                    radians
angle(Y,gravityMean)                    radians
angle(Z,gravityMean)                    radians


==================================================================
FILE FORMATS
Filenames: subject_train.txt
           subject_test.txt
No. of observations subject_train.txt: 7352
No. of observations subject_test.txt:  2947
No. of columns: 561 (subject_train.txt and subject_test.txt have the same format)

COLUMN NAME     UNIT                       
subject 	Integer from 1 to 30

==================================================================
FILE FORMATS
Filenames: activity_labels.txt

No. of rows: 6

COLUMN NAME     UNIT 
activity ID	integer from 1 to 6                      
activity	text string with values ("WALKING", "WALKING_UPSTAIRS",
                "WALKING_DOWNSTAIRS","STANDING","SITTING","LAYING")

########################################################################################
########################################################################################

DATA PROCESSING DESCRIPTION
The data in the input files was processed by function run_analysis.R.
run_analysis.R is included in the package of files.
See README.txt for detailed description of the script processing.
The purpose of run_analysis.R was to meet the following objectives of the project
assignment as follows:
Create one R script called run_analysis.R that does the following. 
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the 
  average of each variable for each activity and each subject.

########################################################################################
########################################################################################

DATA FORMAT of OUTPUT FILES
The data in the output files is a result of processing by function run_analysis.R.

########################################################################################
########################################################################################
FILE FORMAT
File Description: Table of averages of the mean and std dev. of the measurements
                  by subject ID and by activity
Filename: ave_of_mean_stdev_by_sub_act.txt
No. of observations: 36
No. of columns: 90 

COLUMN NAME                                            UNIT                       
Subject_ID                                             Integer 1 - 30, "ALL"
Activity                               text string with values ("WALKING", "WALKING_UPSTAIRS",
                                       "WALKING_DOWNSTAIRS","STANDING","SITTING","LAYING","ALL")
 AVE_of_tBodyAcc-mean()-X	                    	g (gravitational unit)
 AVE_of_tBodyAcc-mean()-Y	                    	g
 AVE_of_tBodyAcc-mean()-Z	                    	g
 AVE_of_tGravityAcc-mean()-X	                 	g
 AVE_of_tGravityAcc-mean()-Y	                 	g
 AVE_of_tGravityAcc-mean()-Z	                 	g
 AVE_of_tBodyAccJerk-mean()-X	                	g
 AVE_of_tBodyAccJerk-mean()-Y	                	g
 AVE_of_tBodyAccJerk-mean()-Z	                	g
 AVE_of_tBodyGyro-mean()-X	                    	radians/sec
 AVE_of_tBodyGyro-mean()-Y	                    	radians/sec
 AVE_of_tBodyGyro-mean()-Z	                    	radians/sec
 AVE_of_tBodyGyroJerk-mean()-X	               	   	radians/sec
 AVE_of_tBodyGyroJerk-mean()-Y	               	   	radians/sec
 AVE_of_tBodyGyroJerk-mean()-Z	               	   	radians/sec
 AVE_of_tBodyAccMag-mean()	                    	g
 AVE_of_tGravityAccMag-mean()	                	g
 AVE_of_tBodyAccJerkMag-mean()	               	   	g
 AVE_of_tBodyGyroMag-mean()	                    	radians/sec
 AVE_of_tBodyGyroJerkMag-mean()	              	   	radians/sec
 AVE_of_fBodyAcc-mean()-X	                    	g
 AVE_of_fBodyAcc-mean()-Y	                    	g
 AVE_of_fBodyAcc-mean()-Z	                    	g
 AVE_of_fBodyAcc-meanFreq()-X	                	g
 AVE_of_fBodyAcc-meanFreq()-Y	                	g
 AVE_of_fBodyAcc-meanFreq()-Z	                	g
 AVE_of_fBodyAccJerk-mean()-X	                	g
 AVE_of_fBodyAccJerk-mean()-Y	                	g
 AVE_of_fBodyAccJerk-mean()-Z	                	g
 AVE_of_fBodyAccJerk-meanFreq()-X	            	g
 AVE_of_fBodyAccJerk-meanFreq()-Y	            	g
 AVE_of_fBodyAccJerk-meanFreq()-Z	            	g
 AVE_of_fBodyGyro-mean()-X	                    	radians/sec
 AVE_of_fBodyGyro-mean()-Y	                    	radians/sec
 AVE_of_fBodyGyro-mean()-Z	                    	radians/sec
 AVE_of_fBodyGyro-meanFreq()-X	               	   	radians/sec
 AVE_of_fBodyGyro-meanFreq()-Y	                  	radians/sec
 AVE_of_fBodyGyro-meanFreq()-Z	               	   	radians/sec
 AVE_of_fBodyAccMag-mean()	                    	g
 AVE_of_fBodyAccMag-meanFreq()	               	   	g
 AVE_of_fBodyBodyAccJerkMag-mean()	            	g
 AVE_of_fBodyBodyAccJerkMag-meanFreq()	       	   	g
 AVE_of_fBodyBodyGyroMag-mean()	              	   	radians/sec
 AVE_of_fBodyBodyGyroMag-meanFreq()	            	radians/sec
 AVE_of_fBodyBodyGyroJerkMag-mean()	            	radians/sec
 AVE_of_fBodyBodyGyroJerkMag-meanFreq()	      	   	radians/sec
 AVE_of_angle(tBodyAccMean,gravity)	            	radians
 AVE_of_angle(tBodyAccJerkMean),gravityMean)	 	radians
 AVE_of_angle(tBodyGyroMean,gravityMean)	     	radians
 AVE_of_angle(tBodyGyroJerkMean,gravityMean)	 	radians
 AVE_of_angle(X,gravityMean)	                 	radians
 AVE_of_angle(Y,gravityMean)	                 	radians
 AVE_of_angle(Z,gravityMean)	                 	radians
 AVE_of_tBodyAcc-std()-X	                     	g
 AVE_of_tBodyAcc-std()-Y	                     	g
 AVE_of_tBodyAcc-std()-Z	                     	g
 AVE_of_tGravityAcc-std()-X	                    	g
 AVE_of_tGravityAcc-std()-Y	                    	g
 AVE_of_tGravityAcc-std()-Z	                    	g
 AVE_of_tBodyAccJerk-std()-X	                 	g
 AVE_of_tBodyAccJerk-std()-Y	                 	g
 AVE_of_tBodyAccJerk-std()-Z	                 	g
 AVE_of_tBodyGyro-std()-X	                    	radians/sec
 AVE_of_tBodyGyro-std()-Y	                    	radians/sec
 AVE_of_tBodyGyro-std()-Z	                    	radians/sec
 AVE_of_tBodyGyroJerk-std()-X	                	radians/sec
 AVE_of_tBodyGyroJerk-std()-Y	                	radians/sec
 AVE_of_tBodyGyroJerk-std()-Z	                	radians/sec
 AVE_of_tBodyAccMag-std()	                    	g
 AVE_of_tGravityAccMag-std()	                 	g
 AVE_of_tBodyAccJerkMag-std()	                	g
 AVE_of_tBodyGyroMag-std()	                    	radians/sec
 AVE_of_tBodyGyroJerkMag-std()	               	   	radians/sec
 AVE_of_fBodyAcc-std()-X	                     	g
 AVE_of_fBodyAcc-std()-Y	                     	g
 AVE_of_fBodyAcc-std()-Z	                     	g
 AVE_of_fBodyAccJerk-std()-X	                 	g
 AVE_of_fBodyAccJerk-std()-Y	                 	g
 AVE_of_fBodyAccJerk-std()-Z	                 	g
 AVE_of_fBodyGyro-std()-X	                    	radians/sec
 AVE_of_fBodyGyro-std()-Y	                    	radians/sec
 AVE_of_fBodyGyro-std()-Z	                    	radians/sec
 AVE_of_fBodyAccMag-std()	                    	g
 AVE_of_fBodyBodyAccJerkMag-std()	            	g
 AVE_of_fBodyBodyGyroMag-std()	               	   	radians/sec
 AVE_of_fBodyBodyGyroJerkMag-std()	           	    radians/sec



########################################################################################
########################################################################################

















