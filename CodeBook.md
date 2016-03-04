{\rtf1\ansi\ansicpg1252\cocoartf1404\cocoasubrtf340
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 Code Book for Getting and Cleaning Data Course Project\
\
The purpose of this project was to extract data related to measurements taken from the Samsung Galaxy S phone. Measurements were separated into a test data set and a training data set with a variety of subjects. These measurements were taken to assess various spatial movements. Many were 3-axial measurements. 3-axial measurements were separated into their X, Y and Z components.  Mean and standard deviation values were also derived for the overall measurement values. All measurements were normalized to values between -1 and 1.\
\
This data set contains average values for all the mean and standard deviation values for each of the measurements described above. Each of the averages are grouped by an activity (Activity) performed by a person (Subject).\
\
Measurement variable naming convention is as follows:\
\
<Measurement type (prefixed by \'93t\'94 for time domain measurements and \'93f\'94 for frequency-domain measurements)>_<type of value - standard deviation (denoted as std) or mean (denoted as mean)>_<axis (for any 3-axial measurement. Denoted as X, Y or Z)>\
\
The variables are as follows:\
\
Subject - subject using the phone. Denoted by a unique numeric key.\
\
Activity - describes the type of activity. There are six possible activities (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS and WALKING_UPSTAIRS). The data when it was initially read in had a mapping between a numeric value (between 1 and 6) and the activity. Transformations involved merging the Activity description to the data set, matching on the activity\'92s numeric value.\
\
tBodyAcc_mean_X - average of the mean of all time domain body acceleration measurements along the X-axis\
tBodyAcc_mean_Y - average of the mean of all time domain body acceleration measurements along the Y-axis\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 tBodyAcc_mean_Z - average of the mean of all time domain body acceleration measurements along the Z-axis\
\
tBodyAcc_std_X - average of the standard deviations of all time domain body acceleration measurements along the X-axis\
tBodyAcc_std_Y - average of the standard deviations of all time domain body acceleration measurements along the Y-axis\
tBodyAcc_std_Z - average of the standard deviations of all time domain body acceleration measurements along the Z-axis\
\
tGravityAcc_mean_X - average of the mean of all time domain gravitational acceleration measurements along the X-axis\
tGravityAcc_mean_Y - average of the mean of all time domain gravitational acceleration measurements along the Y-axis\
tGravityAcc_mean_Z - average of the mean of all time domain gravitational acceleration measurements along the Z-axis\
\
tGravityAcc_std_X - average of the standard deviations of all time domain gravitational acceleration measurements along the X-axis\
tGravityAcc_std_Y - average of the standard deviations of all time domain gravitational acceleration measurements along the Y-axis\
tGravityAcc_std_Z - average of the standard deviations of all time domain gravitational acceleration measurements along the Z-axis\
\
tBodyAccJerk_mean_X - average of the mean of all time domain body jerk acceleration measurements along the X-axis\
tBodyAccJerk_mean_Y - average of the mean of all time domain body jerk acceleration measurements along the Y-axis\
tBodyAccJerk_mean_Z - average of the mean of all time domain body jerk acceleration measurements along the Z-axis\
\
tBodyAccJerk_std_X - average of the standard deviations of all time domain body jerk acceleration measurements along the X-axis\
tBodyAccJerk_std_Y - average of the standard deviations of all time domain body jerk acceleration  measurements along the Y-axis\
tBodyAccJerk_std_Z - average of the standard deviations of all time domain body jerk acceleration measurements along the Z-axis\
\
tBodyGyro_mean_X - average of the mean of all time domain body gyration measurements along the X-axis\
tBodyGyro_mean_Y - average of the mean of all time domain body gyration measurements along the Y-axis\
tBodyGyro_mean_Z - average of the mean of all time domain body gyration measurements along the Z-axis\
\
tBodyGyro_std_X - average of the standard deviations of all time domain body gyration measurements along the X-axis\
tBodyGyro_std_Y - average of the standard deviations of all time domain body gyration  measurements along the Y-axis\
tBodyGyro_std_Z - average of the standard deviations of all time domain body gyration measurements along the Z-axis\
\
tBodyGyroJerk_mean_X - average of the mean of all time domain body gyration jerk measurements along the X-axis\
tBodyGyroJerk_mean_Y - average of the mean of all time domain body gyration jerk measurements along the Y-axis\
tBodyGyroJerk_mean_Z - average of the mean of all time domain body gyration jerk measurements along the Z-axis\
\
tBodyGyroJerk_std_X - average of the standard deviations of all time domain body gyration jerk measurements along the X-axis\
tBodyGyroJerk_std_Y - average of the standard deviations of all time domain body gyration jerk measurements along the Y-axis\
tBodyGyroJerk_std_Z - average of the standard deviations of all time domain body gyration jerk measurements along the Z-axis\
\
tBodyAccMag_mean - average of the mean of all time domain body acceleration magnitudes\
tBodyAccMag_std - average of the standard deviations of all time domain body acceleration magnitudes\
\
tGravityAccMag_mean - average of the mean of all time domain gravitational acceleration magnitudes\
tGravityAccMag_std - average of the standard deviations of all time domain gravitational acceleration magnitudes\
\
tBodyAccJerkMag_mean - average of the mean of all time domain body jerk acceleration magnitudes\
tBodyAccJerkMag_std - average of the standard deviations of all time domain body jerk acceleration magnitudes\
\
tBodyGyroMag_mean - average of the mean of all time domain body gyration magnitudes\
tBodyGyroMag_std - average of the standard deviations of all time domain body gyration magnitudes\
\
tBodyGyroJerkMag_mean - average of the mean of all time domain body gyration jerk magnitudes\
tBodyGyroJerkMag_std - average of the standard deviations of all time domain body gyration jerk magnitudes\
\
fBodyAcc_mean_X - average of the mean of all frequency domain body acceleration measurements along the X-axis\
fBodyAcc_mean_Y - average of the mean of all frequency domain body acceleration measurements along the Y-axis\
fBodyAcc_mean_Z - average of the mean of all frequency domain body acceleration measurements along the Z-axis\
\
fBodyAcc_std_X - average of the standard deviations of all frequency domain body acceleration measurements along the X-axis\
fBodyAcc_std_Y - average of the standard deviations of all frequency domain body acceleration measurements along the Y-axis\
fBodyAcc_std_Z - average of the standard deviations of all frequency domain body acceleration measurements along the Z-axis\
\
fBodyAccJerk_mean_X - average of the mean of all frequency domain body jerk acceleration measurements along the X-axis\
fBodyAccJerk_mean_Y - average of the mean of all frequency domain body jerk acceleration measurements along the Y-axis\
fBodyAccJerk_mean_Z - average of the mean of all frequency domain body jerk acceleration measurements along the Z-axis\
\
fBodyAccJerk_std_X - average of the standard deviations of all frequency domain body jerk acceleration measurements along the X-axis\
fBodyAccJerk_std_Y - average of the standard deviations of all frequency domain body jerk acceleration  measurements along the Y-axis\
fBodyAccJerk_std_Z - average of the standard deviations of all frequency domain body jerk acceleration measurements along the Z-axis\
\
fBodyGyro_mean_X - average of the mean of all frequency domain body gyration measurements along the X-axis\
fBodyGyro_mean_Y - average of the mean of all frequency domain body gyration measurements along the Y-axis\
fBodyGyro_mean_Z - average of the mean of all frequency domain body gyration measurements along the Z-axis\
\
fBodyGyro_std_X - average of the standard deviations of all frequency domain body gyration measurements along the X-axis\
fBodyGyro_std_Y - average of the standard deviations of all frequency domain body gyration  measurements along the Y-axis\
fBodyGyro_std_Z - average of the standard deviations of all frequency domain body gyration measurements along the Z-axis\
\
fBodyAccMag_mean - average of the mean of all frequency domain body acceleration magnitudes\
fBodyAccMag_std - average of the standard deviations of all frequency domain body acceleration magnitudes\
\
fBodyBodyAccJerkMag_mean - average of the mean of all frequency domain body jerk acceleration magnitudes\
fBodyBodyAccJerkMag_std - average of the standard deviations of all frequency domain body jerk acceleration magnitudes\
\
fBodyBodyGyroMag_mean - average of the mean of all frequency domain body gyration magnitudes\
fBodyBodyGyroMag_std - average of the standard deviations of all frequency domain body gyration magnitudes\
\
fBodyBodyGyroJerkMag_mean - average of the mean of all frequency domain body gyration jerk magnitudes\
fBodyBodyGyroJerkMag_std - average of the standard deviations of all frequency domain body gyration jerk magnitudes}