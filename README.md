This project is comprised of a single R script that processes data generated from a data set made of several files containing measurements made of various subjects while they were using their Samsung Galaxy S smartphones. The objective of the script is to produce a tidy data set consisting of the averages of the mean and standard deviations of all measurement values grouped by a subject and the activity type.

In order to ensure proper execution of the script, the data set must first be saved in your local workspace folder. The data can be downloaded at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following files should be extracted and saved in your local workspace folder:

From the top-level:
- features.txt
- activity_labels.txt

From the test folder (representing the test data set):
- X-test.txt
- y-test.txt
- subject_test.txt

From the train folder (representing the train data set):
- X-train.txt
- y-train.txt
- subject_train.txt

Once this is done, you can run the run_analysis.R script. A tidy data set should be produced and saved as tidySet.txt. The script does the following:

1.	Merge the training and the test sets to create one data set.
2.	Extract only the measurements on the mean and standard deviation for each measurement.
3.	Use descriptive activity names to name the activities in the data set.
4.	Appropriately labels the data set with descriptive variable names.
5.	Creates the tidy data set from 4. and saves to tidySet.txt.

Please refer to the comments in run_analysis.R for implementation specifics.