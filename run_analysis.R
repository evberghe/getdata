# Code for the course project 'Getting and cleaning data'
#
# Reads two parts of a single dataset (test and train data)
# and combines them in a single dataset
# Also combines descriptive labels of features, and for codes
# of the 'activity' features, from separate files with the main 
# data table.
# Selects features from the full data set, and creates a separate
# dataset with means, grouped by 'activities' and 'subjects'
# 
# Author: evberghe
###############################################################################

# setting the working directory, downloading the data, unzipping, renaming direcory
setwd("./datascience/getdata")
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./data/harus.zip", method="curl")
unzip("./data/harus.zip", exdir="./data")
# don't like spaces in file or directory names
file.rename("./data/UCI HAR Dataset", "./data/harus")

# reading the first part of the data ('train'),
# and combining features with 'activity' and 'subject'
# which were stored in separate files
X_train <- read.table("./data/harus/train/X_train.txt")
y_train <- read.table("./data/harus/train/y_train.txt")
subject_train <- read.table("./data/harus/train/subject_train.txt")
train <- cbind(y_train, subject_train, X_train)
rm(X_train, y_train, subject_train)

# same for 'test' data
X_test <- read.table("./data/harus/test/X_test.txt")
y_test <- read.table("./data/harus/test/y_test.txt")
subject_test <- read.table("./data/harus/test/subject_test.txt")
test <- cbind(y_test, subject_test, X_test)
rm(X_test, y_test, subject_test)

# cleaning up the names of the features
# geting rid of characters that would cause R to replace them with '.'
featurenames <- read.table("./data/harus/features.txt")
featurenames <- as.matrix(featurenames$V2)
featurenames <- gsub("[-,()]", "_", featurenames)
featurenames <- gsub("__", "_", featurenames)
featurenames <- gsub("_$", "", featurenames)

# reading labels for the 'activity' 
activitylabels <- read.table("./data/harus/activity_labels.txt")
names(activitylabels) <- c("activity_id", "activity")

# combining 'train' and 'test' parts of the data set
data <- rbind(train, test)
rm(train, test)
# and applying the cleaned feature names to the combined data
names(data) <- c("activity_id", "subject_id", featurenames)

# calculate a vector with column numbers of relevant columns
# and using the result to select the relevant columns from the data set
selcol <- c(1:2, grep("(mean)|(std)", names(data)))
datsel <- data[, selcol]

# loading the dplyr package
# and using it to bind activity labels 
# and to calculate means of the data grouped by activity and subject
library(dplyr)
datsel <- inner_join(activitylabels, datsel, by="activity_id")
datsel <- select(datsel, -activity_id) # getting rid of activity_id
datfin <- datsel %>% group_by(activity, subject_id) %>% summarise_each(funs(mean))

# writing the finished table to a file
write.table(datfin, file="./data/tidydata2.txt", row.name=FALSE)
