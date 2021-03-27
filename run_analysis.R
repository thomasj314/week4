## Merging the train and test data set 

merged_data <- rbind(cbind(subject_test,y_test,x_test),cbind(subject_train,y_train,x_train))

## Getting mean and standard deviation

target_feature_index <- grep("mean\\(\\)|std\\(\\)",feature[[2]])

target_data <- merged_data[c(1,2,target_feature_index+2),]

## Naming the labels

names(target_data) <- c("ActivityLabels","Subject",feature[c(target_feature_index),2])

## Resetting the columns. Too much of columns in data set 

target_data <- target_data[,1:68]

## Labeling variable names appropriately 

gsub(pattern = "BodyBody",replacement = "Body", names(target_data))

## Descriptive activity names added in the data set instead of just numbers.

target_data[[1]] <- factor(target_data[[1]], levels = activity_labels[[1]],labels = activity_labels[[2]])

## Tidy Data

tidy_data <- target_data %>%
  group_by(Subject,ActivityLabels) %>%
  summarise_all(funs(mean)) 


## relabeling the names of vectors 

names(tidy_data) <- c(names(tidy_data[c(1,2)]),paste0("Avrg-",names(tidy_data[-c(1,2)])))


## Writing in a text file 

write.table(tidy_data,"tidy_data.txt", row.names = FALSE)
