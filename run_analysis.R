#Downloading file

  if(!file.exists("./data")){dir.create("./data")}
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url,"./data/dataset.zip")
  unzip(zipfile="./data/dataset.zip",exdir="./data")

#Loading testing and training tables

## features
  features <- read.table('./data/UCI HAR Dataset/features.txt')
  featurenames <- features$V2

## testing tables
  xtest <- read.table("./data/UCI HAR Dataset/test/X_test.txt", col.names = features$V2)
  ytest <- read.table("./data/UCI HAR Dataset/test/y_test.txt", col.names = "Activity")
  subtest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names = "Subject")

## training tables
  xtrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt", col.names = features$V2)
  ytrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt", col.names = "Activity")
  subtrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names = "Subject")

## activity labels
  activity_labels = read.table('./data/UCI HAR Dataset/activity_labels.txt', col.names = c("Activity","ActivityName"))

#Merges the training and the test sets to create one data set.
  test <- cbind(xtest,ytest,subtest)
  train <- cbind(xtrain,ytrain,subtrain)
  dataset <- rbind(test,train)

#Extracts only the measurements on the mean and standard deviation for each measurement.
  library(plyr)
  meanstd_col <- grep("mean\\(\\)|std\\(\\)",features$V2,value=TRUE)
  meanstd_col <- gsub('[()]|-', '.', meanstd_col)
  dataset2 <- subset(dataset,select=c(meanstd_col,"Activity","Subject"))

#Uses descriptive activity names to name the activities in the data set
  dataset3 <- join(dataset2, activity_labels, by = "Activity", match = "first")
  final_dataset <- dataset3[,-1]

#Appropriately labels the data set with descriptive variable names.
  names(final_dataset) <- gsub("Acc", "Accelerometer", names(final_dataset))
  names(final_dataset) <- gsub("Gyro", "Gyroscope", names(final_dataset))
  names(final_dataset) <- gsub("^t", "time", names(final_dataset))
  names(final_dataset) <- gsub("^f", "frequency", names(final_dataset))
  names(final_dataset) <- gsub("Mag", "Magnitude", names(final_dataset))
  names(final_dataset) <- gsub("BodyBody", "Body", names(final_dataset))
  names(final_dataset) <- gsub("\\.", "", names(final_dataset))
  names(final_dataset)

#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  tidydata <- aggregate(. ~Subject + ActivityName, data = final_dataset, mean)
  tidydata <- tidydata[order(tidydata$Subject, tidydata$ActivityName), ]
  write.table(tidydata, file = "tidydata.txt", row.name=FALSE)
