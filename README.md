### **Getting and Cleaning Data Assignment**

--------------------------------------------------------------------------------

#### **About this Repository**

This repository is created for the peer-assignment in Getting & Cleaning Data. It contains 5 files. 

* CodeBook.md : This Markdown file contains all the information about variables

* README.md : This Markdown document explains all the steps of cleaning data

* run_analysis.R : This R script will show you every step of the transformation of tidy data 

* download_file.R : This R script show how I download the files from website 

* tidy_data.txt : This text file is the tidy set of data

**taught by JHU**

*Jeff Leek*, *Roger D. Peng*, *Brain Caffo*


**The purpose** of this assignment is to demonstrate my ability to clean and make a data set.

**The task** of this assignment is 

  Using data from:
  
    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

    1. Merges the training and the test sets to create one data 
    2. Extracts only the measurements on the mean and standard deviation for each measurement
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names
    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    




#### **run_analysis.R**

--------------------------------------------------------------------------------

This R script is the main purpose of writing this README.md. The script will show how I made the tidy data. 

First step of making tidy data was **making one data set**.

So I merged train and test data set by :

``` {r echo = TRUE}
  merged_data <- rbind(cbind(subject_test,y_test,x_test),cbind(subject_train,y_train,x_train))
```

More information about the variables is in **CodeBook.md** file. 


**Second**, extracted the mean and standard deviation for each measurement by

``` {r}
target_feature_index <- grep("mean\\(\\)|std\\(\\)",feature[[2]])
target_data <- merged_data[c(1,2,target_feature_index+2),]
```

I also merged Activity Labels and subject so that I can easily go on to next step.

**Third**

``` {r}
  ## Naming the labels

  names(target_data) <- c("ActivityLabels","Subject",feature[c(target_feature_index),2])

  ## Resetting the columns. Too much of columns in data set 

  target_data <- target_data[,1:68]

  ## Labeling variable names appropriately 

  gsub(pattern = "BodyBody",replacement = "Body", names(target_data))

  ## Descriptive activity names added in the data set instead of just numbers.

  target_data[[1]] <- factor(target_data[[1]], levels = activity_labels[[1]],labels = activity_labels[[2]])
```

I found out that after merging the data, I had too many columns in the data set that I don't need. So I limited the column numbers that the data set has the only data that be needed

Also, there were variable names that needed to be changed. Some variables have 'Body' repeated twice in their name. I replaced it just once so that variable names can be clarified. 

I used the factor argument to label all the activities in activity names. 


**Last**

I summarized all the variables grouped by subject and activities. 


``` {r}
## Tidy Data

tidy_data <- target_data %>%
  group_by(Subject,ActivityLabels) %>%
  summarise_all(funs(mean)) 
  
```

