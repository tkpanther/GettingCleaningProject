{\rtf1\ansi\ansicpg1252\cocoartf1404\cocoasubrtf340
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red32\green94\blue198;\red38\green38\blue38;
}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}}{\leveltext\leveltemplateid1\'01\'00;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid1}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 This project is comprised of a single R script that processes data generated from a data set made of several files containing measurements made of various subjects while they were using their Samsung Galaxy S smartphones. The objective of the script is to produce a tidy data set consisting of the averages of the mean and standard deviations of all measurement values grouped by a subject and the activity type.\
\
In order to ensure proper execution of the script, the data set must first be saved in your local workspace folder. The data can be downloaded at:\
\
\pard\pardeftab720\partightenfactor0
\cf2 \expnd0\expndtw0\kerning0
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
\fs28 \cf3 \
\

\fs24 \cf2 The following files should be extracted and saved in your local workspace folder:\
\
From the top-level:\
- features.txt\
- activity_labels.txt\
\
From the test folder (representing the test data set):\
- X-test.txt\
- y-test.txt\
- subject_test.txt\
\
From the train folder (representing the train data set):\
- X-train.txt\
- y-train.txt\
- subject_train.txt\
\
Once this is done, you can run the run_analysis.R script. A tidy data set should be produced and saved as tidySet.txt. The script does the following:\
\
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls1\ilvl0
\fs28 \cf2 \kerning1\expnd0\expndtw0 {\listtext	
\fs24 1.	}\expnd0\expndtw0\kerning0
Merge the training and the test sets to create one data set.\
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls1\ilvl0\cf2 \kerning1\expnd0\expndtw0 {\listtext	2.	}\expnd0\expndtw0\kerning0
Extract only the measurements on the mean and standard deviation for each measurement.\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	3.	}\expnd0\expndtw0\kerning0
Use descriptive activity names to name the activities in the data set\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	4.	}\expnd0\expndtw0\kerning0
Appropriately labels the data set with descriptive variable names.\
\ls1\ilvl0\kerning1\expnd0\expndtw0 {\listtext	5.	}\expnd0\expndtw0\kerning0
Creates the tidy data set from 4. and saves to tidySet.txt\
\pard\tx566\pardeftab720\partightenfactor0

\fs28 \cf4 \

\fs24 \cf2 Please refer to the comments in run_analysis.R for implementation specifics.
\fs28 \cf4 \
\pard\pardeftab720\partightenfactor0

\fs24 \cf2  }