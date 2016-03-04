library(lubridate)
library(dplyr)
library(plyr)
options(stringsAsFactors=FALSE)

#function used to create data frames from files
buildDataSet <- function(fileName,colNames) {
  dSet <- read.table(file=fileName,header=FALSE, col.names=colNames)
  return(dSet)
}

#reads in column headings
headers <- buildDataSet(fileName="features.txt",colNames=c("Index","Column"))
#reads in activity mapping information
actLabels <- buildDataSet(fileName="activity_labels.txt",colNames=c("Activity_Code","Activity"))
#reads in subject data for test and train data sets
testSubjects <- buildDataSet(fileName="subject_test.txt",colNames=c("Subject"))
trainSubjects <- buildDataSet(fileName="subject_train.txt",colNames=c("Subject"))

#builds the main data set containing mean and std values
#first step involves reading in test data, converting data to numeric and then binding the data to the activity and subject data frames
#first step repeated for reading in training data
#rbind then called to combine test and training data
#description for the Activity Code is then merged into this data frame
#values corresponding to the mean and standard deviation of the measurements are then extracted
totalSet <- buildDataSet(fileName="X_test.txt",colNames=headers$Column) %>% 
            sapply(as.numeric) %>%
            cbind(buildDataSet(fileName="y_test.txt",colNames=c("Activity_Code"))) %>%
            cbind(testSubjects) %>%
            rbind(buildDataSet(fileName="X_train.txt",colNames=headers$Column) %>% 
                    sapply(as.numeric) %>%
                    cbind(buildDataSet(fileName="y_train.txt",colNames=c("Activity_Code"))) %>%
                    cbind(trainSubjects)) %>%
            merge(actLabels,by.x="Activity_Code",by.y="Activity_Code") %>%
            select(matches("mean|std|Subject|Activity")) %>%
            select(-matches("Activity_Code")) %>%
            select(-matches("angle|meanFreq"))

#columns are renamed by first removing trailing periods("."). 
#Period characters in the middle of the column headers are then replaced with a single underscore ("_")
names(totalSet) <- gsub(pattern="[.]{1,}$",replacement="",x=names(totalSet))
names(totalSet) <- gsub(pattern="[.]{1,}",replacement="_",x=names(totalSet))

#after ordering the data frame by Activity description and Subject, operations are then performed to produce the final tidy data set.
#steps involve melting the set, deriving the average for each variable grouped by Activity and Subject. 
#After deriving the averages, the tidy data set is then constructed using spread and written to a text file
totalSet <- totalSet[order(totalSet$Subject,totalSet$Activity),]
tidySet <- melt(totalSet,id.vars=c("Subject","Activity")) %>%
            ddply(.(Subject,Activity,variable),colwise(mean,na.rm=TRUE)) %>%
            spread(key=variable,value=value)
write.table(tidySet,file="tidySet.txt",row.names=FALSE)