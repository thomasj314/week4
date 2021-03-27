library(dplyr)
library(data.table)

if(!file.exists("data")){
  dir.create("data")
}

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile = "./data/adl.zip")
unzip("./data/adl.zip",exdir = "./data")

#Getting activity labels

activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", col.names = c("Label","Activity"))

#Getting feature data

feature <- read.table("./data/UCI HAR Dataset/features.txt")

#Getting test data set

x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

#Getting train data set 

x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

##subject = a number of people who participate in the project(1~30)
## y = activity labels.

